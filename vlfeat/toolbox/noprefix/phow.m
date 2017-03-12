function varargout = phow(varargin)
% VL_PHOW  Extract PHOW features
%   [FRAMES, DESCRS] = VL_PHOW(IM) extracts PHOW features [1] from the
%   image IM. PHOW is simply dense SIFT applied at several resolutions. This function is a commodity interface to VL_DSIFT() and
%   VL_IMSMOOTH().
%
%   DESCRS has the same format of VL_SIFT() and VL_DSIFT(). FRAMES(1:2,:)
%   are the x,y coordinates of the center of each descriptor, FRAMES(3,:)
%   is the contrast of the descriptor, as returned by VL_DSIFT() (for
%   colour variant, contranst is computed on the intensity channel).
%   FRAMES(4,:) is the size of the bin of the descriptor.
%
%   By default,
%   VL_PHOW() computes the gray-scale variant of the descriptor.  The
%   COLOR option can be used to compute the color variant instead.
%
%   Verbose:: false
%     Set to true to turn on verbose output.
%
%   Sizes:: [4 6 8 10]
%     Scales at which the dense SIFT features are extracted. Each
%     value is used as bin size for the VL_DSIFT() function.
%
%   Fast:: true
%     Set to false to turn off the fast SIFT features computation by
%     VL_DSIFT().
%
%   Step:: 2
%     Step (in pixels) of the grid at which the dense SIFT features
%     are extracted.
%
%   Color:: 'gray'
%     Choose between 'gray' (PHOW-gray), 'rgb', 'hsv', and 'opponent'
%     (PHOW-color).
%
%   ContrastThreshold:: 0.005
%     Contrast threshold below which SIFT features are mapped to
%     zero. The input image is scaled to have intensity range in [0,1]
%     (rather than [0,255]) and this value is compared to the
%     descriptor norm as returned by VL_DSIFT().
%
%   WindowSize:: 1.5
%     Size of the Gaussian window in units of spatial bins.
%
%   Magnif:: 6
%     The image is smoothed by a Gaussian kernel of standard deviation
%     SIZE / MAGNIF. Note that, in the standard SIFT descriptor, the
%     magnification value is 3; here the default one is 6 as it seems
%     to perform better in applications.
%
%   FloatDescriptors:: false
%     If set to TRUE, the descriptors are returned in floating point
%     format.
%
%   See also: VL_DSIFT(), VL_HELP().
[varargout{1:nargout}] = vl_phow(varargin{:});
