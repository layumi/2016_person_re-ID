function varargout = imup(varargin)
% VL_IMUP Upsample an image by two
%   J=VL_IMUP(I) doubles the resolution of the image I by using
%   bilinear interpolation.
%
%   See also: VL_IMDOWN(), VL_HELP().
[varargout{1:nargout}] = vl_imup(varargin{:});
