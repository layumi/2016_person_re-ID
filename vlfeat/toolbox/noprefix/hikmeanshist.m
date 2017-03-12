function varargout = hikmeanshist(varargin)
% VL_HIKMEANSHIST  Compute histogram of quantized data
%  H = VL_HIKMEANSHIST(TREE,PATH) computes the histogram of the HIKM tree
%  nodes activated by the root-to-leaf paths PATH. PATH is usually
%  obtained by quantizing data by means of VL_HIKMEANSPUSH().
%
%  The histogram H has one bin for each node of the HIKM tree TREE.
%  The tree has K = TREE.K nodes and depth D = TREE.DEPTH.  Therefore
%  there are M = (K^(D+1) - 1) / (K - 1) nodes in the tree (not
%  counting the root which carries no information). Nodes are stacked
%  into a vector of bins in breadth first order.
%
%  Example::
%    The following relations illustrate the structure of PATH:
%      H(1)   = # of paths such that PATH(1,:) = 1
%      H(K)   = # of paths such that PATH(1,:) = K
%      H(K+1) = # of paths such that PATH(1:2,:) = [1 ; 1]
%      H(K+K) = # of paths such that PATH(1:2,:) = [1 ; K]
%
%  See also: VL_HIKMEANS(), VL_HIKMEANSPUSH(), VL_HELP().
[varargout{1:nargout}] = vl_hikmeanshist(varargin{:});
