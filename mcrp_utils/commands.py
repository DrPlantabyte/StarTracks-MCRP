#!/usr/bin/python3

import shutil
import sys
import os
import subprocess


this_dir = os.path.dirname(os.path.realpath(__file__))
#
from sys import platform
if platform == 'linux' or platform == 'linux2':
	# inkscape
	def _inkscape(*args):
		command = ['inkscape']
		command += args
		return subprocess.check_output(command)
	# image magick
	def _convertImage(*args):
		command = ['convert']
		command += args
		return subprocess.check_output(command)
	def _montageImage(*args):
		command = ['montage']
		command += args
		return subprocess.check_output(command)
	def _compositeImage(*args):
		command = ['composite']
		command += args
		return subprocess.check_output(command)
	def _mogrifyImage(*args):
		command = ['mogrify']
		command += args
		return subprocess.check_output(command)
	def _identifyImage(*args):
		command = ['identify']
		command += args
		return subprocess.check_output(command)
	def _potrace(*args):
		command = ['potrace']
		command += args
		return subprocess.check_output(command)

if platform == 'darwin':
	# OS X - assuming same as linux
	# inkscape
	def _inkscape(*args):
		command = ['inkscape']
		command += args
		return subprocess.check_output(command)
	# image magick
	def _convertImage(*args):
		command = ['convert']
		command += args
		return subprocess.check_output(command)
	def _montageImage(*args):
		command = ['montage']
		command += args
		return subprocess.check_output(command)
	def _compositeImage(*args):
		command = ['composite']
		command += args
		return subprocess.check_output(command)
	def _mogrifyImage(*args):
		command = ['mogrify']
		command += args
		return subprocess.check_output(command)
	def _identifyImage(*args):
		command = ['identify']
		command += args
		return subprocess.check_output(command)
	def _potrace(*args):
		command = ['potrace']
		command += args
		return subprocess.check_output(command)

if platform == 'win32' or platform == 'win64':
	# windows - need to set raw filepaths
	inkscape_path = 'C:\\Program Files\\Inkscape\\inkscape.exe'
	imagemagick_path = 'C:\\Program Files\\ImageMagick-7.0.7-Q16\\magick.exe'	potrace_path = os.path.join(os.path.dirname(this_dir), 'utils', 'bin', 'potrace')
	# inkscape
	def _inkscape(*args):
		command = [inkscape_path]
		command += args
		return subprocess.check_output(command)
	# image magick
	def _convertImage(*args):
		command = [imagemagick_path, 'convert']
		command += args
		return subprocess.check_output(command)
	def _montageImage(*args):
		command = [imagemagick_path, 'montage']
		command += args
		return subprocess.check_output(command)
	def _compositeImage(*args):
		command = [imagemagick_path, 'composite']
		command += args
		return subprocess.check_output(command)
	def _mogrifyImage(*args):
		command = [imagemagick_path, 'mogrify']
		command += args
		return subprocess.check_output(command)
	def _identifyImage(*args):
		command = [imagemagick_path, 'identify']
		command += args
		return subprocess.check_output(command)	def _potrace(*args):
		command = [potrace_path]
		command += args
		return subprocess.check_output(command)

def inkscape(*args):
	return _inkscape(*args)
def convertImage(*args):
	return _convertImage(*args)
def montageImage(*args):
	return _montageImage(*args)
def compositeImage(*args):
	return _compositeImage(*args)
def mogrifyImage(*args):
	return _mogrifyImage(*args)
def identifyImage(*args):
	return _identifyImage(*args)
def potrace(*args):
	return _potrace(*args)

