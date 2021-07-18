#!/usr/bin/python3
import shutil
import sys
import os
import subprocess
import hashlib
import zipfile
import time

this_dir = os.path.dirname(os.path.realpath(__file__))

name = 'MC17'

def inkscape(*args):
	pass #platform specific definition
def convert(*args):
	pass #platform specific definition
def mogrify(*args):
	pass #platform specific definition

# executable locations
from sys import platform
if platform == 'linux' or platform == 'linux2':
	# linux
	def _inkscape(*args):
		p_status = subprocess.call(['inkscape']+list(args))
		if(p_status != 0):
			print('warning, Inkscape process returned exit code',p_status)
		return p_status
	inkscape = _inkscape
	def _convert(*args):
		p_status = subprocess.call(['convert']+list(args))
		if(p_status != 0):
			print('warning, ImageMagick convert process returned exit code',p_status)
		return p_status
	convert = _convert
	def _mogrify(*args):
		p_status = subprocess.call(['mogrify']+list(args))
		if(p_status != 0):
			print('warning, ImageMagick mogrify process returned exit code',p_status)
		return p_status
	mogrify = _mogrify
elif platform == 'darwin':
	# OS X (I don't actually know where OSX puts executables these days)
	def _inkscape(*args):
		p_status = subprocess.call(['inkscape']+list(args))
		if(p_status != 0):
			print('warning, Inkscape process returned exit code',p_status)
		return p_status
	inkscape = _inkscape
	def _convert(*args):
		p_status = subprocess.call(['convert']+list(args))
		if(p_status != 0):
			print('warning, ImageMagick convert process returned exit code',p_status)
		return p_status
	convert = _convert
	def _mogrify(*args):
		p_status = subprocess.call(['mogrify']+list(args))
		if(p_status != 0):
			print('warning, ImageMagick mogrify process returned exit code',p_status)
		return p_status
	mogrify = _mogrify
elif platform == 'win32' or platform == 'win64':
	# Windows...
	import glob
	inkscape_path = 'C:\\Program Files\\Inkscape\\bin\\inkscape.com'
	imagemagick_path = glob.glob('C:\\Program Files\\ImageMagick-*\\magick.exe')[0]
	def _inkscape(*args):
		retry_limit = 3
		retry_count = 0
		while True:
			try:
				pope = subprocess.Popen([inkscape_path]+list(args))
				pope.wait((retry_count+1) * 30) # restart if it's taking too long (occasional windows inkscape bug)
				break
			except subprocess.TimeoutExpired:
				print('Inkscape process has stalled. Restarting...')
				pope.terminate()
			retry_count += 1
			if retry_count > retry_limit:
				print('Restart limit exceeded! Abort!')
				exit(1)
		p_status = pope.returncode
		if(p_status != 0):
			print('warning, Inkscape process returned exit code',p_status)
		return p_status
	inkscape = _inkscape
	def _convert(*args):
		p_status = subprocess.call([imagemagick_path, 'convert']+list(args))
		if(p_status != 0):
			print('warning, ImageMagick convert process returned exit code',p_status)
		return p_status
	convert = _convert
	def _mogrify(*args):
		p_status = subprocess.call([imagemagick_path, 'mogrify']+list(args))
		if(p_status != 0):
			print('warning, ImageMagick mogrify process returned exit code',p_status)
		return p_status
	mogrify = _mogrify
