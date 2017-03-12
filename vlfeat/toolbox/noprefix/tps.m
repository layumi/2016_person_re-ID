function varargout = tps(varargin)
% VL_TPS  Compute the thin-plate spline basis
%   PHI=VL_TPS(X1,X2,Y) returns the basis PHI of a thin-plate spline
%   (TPS) defined on the domain X1,X2 with control points Y.
%
%   X1 and X2 are MxN matrices specifying the grid vertices.  When
%   warping images, these usually correspond to image pixels.
%
%   Y is a 2xK matrix specifying the control points, one per
%   column. Ofthen Y is a subset of the domain X1,X2, but this is not
%   required.
%
%   PHI is a (K+3)xNxM matrix, with one layer per basis element. Each
%   basis element is a function of the domain X1,X2.
%
%   [PHI,S] = VL_TPS(X1,X2,Y) additionally returns the stiffness matrix S
%   of the TPS.
%
%   See also: VL_WTPS(), VL_HELP().
[varargout{1:nargout}] = vl_tps(varargin{:});
