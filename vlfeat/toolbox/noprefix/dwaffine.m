function varargout = dwaffine(varargin)
% VL_DWAFFINE  Derivative of an affine warp
%   [DWX,DWY]=VL_DWAFFINE(X,Y) returns the derivative of the 2-D affine
%   warp [WX; WY] = [A T] [X; Y] with respect to the parameters A,T
%   computed at points X,Y.
%
%   See also: VL_WAFFINE(), VL_HELP().
[varargout{1:nargout}] = vl_dwaffine(varargin{:});
