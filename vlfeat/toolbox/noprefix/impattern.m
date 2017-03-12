function varargout = impattern(varargin)
% VL_IMPATTERN Generate an image from a stock pattern
%   IM=VLPATTERN(NAME) returns an instance of the specified
%   pattern. These stock patterns are useful for testing algoirthms.
%
%   All generated patterns are returned as an image of class
%   DOUBLE. Both gray-scale and colour images have range in [0,1].
%
%   VL_IMPATTERN() without arguments shows a gallery of the stock
%   patterns. The following patterns are supported:
%
%   Wedge::
%     The image of a wedge.
%
%   Cone::
%     The image of a cone.
%
%   SmoothChecker::
%     A checkerboard with Gaussian filtering on top. Use the
%     option-value pair 'sigma', SIGMA to specify the standard
%     deviation of the smoothing and the pair 'step', STEP to specfity
%     the checker size in pixels.
%
%   ThreeDotsSquare::
%     A pattern with three small dots and two squares.
%
%   UniformNoise::
%     Random i.i.d. noise.
%
%   Blobs:
%     Gaussian blobs of various sizes and anisotropies.
%
%   Blobs1:
%     Gaussian blobs of various orientations and anisotropies.
%
%   Blob:
%     One Gaussian blob. Use the option-value pairs 'sigma',
%     'orientation', and 'anisotropy' to specify the respective
%     parameters. 'sigma' is the scalar standard deviation of an
%     isotropic blob (the image domain is the rectangle
%     [-1,1]^2). 'orientation' is the clockwise rotation (as the Y
%     axis points downards). 'anisotropy' (>= 1) is the ratio of the
%     the largest over the smallest axis of the blob (the smallest
%     axis length is set by 'sigma'). Set 'cut' to TRUE to cut half
%     half of the blob.
%
%   A stock image::
%     Any of 'box', 'roofs1', 'roofs2', 'river1', 'river2', 'spotted'.
%
%   All pattern accept a SIZE parameter [WIDTH,HEIGHT]. For all but
%   the stock images, the default size is [128,128].
[varargout{1:nargout}] = vl_impattern(varargin{:});
