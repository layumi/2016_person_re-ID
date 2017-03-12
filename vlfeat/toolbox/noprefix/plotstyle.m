function varargout = plotstyle(varargin)
% VL_PLOTSTYLES  Get a plot style
%   STYLES = VL_PLOTSTYLE(INDEX) returns a cell array of PLOT() options
%   for the color/line style of index INDEX. The available styles are
%   defined the ColorOrder and LineStyleOrder properties of the
%   current axes and cycled first by color and then by line style.
%
%   If there is no current axes can be found, then VL_PLOTSTYLE() uses
%   the DefaultAxesColorOrder and DefaultLineStyleOrder root
%   properties.
%
%   If INDEXES has more than one element, then VL_PLOTSTYLE(INDEXES)
%   returns a cell array of styles of the same size of INDEXES.
%
%   Example::
%     The code fragment
%
%        set(gca,'LineStyleOrder', {'-','-.'}, 'NextPlot', 'replacechildren') ;
%        plot([1 2], [1:20 ; 1:20]') ;
%
%     and
%
%       set(gca,'NextPlot', 'replacechildren') ;
%       set(gca,'LineStyleOrder', {'-','-.'}) ;
%       for i = 1:20
%         style = vl_plotstyle(i) ;
%         plot([1 2], [i i], style{:}) ;
%         hold on ;
%       end
%
%     produce visually similar results.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_plotstyle(varargin{:});
