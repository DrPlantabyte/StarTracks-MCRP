#!/usr/bin/python3
import os, argparse, sys
from os import path
from PIL import Image

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("src_dir")
	parser.add_argument("dst_dir")
	parser.parse_args()
	pass

if __name__ == '__main__':
	main()