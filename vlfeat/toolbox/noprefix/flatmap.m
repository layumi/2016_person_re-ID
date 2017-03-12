function varargout = flatmap(varargin)
% VL_FLATMAP Flatten a tree, assigning the label of the root to each node
%   [LABELS CLUSTERS] = VL_FLATMAP(MAP) labels each tree of the forest contained
%   in MAP. LABELS contains the linear index of the root node in MAP, CLUSTERS
%   instead contains a label between 1 and the number of clusters.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_flatmap(varargin{:});
