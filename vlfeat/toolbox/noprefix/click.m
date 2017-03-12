function varargout = click(varargin)
% VL_CLICK  Click a point
%  P=VL_CLICK() let the user click a point in the current figure and
%  returns its coordinates in P. P is a two dimensiona vectors where
%  P(1) is the point X-coordinate and P(2) the point Y-coordinate. The
%  user can abort the operation by pressing any key, in which case the
%  empty matrix is returned.
%
%  P=VL_CLICK(N) lets the user select N points in a row. The user can
%  stop inserting points by pressing any key, in which case the
%  partial list is returned.
%
%  VL_CLICK() accepts the following options:
%
%  PlotMarker:: [0]
%    Plot a marker as points are selected. The markers are deleted on
%    exiting the function.
%
%  See also: VL_CLICKPOINT(), VL_HELP().
[varargout{1:nargout}] = vl_click(varargin{:});
