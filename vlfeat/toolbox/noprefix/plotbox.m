function varargout = plotbox(varargin)
% VL_PLOTBOX  Plot boxes
%   VL_PLOTBOX(BOX) plots a box specified by the 4-dimensional column
%   vector BOXES = [XMIN YMIN XMAX YMAX]'. If BOXES is a 4 x N matrix,
%   a box for each of the N columns is plotted.
%
%   H = VL_PLOTBOX(BOXES) returns a handle to the line drawing
%   representing the boxes. For multiple boxes, H is a row vector with
%   one handle per box.
%
%   VL_PLOTBOX(BOXES, 'LABEL', LABEL) annotates the box with the
%   string LABEL. If BOXES contains multiple boxes, then LABEL can be
%   a cell array with one entry for each box. H is then a 2 x N array
%   with handles to boxes and corresponding labels.
%
%   VL_PLOTBOX(BOXES, ...) passes any extra argument to the underlying
%   plotting function. The first optional argument can be a line
%   specification string such as the one used by MATLAB's PLOT()
%   function.
%
%   See also:: VL_PLOTFRAME().
[varargout{1:nargout}] = vl_plotbox(varargin{:});
