function varargout = hat(varargin)
% VL_HAT  Hat operator
%   H = VL_HAT(OM) returns the skew symmetric matrix by taking the "hat"
%   of the 3D vector OM.
%
%   See also: VL_IHAT(), VL_HELP().
[varargout{1:nargout}] = vl_hat(varargin{:});
