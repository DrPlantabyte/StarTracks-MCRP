#!/usr/bin/python3

import shutil
import distutils
from distutils.dir_util import copy_tree
import sys
import os
import hashlib
import zipfile
import mcrp_utils.commands # local file

this_dir = os.path.dirname(os.path.realpath(__file__))

common_dir = os.path.join(this_dir, "common")
texture_dirs = ["x16", "x32", "x64", "x128"]
svg_textures_dir = os.path.join(this_dir, "svg")
datapack_dir = os.path.join(this_dir, "datapack")
dist_dir = os.path.join(this_dir, "distributables")
build_dir = os.path.join(this_dir, "temp")

def main():
	print("Cleaning project...")
	cleanDir(build_dir)
	cleanDir(dist_dir)
	print("...Done")


def makeDir(dirpath):
	if not(os.path.exists(dirpath)):
		os.makedirs(dirpath)

def cleanDir(dirpath):
	if(os.path.exists(dirpath)):
		shutil.rmtree(dirpath)
	makeDir(dirpath)

main()
