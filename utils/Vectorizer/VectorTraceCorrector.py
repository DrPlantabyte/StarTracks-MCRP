import shutil
import sys
import os
import subprocess
import hashlib
import zipfile
import time

this_dir = os.path.dirname(os.path.realpath(__file__))


for root, dirs, files in os.walk(this_dir):
	for f in files:
		rel_filepath = root + os.sep + f
					fout.write(content)