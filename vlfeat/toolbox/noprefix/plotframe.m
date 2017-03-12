function varargout = plotframe(varargin)
% VL_PLOTFRAME  Plot a geometric frame
%  VL_PLOTFRAME(FRAME) plots the feature frame FRAME. The frame can be
%  either a 2D point, a circle, an oriented circle, an ellipse, or an
%  oriented ellipse, as follows:
%
%  Point::
%    FRAME has 2 components. FRAME(1:2) are the x,y coordinates of the
%    point.
%
%  Circle::
%    FRAME has 3 components. FRAME(1:2) are the x,y coordinates of the
%    center and FRAME(3) is its radius.
%
%  Oriented circle::
%    FRAME has 4 components. FRAME(1:2) are the x,y coordiantes of the
%    center of the circle, FRAME(3) is the radius, and FRAME(4) is the
%    orientation, expressed as a rotation in radians of the standard
%    oriented frame (see below). Positive rotations appear clockwise
%    since the image coordinate system is left-handed.
%
%  Ellipse::
%    FRAME has 5 components. FRAME(1:2) are the x,y coordiantes of the
%    center and FRAME(3:5) are the elements S11, S12, S22 of a 2x2
%    covariance matrix S (a positive semidefinite matrix) defining the
%    ellipse shape. The ellipse is the set of points {x + T: x' inv(S)
%    x = 1}, where T is the ellipse center.
%
%  Oriented ellipse::
%    FAME has 6 components. FRAME(1:2) are the coordiantes T=[x;y] of
%    the center. FRAME(3:6) is the column-wise stacking of a 2x2
%    matrix A. The oriented ellipse is obtained by applying the affine
%    transformation (A,T) to the standard oriented frame (see below).
%
%  A standard unoriented frame is a circle of unit radius centered at
%  the origin; a standard oriented frame is the same, but marked with
%  a radius pointing towards the positive Y axis (i.e. downwards
%  according to the standard MATLAB image reference frame) to
%  represent the frame orientation. All other frames can be obtained
%  as affine transformations of these two. In the case of unoriented
%  frames, this transformation is ambiguous up to a rotation.
%
%  VL_PLOTFRAME(FRAMES), where FRAMES is a D x N matrix, plots N
%  frames, one per column. This is significantly more efficient than
%  looping over frames explicitly.
%
%  H = VL_PLOTFRAME(...) returns the handle H of the graphical object
%  representing the frames.
%
%  VL_PLOTFRAME(FRAMES,...) passes any extra argument to the
%  underlying plotting function. The first optional argument, in
%  particular, can be a line specification string such as the one used
%  by PLOT().
%
%  See also: <a href="matlab:vl_help('sift')">SIFT</a>,
%  <a href="matlab:vl_help('covdet')">covariant detectors</a>,
%  VL_FRAME2OELL(), VL_HELP().
[varargout{1:nargout}] = vl_plotframe(varargin{:});
