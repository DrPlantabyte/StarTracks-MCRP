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
def _remakeDir(dirpath):
	os.makedirs(dirpath, exist_ok=True)

build.optimizePNG = doNothing
build.remakeDir = _remakeDir
#
build.main()
