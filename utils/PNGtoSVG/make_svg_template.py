#!/usr/bin/python3
import os, argparse, sys, base64, re
from os import path
from PIL import Image

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("source", help="Image file or directory to convert to SVG")
	parser.add_argument("destination", help="Output image file or directory (if source is a directory, then this must also be a directory, and vice versa)")
	args = parser.parse_args()
	#print(args.source, args.destination)
	if not path.exists(args.source):
		fail('Source file/directory does not exist')
	if path.exists(args.destination):
		if (path.isdir(args.source)) != (path.isdir(args.destination)):
			fail('Source and destination must both be files or both be directories')
	if path.isdir(args.source):
		# recursive, directory scan
		src_root = args.source
		dest_root = args.destination
		for parent_dir, dirs, files in os.walk(args.source):
			for fpath in files:
				ftype = file_suffix(fpath).lower()
				if ftype in ['png','jpg','jpeg']:
					# supported image type
					src_file = path.join(parent_dir, fpath)
					subpath = path.relpath(src_file, src_root)
					svg_fpath = re.sub('%s$' % ftype, 'svg', str(subpath))
					dst_file = path.join(dest_root, svg_fpath)
					dst_parent = path.dirname(dst_file)
					if not path.isdir(dst_parent):
						os.makedirs(dst_parent)
					img_to_SVG(src_file, dst_file)
	else:
		# non-recursive, single file
		src = args.source
		dst = args.destination
		img_to_SVG(src, dst)
	pass

def file_suffix(fpath):
	s = str(fpath)
	if '.' in s:
		return s[s.rfind('.')+1:]
	else:
		return None

def img_to_SVG(src_path, dst_path):
	if not str(dst_path).lower().endswith('.svg'):
			dst_path = str(dst_path) + '.svg'
	_print('%s\n\t-> %s' % (src_path, dst_path))
	content = make_SVG(src_path)
	with open(dst_path, 'w') as fout:
		fout.write(content)

def make_SVG(image_filepath):
	img_type = file_suffix(image_filepath).lower()
	if img_type == 'jpeg':
		img_type = 'jpg'
	if not (img_type == 'jpg' or img_type == 'png'):
		fail('Unsupported image file type: %s' % img_type)
	with Image.open(image_filepath) as img:
		w, h = img.size
	with open(image_filepath, 'rb') as fin:
		img_data = bytes_to_b64(fin.read())
	return _svg_template().format(img_type=img_type, img_width=w, img_height=h, img_base64=img_data)

def bytes_to_b64(byte_array):
	# stupid base64 library returns a utf-8 binary string on encode 
	# instead of returning an encoding-agnostic string object
	return base64.b64encode(byte_array).decode('utf8')

def fail(msg):
	print('Error:',msg, file=sys.stderr)
	exit(1)

def _print(*args, **kwargs):
	print(*args, **kwargs)

def _svg_template():
	return '''<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="{img_width}"
   height="{img_height}"
   viewBox="0 0 {img_width} {img_height}"
   version="1.1"
   id="svg8"
   inkscape:version="1.0.1 (3bc2e813f5, 2020-09-07)"
   sodipodi:docname="tex-template.svg">
  <defs
     id="defs2" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="4.0"
     inkscape:cx="0.0"
     inkscape:cy="0.0"
     inkscape:document-units="px"
     inkscape:current-layer="layer2"
     inkscape:document-rotation="0"
     showgrid="true"
     units="px"
     inkscape:window-width="1680"
     inkscape:window-height="987"
     inkscape:window-x="-8"
     inkscape:window-y="-8"
     inkscape:window-maximized="1">
    <inkscape:grid
       type="xygrid"
       id="grid850"
       empspacing="8" />
  </sodipodi:namedview>
  <metadata
     id="metadata5">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Ref"
     inkscape:groupmode="layer"
     id="layer1"
     sodipodi:insensitive="true">
    <image
       width="{img_width}"
       height="{img_height}"
       preserveAspectRatio="none"
       style="image-rendering:optimizeSpeed"
       xlink:href="data:image/{img_type};base64,{img_base64}"
       id="image846"
       x="0"
       y="0" />
  </g>
  <g
     inkscape:groupmode="layer"
     id="layer2"
     inkscape:label="BG" />
  <g
     inkscape:groupmode="layer"
     id="layer3"
     inkscape:label="Main" />
  <g
     inkscape:groupmode="layer"
     id="layer4"
     inkscape:label="FG" />
</svg>
'''

if __name__ == '__main__':
	main()
