function varargout = simdctrl(varargin)
% VL_SIMDCTRL  Toggle VLFeat SIMD optimizations
%   VL_SIMDCTRL() returns TRUE if VLFeat SIMD optimizations are enabled
%   and FALSE otherwise.
%
%   VL_SIMDCTRL(TRUE) enables VLFeat SIMD optimizations. VL_SIMDCTRL(FALSE)
%   disables them.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_simdctrl(varargin{:});
