function varargout = gaussian(varargin)
% VL_GAUSSIAN  Standard Gaussian density function
%   Y=VL_GAUSSIAN(X) computes the standard (zero mean, unit variance)
%   Gaussian density.
%
%   To obtain the Gaussian density of standard deviation S do
%
%     Y = 1/S * VL_GAUSSIAN(X/S).
%
%   See also: VL_DGAUSSIAN(), VL_DDGAUSSIAN(), VL_HELP().
[varargout{1:nargout}] = vl_gaussian(varargin{:});
