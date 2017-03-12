function varargout = grad(varargin)
% VL_GRAD Compute the gradient of an image
%   [IX,IY] = VL_GRAD(I) returns the gradient components IX,IY of the
%   2-D discrete function I. I must be a two-dimensional
%   matrix. VL_GRAD() computes the gradient by using finite
%   differences; specifically, it uses central differences for all but
%   the boundary pixels, for which it uses forward/backward
%   differences as appropriate.
%
%   Remark::
%     VL_GRAD() is similar to the MATLAB built-in GRADIENT() function,
%     excepts that it supports different gradient approximations.
%
%   VL_GRAD() accepts the following options:
%
%   Type:: central
%     Specify which type of finite differences to use for all but the
%     boundary samples. TYPE can be one of 'central', 'forward', or
%     'backward'.
%
%   See also: GRADIENT(), VL_HELP().
[varargout{1:nargout}] = vl_grad(varargin{:});
