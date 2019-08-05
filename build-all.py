#!/usr/bin/python3
import shutil
import sys
import os
from os import path
import hashlib
import zipfile
import time
import json

import config

this_dir = os.path.dirname(os.path.realpath(__file__))


module_dir = path.join(this_dir, 'modules')

tex_resolutions = [16, 32, 64, 128]
project_dirs=[]

# main function
def main():
	remakeDir(path.join(this_dir, 'build'))
	# first, catch any language contradictions
	for module in os.listdir(module_dir):
		src = 'common'
		src_dir = path.join(module_dir, module, src)
		dest_dir = path.join(this_dir, 'build', src)
		os.makedirs(dest_dir, exist_ok=True)
		mergeInto(src_dir, dest_dir)
	
	# then build all modules
	for module in os.listdir(module_dir):
		build_file = path.join(module_dir, module, 'build.py')
		run_file(build_file)
	# then copy their distributables for convenience
	dist_dir = path.join(this_dir, 'distributables')
	remakeDir(dist_dir)
	for module in os.listdir(module_dir):
		module_dist_dir = path.join(module_dir, module, 'distributables')
		copyInto(src=module_dist_dir, dst=dist_dir, skipExisting=False)
	
	# then merge modules into global build folder
	for module in os.listdir(module_dir):
		for res in tex_resolutions:
			src = 'x'+str(res)
			src_dir = path.join(module_dir, module, 'build', src)
			dest_dir = path.join(this_dir, 'build', src)
			os.makedirs(dest_dir, exist_ok=True)
			mergeInto(src_dir, dest_dir)
	
	# then build the combined module, with overrites from global source dirs
	for res in tex_resolutions:
		# setup build dir
		src = 'x'+str(res)
		print('\nBuilding texture pack at',src,'resoultion...\n')
		src_dir = str(this_dir) + os.sep + src
		svg_dir = str(this_dir) + os.sep + 'svg'
		com_dir = str(this_dir) + os.sep + 'common'
		build_dir = str(this_dir) + os.sep + 'build' + os.sep + src
		zip_file = str(this_dir) + os.sep + 'distributables' + os.sep + 'StarTracks-' + config.name + '_' + src + '.zip'
		remakeDir(build_dir)
		# copy common files
		copyInto(src=com_dir, dst=build_dir, skipExisting=True)
		# compile SVG textures
		convertSVGDir(svg_dir, build_dir, res, skipExisting=True)
		# copy raw textures
		copyInto(src=src_dir, dst=build_dir, skipExisting=False)
		# make distributable .zip files
		the_files = listFiles(build_dir)
		zipFiles(build_dir, the_files, zip_file, zipfile.ZIP_STORED)
		# calculate sha1 hash for servers
		print('Hashing ',zip_file,' with SHA1...')
		hasher = hashlib.sha1()
		with open(zip_file, 'rb') as f:
			while True:
				data = f.read(4096)
				if not data:
					break
				hasher.update(data)
		sha1_hash = hasher.hexdigest()
		print('...done. Hash = ',sha1_hash)
		fout = open(zip_file+'_sha1.txt','w')
		fout.write(sha1_hash)
		fout.close()
		# done
		print('\n...done building texture pack',src)

#	world_dir = str(this_dir) + os.sep + "world"
#	world_zip = str(this_dir) + os.sep + "distributables" + os.sep + "world.zip"
#	print('Building world data...')
#	zipFiles(world_dir, listFiles(world_dir), world_zip, zipfile.ZIP_DEFLATED)

	print('...done!')
# runs a python file as if using the terminal
def run_file(filepath):
	print('\t\texecuting',filepath,'...')
	config.python3(filepath)
	print('\t\t...',filepath,'complete')
# stores files in file_list from directory source_root in zip file dest_file
# (file_list will be the relative filepaths from the root of both the source 
# directory and the destination .zip file)
# set compression to zipfile.ZIP_DEFLATED to enable compression
def zipFiles(source_root, file_list, dest_file, compression=zipfile.ZIP_STORED):
	# note: Minecraft is bad at handling compressed zip files
	zout = zipfile.ZipFile(dest_file, mode='w', compression=compression, allowZip64=True)
	try:
		for filename in file_list:
			input_file = str(source_root) + os.sep + str(filename)
			zipped_file = str(filename)
			zout.write(input_file, arcname=zipped_file)
	finally:
		zout.close()
# lists all files in directory as relative filepaths (relative to root_dir)
def listFiles(root_dir):
	fl = []
	for root, dirs, files in os.walk(root_dir):
		rel_dirpath = os.path.relpath(root, start=root_dir)
		for f in files:
			rel_filepath = rel_dirpath + os.sep + f
			fl.append(rel_filepath)
	return fl
# deletes (if it already exists) and then creates a directory
def remakeDir(dirpath):
	"""deletes and recreates a directory"""
	if (os.path.exists(dirpath)):
		for root_dir, dirs, files in os.walk(dirpath):
			for f in files:
				os.remove(root_dir + os.sep + f)
		for root_dir, dirs, files in os.walk(dirpath):
			for d in dirs:
				shutil.rmtree(root_dir + os.sep + d)
	os.makedirs(dirpath, exist_ok=True)
# make the directory tree for the given file
def makeParentDir(dirpath):
	print('Recreating directory', str(dirpath))
	parent_path = os.path.dirname(os.path.realpath(dirpath))
	os.makedirs(parent_path, exist_ok=True)
# copies all the files from src to dst, with conversion of .svg files in src to 
# .png files in dst at a default resolution of 64 pixels per Minecraft block
# (4x Minecraft default resolution)
def copyInto(src, dst, skipExisting=True):
	for root, dirs, files in os.walk(src):
		rel_dirpath = os.path.relpath(root, start=src)
		for f in files:
			if(f.endswith('.svg')):
				# common SVG files at fixed resolution
				dst_filepath = dst + os.sep + rel_dirpath + os.sep + f.replace('.svg','.png')
				src_filepath = root + os.sep + f
				if(skipExisting and alreadyExists(src_filepath, dst_filepath)):
					print("Skipping ", src_filepath)
					continue
				convertSVG(src_filepath, dst_filepath, 64)
			else:
				# normal files
				dst_filepath = dst + os.sep + rel_dirpath + os.sep + f
				src_filepath = root + os.sep + f
				makeParentDir(dst_filepath)
				if(skipExisting and alreadyExists(src_filepath, dst_filepath)):
					print("Skipping ", src_filepath)
					continue
				print('Copying file', str(src_filepath), 'to', str(dst_filepath))
				shutil.copyfile(src_filepath, dst_filepath)

# copies all files from src to dst, merging any .json files rather than overwritting them
def mergeInto(src, dst):
	for root, dirs, files in os.walk(src):
		rel_dirpath = os.path.relpath(root, start=src)
		for f in files:
			dst_filepath = path.join(dst , rel_dirpath , f)
			src_filepath = path.join(root , f)
			if(f.endswith('.json')):
				# merge JSON objects, throwing an exception if any of the 
				# member variables contradict
				if(os.path.exists(dst_filepath)):
					print('Merging file', str(src_filepath), 'into', str(dst_filepath))
					mergeJsonFiles(src_filepath, dst_filepath)
					continue
			# normal files
			makeParentDir(dst_filepath)
			print('Copying file', str(src_filepath), 'to', str(dst_filepath))
			shutil.copyfile(src_filepath, dst_filepath)
				
# takes .svg files in src_dir and writes them as .png filws in dest_dir at 
# minecraft resolution mc_resolution (16 is Minecraft default resolution)
def convertSVGDir(src_dir, dest_dir, mc_resolution, skipExisting=True):
	# use inkscape commandline
	for root_dir, dirs, files in os.walk(src_dir):
		rel_dirpath = os.path.relpath(root_dir, start=src_dir)
		for f in files:
			if(f.endswith('.svg')):
				# svg file detected
				name = f
				dst_filepath = dest_dir + os.sep + rel_dirpath + os.sep + name.replace('.svg','.png')
				src_filepath = root_dir + os.sep + name
				if(skipExisting and alreadyExists(src_filepath, dst_filepath)):
					print("Skipping ", src_filepath)
					continue
				convertSVG(src_filepath, dst_filepath, mc_resolution)
def alreadyExists(src_filepath, dst_filepath):
	""" 
	returns True if destination file exists and is newer than source file 
	"""
	if( os.path.exists(dst_filepath) ):
		dst_time = os.path.getmtime(dst_filepath)
		src_time = os.path.getmtime(src_filepath)
		# do nothing if destination is newer than source
		return (dst_time > src_time)
	return False
# converts a .svg file into a .png file with given mc_resolution (default for 
# minecraft is 16)
def convertSVG(src_filepath, dst_filepath, mc_resolution):
	source_dpi = 96
	scaler = mc_resolution / 16
	dpi = source_dpi * scaler
	makeParentDir(dst_filepath)
	print('Rendering', str(src_filepath), 'to', str(dst_filepath))
	p_status = config.inkscape(str(src_filepath),'--export-png', str(dst_filepath), '--export-area-page', '--export-dpi', str(dpi))
	if( "blocks" not in str(dst_filepath) ):
		# remove transparency, unless it is a block texture
		p_status = config.convert(str(dst_filepath), '-channel', 'alpha', '-threshold', '50%', str(dst_filepath))

# checks if any of the members of new_json_file have a different value 
# in old_json_file, then re-writes the combined json into old_json_file
def mergeJsonFiles(new_json_file, old_json_file):
	contradictions = []
	with open(new_json_file, 'r') as src_in, open(old_json_file, 'r') as dst_in:
		new_json = json.load(fp=src_in)
		old_json = json.load(fp=dst_in)
		for key in new_json:
			if key in old_json:
				if(new_json[key] != old_json[key]):
					# contradiction!
					err_msg = 'Contradiction Error: %s != %s. Key %s is assigned %s in %s, but %s in %s. Cannot resolve contradiction' % (new_json[key], old_json[key], key, new_json[key], new_json_file, old_json[key], old_json_file)
					contradictions.append(err_msg)
			else:
				old_json[key] = new_json[key]
	if(len(contradictions) > 0):
		# note, python escapes (eg \n) do not work in error messages
		print('\n\n')
		print('\n\n'.join(contradictions))
		print('\n\n')
		raise KeyError('; '.join(contradictions))
	with open(old_json_file, 'w') as dst_out:
		json.dump(fp=dst_out, obj=old_json, indent='\t')

##########
if __name__ == "__main__":
	main()
