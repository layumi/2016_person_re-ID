function varargout = xyz2luv(varargin)
% VL_XYZ2LUV  Convert XYZ color space to LUV
%   J = VL_XYZ2LUV(I) converts the image I in XYZ format to the image J
%   in Luv format.
%
%   J = VL_XYZ2LUV(I,IL) uses the specified illuminant. The following
%   illuminant are supported: A, B, C, E, D50, D55, D65, D75, D93.  IL
%   is the name of the illuminant.
%
%   See also: VL_XYZ2LAB(), VL_HELP().
[varargout{1:nargout}] = vl_xyz2luv(varargin{:});
