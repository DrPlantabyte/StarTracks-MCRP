import shutil
import sys
import os
import subprocess
import hashlib
import zipfile

#
import build


build.tex_resolutions = [16]

def doNothing(x):
	pass

build.optimizePNG = doNothing
#
build.main()
