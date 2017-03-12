function varargout = imdown(varargin)
% VL_IMDOWN  Downsample an image by two
%   J = VL_IMDOWN(I) downsamples the image I by half by discarding
%   each other pixel.
%
%   VL_IMDOWN() accepts the following options:
%
%   Method:: Sample
%     'Sample' downsamples the image by discarding
%     pixels. 'Average' instead averages groups of 2x2 pixels.
%
%   See also: VL_IMUP(), VL_HELP().
[varargout{1:nargout}] = vl_imdown(varargin{:});
