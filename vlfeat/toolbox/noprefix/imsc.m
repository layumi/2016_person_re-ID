function varargout = imsc(varargin)
% VL_IMSC  Scale image
%   J=VL_IMSC(I) scales the range of the gray-scale or color image I to
%   fit in the interval [0,1].
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_imsc(varargin{:});
