import numpy
from PIL import Image
from random import Random
import cubic_interpolator as interpolator
import math

def main():
	seed = 12348765
	prng = Random(seed)
	#
	base_noise = numpy.zeros( shape=(4,4), dtype=numpy.float64)
	base_noise = fill_with_random(base_noise, prng=prng, min=-1, max=1)
	print(base_noise)
	array_to_image(base_noise).show()
	new_arr = interpolate(base_noise, new_shape=(200,200))
	array_to_image(new_arr).show()
	#
	print('done')
def fill_with_random(np_array, prng, min=-1, max=1):
	range = max-min
	r_src = lambda x: (prng.random() * range) + min
	vec_function = numpy.vectorize(r_src)
	return vec_function(np_array)
def _grayscale(v):
	min = 0; max = 1
	pv = (clamp(v, min, max) + min) / (max-min) * 255
	px = (int(pv), int(pv), int(pv), 255)
	return px
def array_to_image(np_array_2d, color_function=_grayscale):
	img = Image.new('RGBA', np_array_2d.shape, color='red')
	for y in range(0, np_array_2d.shape[1]):
		for x in range(0, np_array_2d.shape[0]):
			px = color_function(np_array_2d[x][y])
			img.putpixel((x, y), px)
	return img
def interpolate(np_array_2d, new_shape):
	tiled_np_array_2d = numpy.tile(np_array_2d, (3,3))
	xoffset = np_array_2d.shape[0]
	yoffset = np_array_2d.shape[1]
	output_array = numpy.zeros(shape=new_shape, dtype=numpy.float64)
	width = output_array.shape[0]
	height = output_array.shape[1]
	for y in range(0,height):
		ry = y / height
		posy = ry * np_array_2d.shape[1]
		iy = math.floor(posy) + yoffset
		for x in range(0,width):
			rx = x / width
			posx = rx * np_array_2d.shape[0]
			ix = math.floor(posx) + xoffset
			#
			local16 = tiled_np_array_2d[ix-1:ix+3,iy-1:iy+3]
			v = interpolator.interpolate2d(posx, posy, local16)
			output_array[x][y] = v
	return output_array
def bumpmap_to_normals(np_array_2d):
	tiled_np_array_2d = numpy.tile(np_array_2d, (3,3))
	xoffset = np_array_2d.shape[0]
	yoffset = np_array_2d.shape[1]
	width = np_array_2d.shape[0]
	height = np_array_2d.shape[1]
	dx = numpy.zeros_like(np_array_2d)
	dy = numpy.zeros_like(np_array_2d)
	#dz = numpy.zeros_like(np_array_2d)
	for y in range(0, height):
		srcy = y + yoffset
		for x in range(0, width):
			srcx = x + xoffset
			# sobel-operation



def clamp(x, min=0, max=1):
	if x < min:
		return min
	if x > max:
		return max
	return x

if __name__== "__main__":
	main()