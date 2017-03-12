function varargout = ikmeanshist(varargin)
% VL_IKMEANSHIST  Compute histogram of quantized data
%  H = VL_IKMEANSHIST(K,ASGN) computes the histogram of the IKM clusters
%  activated by cluster assignments ASGN.
%
%  See also: VL_IKMEANS(), VL_IKMEANSPUSH(), VL_HELP().
[varargout{1:nargout}] = vl_ikmeanshist(varargin{:});
