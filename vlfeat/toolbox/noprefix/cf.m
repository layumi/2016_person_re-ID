function varargout = cf(varargin)
% VL_CF Creates a copy of a figure
%   VL_CF() creates a copy of the current figure and returns VL_CF(H0)
%   creates a copy of the figure(s) whose handle is H0.  H =
%   VL_CF(...) returns the handles of the copies.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_cf(varargin{:});
