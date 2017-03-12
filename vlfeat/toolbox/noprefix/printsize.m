function varargout = printsize(varargin)
% VL_PRINTSIZE  Set the printing size of a figure
%   VL_PRINTSIZE(R) adjusts the PaperPosition property of the current
%   figure to make the figure paper width equal to R times the width
%   of a 'uslsetter' page, while preserving the aspect ratio of the
%   figure. Then, it sets the PaperSize property to match tightly the
%   size of the figure.
%
%   VL_PRINTSIZE(FIG,R) operates on the specified figure FIG. The
%   function accepts the following optional arguments:
%
%   AspectRatio:: []
%     Change the figure aspect ratio (width/height) to the specified
%     value.
%
%   Reference:: 'horizontal'
%     If set to 'horizontal', VL_PRINTSIZE(R) makes the width of the
%     figure equal to a fraction R of the width of the page. If set to
%     'vertical', the height is used instead.
%
%   PaperType:: 'usletter'
%     Set the type of the reference page to the specified type. Any of
%     the paper types supported by MATLAB can be used (see
%     PRINT()).
%
%   Margin:: 0
%     If greater than zero, VL_PRINTSIZE(R) leaves the specified
%     margin around the figure rather than fitting the paper size
%     tightly around it. The margin is expressed as a fraction of the
%     figure paper width (or height if Reference is set to
%     'vertical').
%
%   PRINTING FIGURES IN MATLAB
%
%   The standard procedure to include a MATLAB figure in a publication
%   consists in printing the figure to an EPS or PDF file (by using
%   the PRINT() function) and then rescaling it to the desired size in
%   the publication. PDF printing has the additional inconvenience
%   that large white margins are generated, and requires cropping the
%   figure too.
%
%   Unfortunately, rescalign a figure in this manner has the usually
%   unwanted effect of rescaling elements of the graphics such as font
%   sizes and line thicknesses. For example, a font which is 12pt in
%   the original MATLAB figure may become too large or too small after
%   rescaling.
%
%   The `proper' way of printing a figure is to specify its desired
%   size on paper before calling the PRINT() function. VL_PRINTSIZE()
%   helps doing so.
%
%   Margins are an additional nuances. When printing to certain
%   formats such as PDF, MATLAB prints in fact entire page (e.g. a
%   whole US Letter sheet), resulting in wide white margin all around
%   the figure. VL_PRINTSIZE() alleviates this problem by setting the
%   paper size to match the figure size tightly. This does not
%   eliminate margins completely, especially if the figure has
%   multiple subplots, but it is certainly a large improvement.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_printsize(varargin{:});
