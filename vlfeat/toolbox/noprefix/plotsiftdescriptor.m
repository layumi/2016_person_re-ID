function varargout = plotsiftdescriptor(varargin)
% VL_PLOTSIFTDESCRIPTOR   Plot SIFT descriptor
%   VL_PLOTSIFTDESCRIPTOR(D) plots the SIFT descriptor D. If D is a
%   matrix, it plots one descriptor per column. D has the same format
%   used by VL_SIFT().
%
%   VL_PLOTSIFTDESCRIPTOR(D,F) plots the SIFT descriptors warped to
%   the SIFT frames F, specified as columns of the matrix F. F has the
%   same format used by VL_SIFT().
%
%   H=VL_PLOTSIFTDESCRIPTOR(...) returns the handle H to the line
%   drawing representing the descriptors.
%
%   The function assumes that the SIFT descriptors use the standard
%   configuration of 4x4 spatial bins and 8 orientations bins. The
%   following parameters can be used to change this:
%
%   NumSpatialBins:: 4
%     Number of spatial bins in both spatial directions X and Y.
%
%   NumOrientationBins:: 8
%     Number of orientation bis.
%
%   MagnificationFactor:: 3
%     Magnification factor. The width of one bin is equal to the scale
%     of the keypoint F multiplied by this factor.
%
%   See also: VL_SIFT(), VL_PLOTFRAME(), VL_HELP().
[varargout{1:nargout}] = vl_plotsiftdescriptor(varargin{:});
