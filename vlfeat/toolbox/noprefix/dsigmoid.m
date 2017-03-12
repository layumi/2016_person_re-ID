function varargout = dsigmoid(varargin)
% VL_DSIGMOID  Derivative of the sigmoid function
%   Y = VL_DSIGMOID(X) returns the derivative of VL_SIGMOID(X). This is
%   calculated as - VL_SIGMOID(X) * (1 - VL_SIGMOID(X)).
%
%   See also: VL_SIGMOID(X), VL_HELP().
[varargout{1:nargout}] = vl_dsigmoid(varargin{:});
