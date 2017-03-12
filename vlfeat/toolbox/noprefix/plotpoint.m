function varargout = plotpoint(varargin)
% VL_PLOTPOINT  Plot 2 or 3 dimensional points
%   VL_PLOTPOINT(V) plots the 2 or 3 dimensional points V. V is a 2xK or
%   3xK array, with one point per column.
%
%   H=VL_PLOTPOINT(...) returns the handle H of the plot.
%
%   VL_PLOTPOINT() is a simple wrapper around the PLOT() and PLOT3()
%   functions. By default, VL_PLOTPOINT(V) plots the points with line
%   style '.'.  VL_PLOTPOINT(V,...) does not use the default line style;
%   rather it passess any extra argument to the underlying plot
%   function.
%
%   See also: PLOT(), PLOT3(), VL_HELP().
[varargout{1:nargout}] = vl_plotpoint(varargin{:});
