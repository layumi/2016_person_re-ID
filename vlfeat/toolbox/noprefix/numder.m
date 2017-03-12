function varargout = numder(varargin)
% VL_NUMDER  Numerical derivative
%   D = VL_NUMDER(FUNC, X) computes the numerical derivative of the
%   function FUNC at point X. X is a real array and is passed as first
%   argument of FUNC.
%
%   D = VL_NUMDER(FUNC, X, ARG1, ARG2, ...) passes ARG1, ARG2, ...  as
%   additional arguments to the function FUNC.
%
%   See also: VL_NUMDER2(), VL_HELP().
[varargout{1:nargout}] = vl_numder(varargin{:});
