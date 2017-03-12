function varargout = ddgaussian(varargin)
% VL_DDGAUSSIAN Second derivative of the Gaussian density function
%   Y=VL_DDGAUSSIAN(X) computes the second derivative of the standard
%   Gaussian density.
%
%   To obtain the second derivative of the Gaussian density of
%   standard deviation S, do
%
%     Y = 1/S^3 * VL_DDGAUSSIAN(X/S) .
%
%   See also: VL_GAUSSIAN(), VL_DGAUSSIAN(), VL_HELP().
[varargout{1:nargout}] = vl_ddgaussian(varargin{:});
