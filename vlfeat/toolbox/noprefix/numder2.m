function varargout = numder2(varargin)
% VL_NUMDER2  Numerical second derivative
%   D = VL_NUMDER2(FUNC, X) computes the numerical second derivative of
%   the function FUNC at point X.
%
%   D = VL_NUMDER2(FUNC, X, ARG1, ARG2, ...) allow to pass extra
%   parameters to the function FUNC.
%
%   See also: VL_NUMDER(), VL_HELP().
[varargout{1:nargout}] = vl_numder2(varargin{:});
