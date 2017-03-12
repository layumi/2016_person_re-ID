function varargout = clickpoint(varargin)
% VL_CLICKPOINT  Select a point by clicking
%   SEL = VL_CLICKPOINT(V) let the user vl_click a point in the current
%   figure and returns the index v of the closest point (in Euclidean
%   norm) in the collection V. The 2xK matrix V has a a column for
%   each point.
%
%   The user can abort the operation by pressing any key. In this case
%   the function returns the empty matrix.
%
%   VL_CLICKPOINT(V,N) selects N points in a row. The user can stop the
%   selection at any time by pressing any key. In this case the
%   partial selection is returned. This can be used in combination
%   with N=inf to get an arbitrary number of points.
%
%   VL_CLICKPOINT() accepts the following options:
%
%   PlotMarker:: [0]
%     Put a marker as points are selected. The markers are deleted on
%     exiting the function.
%
%   See also: VL_CLICK(), VL_HELP().
[varargout{1:nargout}] = vl_clickpoint(varargin{:});
