import shutil
import sys
import os
import tempfile
import subprocess
import hashlib
import zipfile
import time
import PIL
from PIL import Image
import tkinter
from tkinter import filedialog
import mcrp_utils.commands as commands # local file

this_dir = os.path.dirname(os.path.realpath(__file__))


SVG_INSERT_MARKER = '<!-- INSERT MARKER -->'

def main():
	palette_size = 16	pre_scaler = 2
	# ask for input directory
	input_dir = filedialog.askdirectory()
	# ask for output directory
	output_dir = filedialog.askdirectory()
	# go!
	with tempfile.TemporaryDirectory(prefix='Vectorizer') as temp_dir:
		for folder_path, directories_list, file_list in os.walk(input_dir):
			for file_name in file_list:
				file_path = str(os.path.join(folder_path, file_name))
				if(file_path.endswith('.png')):
					output_file = str(os.path.join(output_dir,os.path.relpath(file_path, start=input_dir))).replace('.png','.svg')
					if(os.path.basename(os.path.dirname(file_path)) == 'block'):
						is_block = True
					else:
						is_block = False
					if(os.path.dirname(file_path).find('entity') >= 0):
						cc = int(palette_size * 2)
					else:
						cc = palette_size
					vectorize_image(file_path, output_file, temp_dir, num_colors=cc, pre_scaler=pre_scaler)
	# done
	exit(0)

def vectorize_image(input_path, output_path, temp_dir, num_colors=8, pre_scaler=1):
	print('Tracing image file:',input_path,'\t-->\t', output_path)
	name = str(os.path.basename(input_path))
	tim = Image.open(input_path)
	img_width, img_height = tim.size
	del tim
	tmp = os.path.join(temp_dir,name)
	temp_image = os.path.join(tmp,name)
	make_parent_dir(temp_image)
	make_parent_dir(output_path)
	shutil.copyfile(input_path, temp_image)	#commands.mogrifyImage('-interpolate', 'Nearest', '-filter', 'point', '-resize', '200%', temp_image)
	try:
		# keep everything neatly organized and clean-up when done
				#prescale		commands.mogrifyImage( '-interpolate', 'Nearest', '-filter', 'point', '-resize', '{}%'.format(pre_scaler * 100), temp_image)
		# threshold the alpha channel
		alpha_preserve = str(temp_image)+'_alpha.png'
		threshold_alpha(input_path=temp_image, output_path=temp_image, alpha_layer=alpha_preserve, threshold=0.5)		alpha_preserve_traceable = str(temp_image)+'_alpha.ppm'		commands.convertImage(alpha_preserve, alpha_preserve_traceable)		# handle tileable image (make tileable if alhpa is all solid opaque		account = int(commands.identifyImage( '-format', '%k', alpha_preserve).strip())		tile = account == 1
		if(tile == True):
			tile_image(input_path=temp_image, output_path=temp_image, temp_dir=tmp, num_reps_x=3, num_reps_y=3)			alpha_preserve = str(temp_image)+'_alpha.png'
			threshold_alpha(input_path=temp_image, output_path=temp_image, alpha_layer=alpha_preserve, threshold=0.5)
			alpha_preserve_traceable = str(temp_image)+'_alpha.ppm'
			commands.convertImage(alpha_preserve, alpha_preserve_traceable)
		# quantize the image
		# PNM format notes: ppm = color, pgm = grayscale, pbm = monochrome
		quantize_image_path = os.path.join(tmp,name+'_quant.png')
		color_list = quantize_image(input_path=temp_image, output_path=quantize_image_path, num_colors=12)
		# trace the image color-by-color
		canvas_path = os.path.join(tmp,name+'_canvas.ppm')
		if(tile == True):
			make_blank_canvas(output_path=canvas_path, img_width=(img_width*pre_scaler*3), img_height=(img_height*pre_scaler*3))
		else:
			make_blank_canvas(output_path=canvas_path, img_width=(img_width*pre_scaler), img_height=(img_height*pre_scaler))
		make_base_SVG(output_path=output_path, img_width=img_width, img_height=img_height)
		index = 0
		for color in reversed(color_list):
			#			#if(tile == True):
			#	make_blank_canvas(output_path=canvas_path, img_width=(img_width*3), img_height=(img_height*3))
			#else:
			#	make_blank_canvas(output_path=canvas_path, img_width=img_width, img_height=img_height)
			add_color_to_canvas(quantize_image=quantize_image_path, alpha_layer=alpha_preserve, canvas_path=canvas_path, color=color)
			trace_path = os.path.join(tmp,name+'_'+str(index)+'.svg')
			if(index == (len(color_list) - 1)):
				trace_canvas(canvas_path=alpha_preserve_traceable, output_path=trace_path, color=color)			else:
				trace_canvas(canvas_path=canvas_path, output_path=trace_path, color=color)
			add_trace_to_SVG(input_path=trace_path, base_SVG_path=output_path)
			#
			index += 1
		# offset tiled image
		if(tile == True):
			offset_SVG(SVG_path=output_path, scale=(1.0 / pre_scaler), x_offset=(-1*img_width), y_offset=(-1*img_height))		else:			offset_SVG(SVG_path=output_path, scale=(1.0 / pre_scaler), x_offset=0, y_offset=0)
		# done
	except Exception as ex:
			print("\tError: "+str(ex))
			print(traceback.format_exc())
	finally:
		shutil.rmtree(tmp)
	pass

def threshold_alpha(input_path, output_path, alpha_layer, threshold=0.5):
	commands.convertImage(  input_path, '-channel', 'A', '-threshold', str(int(float(threshold)*100))+'%', output_path)
	commands.convertImage( output_path, '-alpha', 'extract', '-negate', '-transparent', 'black', alpha_layer)

def quantize_image(input_path, output_path, num_colors=8):
	# quantize operation
	commands.convertImage( input_path, '-background','none', '-dither', 'None', '-colors', str(int(num_colors)), output_path)
	# get palette from quantized image
	tim = Image.open(output_path)
	tim = tim.convert('RGBA')
	img_width, img_height = tim.size
	palette = tim.getcolors() # list of (count, color) tuples
	palette.sort()
	colors = []
	for color_entry in reversed(palette):
		c = color_entry[1]
		# c is a tuple of RGBA color values (0-255)
		R = '%0.2X' % c[0]
		G = '%0.2X' % c[1]
		B = '%0.2X' % c[2]
		A = '%0.2X' % c[3]
		if c[3] == 0:
			# omit transparent colors from list
			continue
		colors.append('#'+R+G+B+A)
	del tim
	# returns list of colors in order of most common to least common
	return colors

def tile_image(input_path, output_path, temp_dir, num_reps_x=3, num_reps_y=3):
	tim = Image.open(input_path)
	img_width, img_height = tim.size
	del tim
	num_reps = int(num_reps_x) * int(num_reps_y)
	tile_dims = str(num_reps_x) + 'x' + str(num_reps_y)
	geom = str(img_width)+'x'+str(img_height)+'+0+0'
	input_array = [input_path] * num_reps
	commands.montageImage('-alpha', 'on', '-background','none', '-tile', tile_dims, '-geometry', geom, *input_array, output_path)
	commands.convertImage(output_path, '-channel', 'A', '-threshold', '50%', output_path)

def make_blank_canvas(output_path, img_width, img_height):
	""" makes an all white image to add the color selections """
	commands.convertImage('-size', str(int(img_width))+'x'+str(int(img_height)), 'xc:#FFFFFF', output_path)

def add_color_to_canvas(quantize_image, canvas_path, alpha_layer, color):
	""" selects a color from the quantized image and adds it as black 
	pixels to the canvas image """
	# make an image that is opaque black for each pixel of the 
	# chosen color and transparent everywhere else
	temp_img = str(quantize_image)+str(color)+'.png'
	commands.convertImage(quantize_image, '-transparent', str(color), '-alpha', 'extract', '-transparent', 'white', temp_img)
	# then composite the temp image over the canvas
	commands.convertImage(canvas_path, temp_img, '-composite', canvas_path)
	# now mask-out the original alpha channel
	commands.convertImage(canvas_path, alpha_layer, '-composite', canvas_path)

def trace_canvas(canvas_path, output_path, color='#000000'):
	if(len(color) > 7):
		draw_color = color[0:7]
	else:
		draw_color = str(color)
	commands.potrace( '-b', 'svg', '--resolution', '72', '--color', str(draw_color), '--turdsize', '0', canvas_path, '-o', output_path)

def make_base_SVG(output_path, img_width, img_height):
	with open(os.path.join(this_dir, 'utils', 'reference_SVG.svg'), 'r', encoding='utf-8') as infile:
		with open(output_path, 'w', encoding='utf-8') as outfile:
			content = infile.read()
			content = content.replace('width="123.456', 'width="'+str(img_width)).replace('height="123.456', 'height="'+str(img_height)).replace('viewBox="0 0 123.456 123.456"','viewBox="0 0 '+str(img_width)+'px '+str(img_height)+'px"')
			outfile.write(content)
	# done

def add_trace_to_SVG(input_path, base_SVG_path):
	with open(input_path, 'r', encoding='utf-8') as infile:
		trace = infile.read()
	with open(base_SVG_path, 'r', encoding='utf-8') as infile:
		base = infile.read()
	insert_index = base.find(SVG_INSERT_MARKER) + len(SVG_INSERT_MARKER)
	trace_start = trace.find('<g')
	trace_end = trace.rfind('</g>')+len('</g>')
	new_base = base[0:insert_index] + '\n' + trace[trace_start:trace_end] + base[insert_index:]
	with open(base_SVG_path, 'w', encoding='utf-8') as outfile:
		outfile.write(new_base)

def offset_SVG(SVG_path, x_offset, y_offset, scale=1):
	with open(SVG_path, 'r', encoding='utf-8') as infile:
		content = infile.read()
	index = content.find('<g') + len('<g')
	transform = ' transform="translate('+str(x_offset)+','+str(y_offset)+') scale('+str(scale)+')"'
	new_content = content[0:index] + transform + content[index:]
	with open(SVG_path, 'w', encoding='utf-8') as outfile:
		outfile.write(new_content)



def make_parent_dir(filepath):
	parent_path = os.path.dirname(os.path.realpath(filepath))
	os.makedirs(parent_path, exist_ok=True)

#
if __name__ == "__main__":
	main()
