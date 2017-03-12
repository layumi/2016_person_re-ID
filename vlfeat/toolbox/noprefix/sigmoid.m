function varargout = sigmoid(varargin)
% VL_SIGMOID Sigmoid function
%   Y = VL_SIGMOID(X) returns
%
%    Y = 1 ./ (1 + EXP(X)) ;
%
%   Remark::
%     Useful properties of the sigmoid function are:
%
%     -  1 - VL_SIGMOID(X) = VL_SIGMOID(-X)
%     -  Centered sigmoid: 2 * VL_SIGMOID(X) - 1 ;
%     -  VL_SIGMOID(X) = (EXP(X/2) - EXP(X/2)) / (EXP(X/2) + EXP(X/2))
%
%   See also: VL_DSIGMOID(), VL_HELP().
[varargout{1:nargout}] = vl_sigmoid(varargin{:});
