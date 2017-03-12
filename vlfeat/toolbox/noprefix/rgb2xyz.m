function varargout = rgb2xyz(varargin)
% VL_RGB2XYZ  Convert RGB color space to XYZ
%   J=VL_RGB2XYZ(I) converts the CIE RGB image I to the image J in
%   CIE XYZ format. CIE RGB has a white point of R=G=B=1.0
%
%   VL_RGB2XYZ(I,WS) uses the specified RGB working space WS. The
%   function supports the following RGB working spaces:
%
%   * `CIE'    E illuminant, gamma=2.2
%   * `Adobe'  D65 illuminant, gamma=2.2
%
%   The default workspace is CIE.
%
%   See also: VL_XYZ2RGB(), VL_HELP().
[varargout{1:nargout}] = vl_rgb2xyz(varargin{:});
