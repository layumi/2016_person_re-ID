function varargout = dgaussian(varargin)
% VL_DGAUSSIAN  Derivative of the Gaussian density function
%   Y=VL_DGAUSSIAN(X) evaluates the derivative of the standard Gaussian
%   density.
%
%   To obtain the Gaussian density of standard deviation S, do
%
%     Y = 1/S^2 * VL_DGAUSSIAN(X/S) .
%
%   See also: VL_GAUSSIAN(), VL_DDGAUSSIAN(), VL_HELP().
[varargout{1:nargout}] = vl_dgaussian(varargin{:});
