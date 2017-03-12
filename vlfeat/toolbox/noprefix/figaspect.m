function varargout = figaspect(varargin)
% VL_FIGASPECT  Set figure aspect ratio
%   VL_FIGASPECT(A) sets the current figure aspect ratio to A. It
%   leaves the length of the shortest side unaltered. Both the
%   screen and paper positions are affected.
%
%   See also: VL_PRINTSIZE(), VL_HELP().
[varargout{1:nargout}] = vl_figaspect(varargin{:});
