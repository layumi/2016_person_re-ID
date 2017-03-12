function varargout = plotgrid(varargin)
% VL_PLOTGRID  Plot a 2-D grid
%  VL_PLOTGRID(X,Y) plots a grid with vertices (X,Y). X and Y are MxN
%  matrices, with one entry per vertex.
%
%  H=VL_PLOTGRID(...) returns the handle to the grid object.
%
%  See also: VL_HELP().
[varargout{1:nargout}] = vl_plotgrid(varargin{:});
