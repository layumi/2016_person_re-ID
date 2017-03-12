function varargout = whistc(varargin)
% VL_WHISTC Weighted histogram
%   H = VL_WHISTC(X,W,EDGES) behaves exactly like HISTC(X,EDGES), but
%   weights the samples X by W. Samples that have NaN weight are
%   skipped.
%
%   See also: HITSC(), VL_HELP().
[varargout{1:nargout}] = vl_whistc(varargin{:});
