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
		rel_filepath = root + os.sep + f		if(rel_filepath.endswith('.svg')):			with open(rel_filepath,'r') as fin:				content = fin.read()			if('width="32px"' in content):				print('fixing',str(rel_filepath))				content = content.replace('width="32px"','width="16px"').replace('height="32px"','height="16px"').replace('viewBox="0 0 32px 32px"','viewBox="0 0 16px 16px"').replace('transform="translate(-32,-32)"','transform="translate(-16,-16) scale(0.5,0.5)"')				with open(rel_filepath,'w') as fout:
					fout.write(content)