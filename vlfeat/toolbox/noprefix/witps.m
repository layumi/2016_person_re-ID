function varargout = witps(varargin)
% VL_WITPS  Inverse thin-plate spline warping
%   [X1,X2]=VL_WITPS(XP1,XP2,Y,Yp) computes the inverse thin-plate spline
%   (TPS) warp of the points XP1,XP2.
%
%   Remark::
%     The inverse of a thin-plate spline in general is NOT a
%     thin-plate spline and some splines do not have an inverse.  This
%     function uses Gauss-Newton to compute a set of points (X1,X2)
%     such that [XP1,XP2]=VL_WTPS(X1,X2,Y,Yp).
%
%   See also: VL_WTPS(), VL_HELP().
[varargout{1:nargout}] = vl_witps(varargin{:});
