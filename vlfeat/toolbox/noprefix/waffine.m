function varargout = waffine(varargin)
% VL_WAFFINE  Apply affine transformation to points
%  Y = VL_WAFFINE(A,T,X) applies the affine transformatio (A,T) to points
%  X. X contains one point per column.
%
%  [Y1,Y2,...] = VL_WAFFINE(A,T,X1,X2,...) applies the affine
%  transformation (A,T) to the points (X1,X2,...). Each array
%  X1,X2,... contains one of the coordinates of the points.
%
%  See also: VL_HELP().
[varargout{1:nargout}] = vl_waffine(varargin{:});
