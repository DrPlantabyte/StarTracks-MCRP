#!/usr/bin/python3

import shutil
import distutils
from distutils.dir_util import copy_tree
import sys
import os
import hashlib
import zipfile
import mcrp_utils.commands as commands # local file

this_dir = os.path.dirname(os.path.realpath(__file__))

common_dir = os.path.join(this_dir, "common")
texture_dirs = ["x16", "x32", "x64", "x128"]
svg_textures_dir = os.path.join(this_dir, "svg")
datapack_dir = os.path.join(this_dir, "datapack")
dist_dir = os.path.join(this_dir, "distributables")
build_dir = os.path.join(this_dir, "temp")


def main():
	# setup dirs
	makeDir(os.path.exists(dist_dir))
	makeDir(os.path.exists(build_dir))
	for tex_res in texture_dirs:
		print(str.format("\n\tBuilding texture pack '{}'...", tex_res))
		# setup build dirs
		tmp_build_dir = os.path.join(build_dir, tex_res)
		makeDir(os.path.exists(tmp_build_dir))
		src_dir = os.path.join(this_dir, tex_res)
		# copy sources
		copy_tree(common_dir, tmp_build_dir)
		copySVGTree(svg_textures_dir, tmp_build_dir)
		copy_tree(src_dir, tmp_build_dir)
		# distribute as .zip file
		zip_file = os.path.join(dist_dir, "StarTracks_resourcepack_" + str(tex_res) + ".zip")
		zipDir(tmp_build_dir, zip_file)
	# distribute the datapack
	print(str.format("\n\tBuilding datapack..."))
	zipDir(datapack_dir, os.path.join(dist_dir, "StarTracks_datapack.zip"))
	# clean-up
	#shutil.rmtree(build_dir)

def copySVGTree(svg_dir, output_dir, mc_resolution=16, overwrite=True):
	for root, dirs, files in os.walk(svg_dir):
		rel_dirpath = os.path.relpath(root, start=svg_dir)
		for f in files:
			rel_filepath = os.path.join(rel_dirpath, f)
			in_filepath = os.path.join(svg_dir,rel_filepath)
			if(str(in_filepath.endswith('.svg'))):
				out_filepath = os.path.join(output_dir,rel_filepath).replace('.svg','.png')
				if(overwrite == False and os.path.exists(output_path)):
					continue
				convertSVG(in_filepath, out_filepath)

def convertSVG(svg_path, output_path, mc_resolution=16):
	source_dpi = 96
	scaler = mc_resolution / 16
	dpi = source_dpi * scaler
	makeParentDir(output_path)
	print('Rendering', str(svg_path), 'to', str(output_path))
	commands.inkscape(str(svg_path),'--export-png', str(output_path), '--export-area-page', '--export-dpi', str(dpi))
	# remove transparency, unless it is a block texture
	if( "blocks" not in str(output_path) ):
		commands.mogrifyImage( '-channel', 'alpha', '-threshold', '50%', str(output_path))

def zipDir(src_dir, dest_filepath):
	print(str.format("Zipping '{}' to '{}'", src_dir, dest_filepath))
	the_files = listFiles(src_dir)
	zipFiles(src_dir, the_files, dest_filepath, zipfile.ZIP_STORED)
	sha1_hash = hashFile(dest_filepath)
	fout = open(dest_filepath+".sha1.txt","w")
	fout.write(sha1_hash)
	fout.close()

def makeDir(dirpath):
	if not(os.path.exists(dirpath)):
		os.makedirs(dirpath)

def zipFiles(source_root, file_list, dest_file, compression):
	# note: Minecraft is bad at handling compressed zip files
	zout = zipfile.ZipFile(dest_file, mode="w", compression=compression, allowZip64=True)
	try:
		for filename in file_list:
			input_file = str(source_root) + os.sep + str(filename)
			zipped_file = str(filename)
			zout.write(input_file, arcname=zipped_file)
	finally:
		zout.close()
def hashFile(filepath):
	print(str.format("Hashing file '{}' with SHA1", filepath))
	hasher = hashlib.sha1()
	with open(filepath, 'rb') as f:
		while True:
			data = f.read(4096)
			if not data:
				break
			hasher.update(data)
	sha1_hash = hasher.hexdigest()
	print(str.format("\t'{}'", sha1_hash))
	return sha1_hash

def listFiles(root_dir): # recursive
	fl = []
	for root, dirs, files in os.walk(root_dir):
		rel_dirpath = os.path.relpath(root, start=root_dir)
		for f in files:
			rel_filepath = rel_dirpath + os.sep + f
			fl.append(rel_filepath)
	return fl

def makeParentDir(dirpath):
	parent_path = os.path.dirname(os.path.realpath(dirpath))
	makeDir(parent_path)

main()
