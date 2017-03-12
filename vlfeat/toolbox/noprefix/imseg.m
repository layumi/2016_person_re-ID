function varargout = imseg(varargin)
% VL_IMSEG Color an image based on the segmentation
%   ISEG = VL_IMSEG(I,LABELS) labels ISEG with the average color from I of
%   each cluster indicated by LABELS.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_imseg(varargin{:});
