import numpy
import math as Math

def interpolate( x,  yn2,  yn1,  yp1,  yp2):
	"""
	 * Interpolate with cubic approximation for a point X on a grid. X
	 * must lie between the X values of the yn1 and yp1 control points.
	 * @param x x coordinate to interpolate
	 * @param yn2 Y value at f(floor(x)-1)
	 * @param yn1 Y value at f(floor(x)-0)
	 * @param yp1 Y value at f(floor(x)+1)
	 * @param yp2 Y value at f(floor(x)+2)
	 * @return A cubic-interpolated value from the given control points.
	"""
	return interpolate1d( x,  yn2,  yn1,  yp1,  yp2)

def interpolate1d(x, yn2, yn1, yp1, yp2):
	"""
	 * Interpolate with cubic approximation for a point X on a grid. X
	 * must lie between the X values of the yn1 and yp1 control points.
	 * @param x x coordinate to interpolate
	 * @param yn2 Y value at f(floor(x)-1)
	 * @param yn1 Y value at f(floor(x)-0)
	 * @param yp1 Y value at f(floor(x)+1)
	 * @param yp2 Y value at f(floor(x)+2)
	 * @return A cubic-interpolated value from the given control points.
	"""
	w = x - Math.floor(x);
	# prevent precision-loss artifacts
	if(w < 0.000976563):
		return yn1;
	if(w > 0.999023438):
		return yp1;
	# adapted from http://www.paulinternet.nl/?page=bicubic
	A = -0.5 * yn2 + 1.5 * yn1 - 1.5 * yp1 + 0.5 * yp2;
	B = yn2 - 2.5 * yn1 + 2 * yp1 - 0.5 * yp2;
	C = -0.5 * yn2 + 0.5 * yp1;
	D = yn1;
	return A * w * w * w + B * w * w + C * w + D;

def interpolate2d( x,  y,  local16):
	"""
	 * Returns the bi-cubic interpolation of the (x,y) coordinate inide
	 * the provided grid of control points. (x,y) is assumed to be in the
	 * center square of the unit grid.
	 * @param x x coordinate between local16[1][y] and local16[2][y]
	 * @param y y coordinate between local16[x][1] and local16[x][2]
	 * @param local16 Array [x][y] of the 4x4 grid around the coordinate
	 * @return Returns the bi-cubic interpolation of the (x,y) coordinate.
	"""
	section = numpy.zeros(shape=(4), dtype=numpy.float64);
	for i in range(0,4):
		section[i] = interpolate1d(y,local16[i][0],local16[i][1],local16[i][2],local16[i][3]);
	return interpolate1d(x,section[0],section[1],section[2],section[3]);

def interpolate3d( x,  y,  z,  local64):
	"""
	 * Performs a tri-cubic interpolation of the (x,y,z) coordinate near
	 * the center of the provided unit grid of surrounding control points.
	 * @param x x coordinate in the middle of the array space
	 * @param y y coordinate in the middle of the array space
	 * @param z z coordinate in the middle of the array space
	 * @param local64 Array [x][y][z] of the 4x4x4 grid around the coordinate
	 * @return Returns the tri-cubic interpolation of the given coordinate.
	"""
	section = numpy.zeros(shape=(4), dtype=numpy.float64);
	for i in range(0,4):
		local16 = local64[i,:,:]
		section[i] = interpolate2d(y,z,local16);
	return interpolate1d(x,section[0],section[1],section[2],section[3]);
