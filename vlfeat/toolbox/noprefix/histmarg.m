function varargout = histmarg(varargin)
% VL_HISTMARG  Marginal of histogram
%   H = VL_HISTMARG(H, DIMS) marginalizes the historgram H w.r.t the
%   dimensions DIMS. This is done by summing out all dimensions not
%   listed in DIMS and deleting them.
%
%   Remark::
%     If DIMS lists only one dimension, the returned histogram H is a
%     column vector. Notice that this way of deleting dimensions is
%     not always consistent with the SQUEEZE function.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_histmarg(varargin{:});
