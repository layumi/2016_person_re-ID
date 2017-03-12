function varargout = clicksegment(varargin)
% VL_CLICKSEGMENT  Select a segment by clicking
%  [P1,P2] = VL_CLICKSEGMENT() lets the user select a segment in the
%  current figure and returns the starting and ending point P1 and P2.
%
%  The user can abort the operation by pressing any key. In this case
%  the function returns the empty matrix.
%
%  See also: VL_CLICK(), VL_CLICKPOINT(), VL_HELP().
[varargout{1:nargout}] = vl_clicksegment(varargin{:});
