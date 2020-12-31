#!/usr/bin/python3
import shutil
import sys
import os
from os import path
import hashlib
import zipfile
import time
import threading

import config

this_dir = path.dirname(path.realpath(__file__))




tex_resolutions = [16, 32, 64, 128]
project_dirs=[]

def main():
	remakeDir(str(this_dir) + os.sep + 'distributables')
	import lang_convert
	lang_convert.main()
	
	print('\nBuilding data pack at...\n')
	datapack_src = path.join(this_dir, 'datapack')
	zip_file = path.join(this_dir, 'distributables', 'StarTracks_datapack.zip')
	zipFiles(datapack_src, listFiles(datapack_src), zip_file, zipfile.ZIP_STORED)
	hashFile(zip_file)
	
	if '-p' in sys.argv or '--parallel' in sys.argv:
		thread_list = []
		for res in tex_resolutions:
			t = threading.Thread(target=buildTexPack, args=(res,))
			thread_list.append(t)
			t.start()
		for t in thread_list:
			t.join()
	else:
		for res in tex_resolutions:
			buildTexPack(res)

	print('...done!')
def buildTexPack(res):
	# setup build dir
	src = 'x'+str(res)
	print('\nBuilding texture pack at',src,'resolution...\n')
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
	hashFile(zip_file)
	# done
	print('\n...done building texture pack',src)
def hashFile(fpath):
	print('Hashing ',fpath,' with SHA1...')
	hasher = hashlib.sha1()
	with open(fpath, 'rb') as f:
		while True:
			data = f.read(4096)
			if not data:
				break
			hasher.update(data)
	sha1_hash = hasher.hexdigest()
	print('...done. Hash = ',sha1_hash)
	fout = open(fpath+'_sha1.txt','w')
	fout.write(sha1_hash)
	fout.close()

def zipFiles(source_root, file_list, dest_file, compression):
	# note: Minecraft is bad at handling compressed zip files
	zout = zipfile.ZipFile(dest_file, mode='w', compression=compression, allowZip64=True)
	try:
		for filename in file_list:
			input_file = str(source_root) + os.sep + str(filename)
			zipped_file = str(filename)
			zout.write(input_file, arcname=zipped_file)
	finally:
		zout.close()

def listFiles(root_dir):
	fl = []
	for root, dirs, files in os.walk(root_dir):
		rel_dirpath = path.relpath(root, start=root_dir)
		for f in files:
			rel_filepath = rel_dirpath + os.sep + f
			fl.append(rel_filepath)
	return fl
def remakeDir(dirpath):
	"""deletes and recreates a directory"""
	if (path.exists(dirpath)):
		for root_dir, dirs, files in os.walk(dirpath):
			for f in files:
				os.remove(root_dir + os.sep + f)
		for root_dir, dirs, files in os.walk(dirpath):
			for d in dirs:
				shutil.rmtree(root_dir + os.sep + d)
	os.makedirs(dirpath, exist_ok=True)
def makeParentDir(dirpath):
	print('Recreating directory', str(path.relpath(dirpath,'.')))
	parent_path = path.dirname(path.realpath(dirpath))
	os.makedirs(parent_path, exist_ok=True)
def copyInto(src, dst, skipExisting=True):
	for root, dirs, files in os.walk(src):
		rel_dirpath = path.relpath(root, start=src)
		for f in files:
			if(f.endswith('.svg')):
				# common SVG files at fixed resolution
				dst_filepath = dst + os.sep + rel_dirpath + os.sep + f.replace('.svg','.png')
				src_filepath = root + os.sep + f
				if(skipExisting and alreadyExists(src_filepath, dst_filepath)):
					print("Skipping ", path.relpath(src_filepath,'.'))
					continue
				convertSVG(src_filepath, dst_filepath, 64)
			else:
				# normal files
				dst_filepath = dst + os.sep + rel_dirpath + os.sep + f
				src_filepath = root + os.sep + f
				makeParentDir(dst_filepath)
				if(skipExisting and alreadyExists(src_filepath, dst_filepath)):
					print("Skipping ", path.relpath(src_filepath,'.'))
					continue
				print('Copying file', str(path.relpath(src_filepath,'.')), 'to', str(path.relpath(dst_filepath,'.')))
				shutil.copyfile(src_filepath, dst_filepath)
				
def convertSVGDir(src_dir, dest_dir, mc_resolution, skipExisting=True):
	# use inkscape commandline
	for root_dir, dirs, files in os.walk(src_dir):
		rel_dirpath = path.relpath(root_dir, start=src_dir)
		for f in files:
			if(f.endswith('.svg')):
				# svg file detected
				name = f
				dst_filepath = dest_dir + os.sep + rel_dirpath + os.sep + name.replace('.svg','.png')
				src_filepath = root_dir + os.sep + name
				if(skipExisting and alreadyExists(src_filepath, dst_filepath)):
					print("Skipping ", path.relpath(src_filepath,'.'))
					continue
				convertSVG(src_filepath, dst_filepath, mc_resolution)
def alreadyExists(src_filepath, dst_filepath):
	""" 
	returns True if destination file exists and is newer than source file 
	"""
	if( path.exists(dst_filepath) ):
		dst_time = path.getmtime(dst_filepath)
		src_time = path.getmtime(src_filepath)
		# do nothing if destination is newer than source
		return (dst_time > src_time)
	return False
def convertSVG(src_filepath, dst_filepath, mc_resolution):
	source_dpi = 96
	scaler = mc_resolution / 16
	dpi = source_dpi * scaler
	makeParentDir(dst_filepath)
	print('Rendering', str(path.relpath(src_filepath,'.')), 'to', str(path.relpath(dst_filepath,'.')))
	p_status = config.inkscape(str(src_filepath),'--export-type=png','--export-filename', str(dst_filepath), '--export-area-page', '--export-dpi', str(dpi))
	if( "blocks" not in str(dst_filepath) ):
		# remove transparency, unless it is a block texture
		p_status = config.convert(str(dst_filepath), '-channel', 'alpha', '-threshold', '50%', str(dst_filepath))

#
if __name__ == "__main__":
	main()
