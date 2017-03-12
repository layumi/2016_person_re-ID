function varargout = imarraysc(varargin)
% VL_IMARRAYSC  Scale and flattens image array
%   J=VL_IMARRAYSC(A) constructs an image mosaic similar to
%   J=VL_IMARRAY(A), but it rescales the range of each image in the
%   array. If A is an array of grayscale images, J will index all the
%   colors in the current colormap; if A is a true color image, J will
%   span the range [0,1].
%
%   If A is of an integer class, J will be of class single SINGLE class.
%
%   VL_IMARRAYSC(...) displays the image J rather than returning it.
%
%   VL_IMARRAYSC() accepts the options of VL_IMARRAY() and:
%
%   CLim:: []
%     Rescale the specified range of values rather than the actual
%     range of each image.
%
%   Uniform:: [false]
%     Rescale the range of all the images together, rather than on
%     an image-by-image basis.
%
%   CMap:: []
%     Use the specified color map as a reference rather than the
%     current or default one.
%
%   Algorithm::
%     CLim is seet to the image range [m, M], where m is the minimum
%     value of an image and M is the maximum. The image range CLim is
%     then affinely mapped to the integers from 1 to C, where C is the
%     number of colors in the colormap, or to the range [0,1] for true
%     color images. The mapping is done so that the first color is
%     assigned the first subinterval of length C of the range [m,M]
%     and so on.
%
%   See also: VL_IMARRAY(), VL_HELP(), IMAGE().
[varargout{1:nargout}] = vl_imarraysc(varargin{:});
