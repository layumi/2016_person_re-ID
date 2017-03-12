function varargout = quickvis(varargin)
% VL_QUICKVIS Create an edge image from a Quickshift segmentation.
%   IEDGE = VL_QUICKVIS(I, RATIO, KERNELSIZE, MAXDIST, MAXCUTS) creates an edge
%   stability image from a Quickshift segmentation. RATIO controls the tradeoff
%   between color consistency and spatial consistency (See VL_QUICKSEG) and
%   KERNELSIZE controls the bandwidth of the density estimator (See VL_QUICKSEG,
%   VL_QUICKSHIFT). MAXDIST is the maximum distance between neighbors which
%   increase the density.
%
%   VL_QUICKVIS takes at most MAXCUTS thresholds less than MAXDIST, forming at
%   most MAXCUTS segmentations. The edges between regions in each of these
%   segmentations are labeled in IEDGE, where the label corresponds to the
%   largest DIST which preserves the edge.
%
%   [IEDGE,DISTS] = VL_QUICKVIS(I, RATIO, KERNELSIZE, MAXDIST, MAXCUTS) also
%   returns the DIST thresholds that were chosen.
%
%   IEDGE = VL_QUICKVIS(I, RATIO, KERNELSIZE, DISTS) will use the DISTS
%   specified
%
%   [IEDGE,DISTS,MAP,GAPS] = VL_QUICKVIS(I, RATIO, KERNELSIZE, MAXDIST, MAXCUTS)
%   also returns the MAP and GAPS from VL_QUICKSHIFT.
%
%   See Also: VL_QUICKSHIFT(), VL_QUICKSEG(), VL_HELP().
[varargout{1:nargout}] = vl_quickvis(varargin{:});
