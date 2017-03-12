function varargout = imarray(varargin)
% VL_IMARRAY  Flattens image array
%   J=VL_IMARRAY(A) creates a mosaic J from the array of images A. A
%   can be either a M*N*K array, storing one gray-scale image per
%   slice, or a M*N*3*K or M*N*K*3 array, storing a true color RGB
%   image per slice. The function returns an image J which is a tiling
%   of the images in the array. Tiles are filled from left to right
%   and top to bottom.
%
%   VL_IMARRAY(...) displays the image J rather than returning it.
%
%   VL_IMARRAY() accepts the following options:
%
%   Spacing:: 0
%     Separate the images by a border of the specified width (the
%     border is assigned 0 value, which usually corresponds to black).
%
%   Layout:: empty
%     Specify a vector [TM TN] with the number of rows and columns of
%     the tiling. If equal to [] the layout is computed automatically.
%
%   Movie:: false
%     Display or return a movie instead of generating a tiling.
%
%   CMap:: []
%     Specify a colormap to construct a movie when the input is an
%     indexed image array. If not specified, MATLAB default colormap
%     is used.
%
%   Reverse:: true
%     Start filling the mosaic tiles from the bottom rather than from
%     the top.
%
%   See also:VL_IMARRAYSC(), VL_HELP().
[varargout{1:nargout}] = vl_imarray(varargin{:});
