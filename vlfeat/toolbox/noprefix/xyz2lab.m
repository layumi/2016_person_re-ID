function varargout = xyz2lab(varargin)
% VL_XYZ2LAB  Convert XYZ color space to LAB
%   J = VL_XYZ2LAB(I) converts the image from XYZ format to LAB format.
%
%   VL_XYZ2LAB(I,IL) uses one of the illuminants A, B, C, E, D50, D55,
%   D65, D75, D93. The default illuminatn is E.
%
%   See also: VL_XYZ2LUV(), VL_HELP().
[varargout{1:nargout}] = vl_xyz2lab(varargin{:});
