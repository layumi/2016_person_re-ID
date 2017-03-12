function varargout = xyz2rgb(varargin)
% VL_XYZ2RGB  Convert XYZ to RGB
%   J = VL_XYZ2RGB(I) the XYZ image I in RGB format.
%
%   VL_XYZ2RGB(I,WS) uses the RGB workspace WS. WS is a string in
%
%   - CIE:    E illuminant and 2.2 gamma
%   - Adobe:  D65 illuminant and 2.2 gamma
%
%   The default workspace is CIE.
%
%   See also: VL_RGB2XYZ(), VL_HELP().
[varargout{1:nargout}] = vl_xyz2rgb(varargin{:});
