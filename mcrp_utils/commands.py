#!/usr/bin/python3

import shutil
import sys
import os
import subprocess


#
from sys import platform
if platform == 'linux' or platform == 'linux2':
	# inkscape
	def _inkscape(*args):
		command = ['inkscape']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	# image magick
	def _convertImage(*args):
		command = ['convert']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	def _montageImage(*args):
		command = ['montage']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	def _compositeImage(*args):
		command = ['composite']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	def _mogrifyImage(*args):
		command = ['mogrify']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))

if platform == 'darwin':
	# OS X - assuming same as linux
	# inkscape
	def _inkscape(*args):
		command = ['inkscape']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	# image magick
	def _convertImage(*args):
		command = ['convert']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	def _montageImage(*args):
		command = ['montage']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	def _compositeImage(*args):
		command = ['composite']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))
	def _mogrifyImage(*args):
		command = ['mogrify']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} returned error code {err}'.format(app=command[0], err=p_status))

if platform == 'win32' or platform == 'win64':
	# windows - need to set raw filepaths
	inkscape_path = 'C:\\Program Files\\Inkscape\\inkscape.exe'
	imagemagick_path = 'C:\\Program Files\\ImageMagick-7.0.7-Q16\\magick.exe'
	# inkscape
	def _inkscape(*args):
		command = [inkscape_path]
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} {com} returned error code {err}'.format(app=command[0], com=command[1], err=p_status))
	# image magick
	def _convertImage(*args):
		command = [imagemagick_path, 'convert']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} {com} returned error code {err}'.format(app=command[0], com=command[1], err=p_status))
	def _montageImage(*args):
		command = [imagemagick_path, 'montage']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} {com} returned error code {err}'.format(app=command[0], com=command[1], err=p_status))
	def _compositeImage(*args):
		command = [imagemagick_path, 'composite']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} {com} returned error code {err}'.format(app=command[0], com=command[1], err=p_status))
	def _mogrifyImage(*args):
		command = [imagemagick_path, 'mogrify']
		command += args
		p_status = subprocess.call(command)
		if(p_status != 0):
			raise RuntimeError('Error: application {app} {com} returned error code {err}'.format(app=command[0], com=command[1], err=p_status))

def inkscape(*args):
	_inkscape(*args)
def convertImage(*args):
	_convertImage(*args)
def montageImage(*args):
	_montageImage(*args)
def compositeImage(*args):
	_compositeImage(*args)
def mogrifyImage(*args):
	_mogrifyImage(*args)

