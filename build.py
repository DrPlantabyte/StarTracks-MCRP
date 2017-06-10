import shutil
import sys
import os
import subprocess
import hashlib
import zipfile

# executable locations
from sys import platform
if platform == 'linux' or platform == 'linux2':
	# linux
	inkscape_path = 'inkscape'
	imagemagick_path = 'magick'
elif platform == 'darwin':
	# OS X (I don't actually know where OSX puts executables these days)
	inkscape_path = 'inkscape'
	imagemagick_path = 'magick'
elif platform == 'win32' or platform == 'win64':
	# Windows...
	inkscape_path = 'C:\\Program Files\\Inkscape\\inkscape.exe'
	imagemagick_path = 'C:\\Program Files\\ImageMagick-7.0.5-Q16\\magick.exe'


this_dir = os.path.dirname(os.path.realpath(__file__))

tex_resolutions = [16, 32, 64, 128]
project_dirs=[]

def main():
	remakeDir('distributables')
	for res in tex_resolutions:
		# setup build dir
		src = 'x'+str(res)
		print('\nBuilding texture pack at',src,'resoultion...\n')
		src_dir = str(this_dir) + os.sep + src
		svg_dir = str(this_dir) + os.sep + 'svg'
		com_dir = str(this_dir) + os.sep + 'common'
		build_dir = str(this_dir) + os.sep + 'build' + os.sep + src
		zip_file = 'distributables' + os.sep + 'StarTracks_' + src + '.zip'
		remakeDir(build_dir)
		# copy common files
		copyInto(src=com_dir, dst=build_dir)
		# compile SVG textures
		convertSVGDir(svg_dir, build_dir, res)
		# copy raw textures
		copyInto(src=src_dir, dst=build_dir)
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
	world_dir = str(this_dir) + os.sep + "world"
	world_zip = "distributables" + os.sep + "world.zip"
	print('Building world data...')
	zipFiles(world_dir, listFiles(world_dir), world_zip, zipfile.ZIP_DEFLATED)
	print('...done!')

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
		rel_dirpath = os.path.relpath(root, start=root_dir)
		for f in files:
			rel_filepath = rel_dirpath + os.sep + f
			fl.append(rel_filepath)
	return fl
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
def makeParentDir(dirpath):
	print('Recreating directory', str(dirpath))
	parent_path = os.path.dirname(os.path.realpath(dirpath))
	os.makedirs(parent_path, exist_ok=True)
def copyInto(src, dst):
	for root, dirs, files in os.walk(src):
		rel_dirpath = os.path.relpath(root, start=src)
		for f in files:
			if(f.endswith('.svg')):
				# common SVG files at fixed resolution
				dst_filepath = dst + os.sep + rel_dirpath + os.sep + f.replace('.svg','.png')
				src_filepath = root + os.sep + f
				convertSVG(src_filepath, dst_filepath, 64)
			else:
				# normal files
				dst_filepath = dst + os.sep + rel_dirpath + os.sep + f
				src_filepath = root + os.sep + f
				makeParentDir(dst_filepath)
				print('Copying file', str(src_filepath), 'to', str(dst_filepath))
				shutil.copyfile(src_filepath, dst_filepath)
def convertSVGDir(src_dir, dest_dir, mc_resolution):
	# use inkscape commandline
	for root_dir, dirs, files in os.walk(src_dir):
		rel_dirpath = os.path.relpath(root_dir, start=src_dir)
		for f in files:
			if(f.endswith('.svg')):
				# svg file detected
				name = f
				dst_filepath = dest_dir + os.sep + rel_dirpath + os.sep + name.replace('.svg','.png')
				src_filepath = root_dir + os.sep + name
				convertSVG(src_filepath, dst_filepath, mc_resolution)
def convertSVG(src_filepath, dst_filepath, mc_resolution):
	source_dpi = 96
	scaler = mc_resolution / 16
	dpi = source_dpi * scaler
	makeParentDir(dst_filepath)
	print('Rendering', str(src_filepath), 'to', str(dst_filepath))
	subprocess.call([inkscape_path,'--export-png', str(dst_filepath), '--export-area-page', '--export-dpi', str(dpi), str(src_filepath)])
	if( "blocks" not in str(dst_filepath) ):
		# remove transparency, unless it is a block texture
		subprocess.call([imagemagick_path,'convert', str(dst_filepath), '-channel', 'alpha', '-threshold', '50%', str(dst_filepath)])
main()
