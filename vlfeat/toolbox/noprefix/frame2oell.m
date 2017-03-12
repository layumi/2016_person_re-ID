function varargout = frame2oell(varargin)
% VL_FRAMES2OELL   Convert a geometric frame to an oriented ellipse
%   EFRAME = VL_FRAME2OELL(FRAME) converts the generic FRAME to an
%   oriented ellipses EFRAME. FRAME and EFRAME can be matrices, with
%   one frame per column.
%
%   A frame is either a point, a disc, an oriented disc, an ellipse,
%   or an oriented ellipse. These are represented respectively by 2,
%   3, 4, 5 and 6 parameters each, as described in VL_PLOTFRAME().  An
%   oriented ellipse is the most general geometric frame; hence, there
%   is no loss of information in this conversion.
%
%   If FRAME is an oriented disc or ellipse, then the conversion is
%   immediate. If, however, FRAME is not oriented (it is either a
%   point or an unoriented disc or ellipse), then an orientation must
%   be assigned. The orientation is chosen in such a way that the
%   affine transformation that maps the standard oriented frame into
%   the output EFRAME does not rotate the Y axis. If frames represent
%   detected visual features, this convention corresponds to assume
%   that features are upright.
%
%   If FRAME is a point, then the output is an ellipse with null area.
%
%   See: <a href="matlab:vl_help('tut.frame')">feature frames</a>,
%   VL_PLOTFRAME(), VL_HELP().
[varargout{1:nargout}] = vl_frame2oell(varargin{:});
