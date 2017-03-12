function varargout = quickseg(varargin)
% VL_QUICKSEG Produce a quickshift segmentation of a grayscale or color image
%   [ISEG LABELS MAPS GAPS E] = VL_QUICKSEG(I, RATIO, KERNELSIZE, MAXDIST)
%
% Produces a Quickshift segmentation of an image. See VL_QUICKSHIFT for more
% details.
%
% Inputs:
%   I           Input image, may be RGB or Grayscale. RGB images are first
%               converted to LAB.
%   RATIO       Tradeoff between spatial consistency and color consistency.
%               Small ratio gives more importance to the spatial component.
%               Note that distance calculations happen in unnormalized image
%               coordinates, so RATIO should be adjusted to compensate for
%               larger images.
%   KERNELSIZE  The standard deviation of the parzen window density estimator.
%   MAXDIST     The maximum distance between nodes in the quickshift tree. Used
%               to cut links in the tree to form the segmentation.
%
% Outputs:
%   ISEG   A color image where each pixel is labeled by the mean color in its
%          region.
%   LABELS A labeled image where the number corresponds to the cluster identity
%   MAP    MAP as returned by VL_QUICKSHIFT: For each pixel, the pointer to the
%          nearest pixel which increases the estimate of the density
%   GAPS   GAPS as returned by VL_QUICKSHIFT: For each pixel, the distance to
%          the nearest pixel which increases the estimate of the density
%   E      E as returned by VL_QUICKSHIFT: The estimate of the density
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_quickseg(varargin{:});
