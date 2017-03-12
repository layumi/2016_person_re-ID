function varargout = wtps(varargin)
% VL_WTPS  Thin-plate spline warping
%   [XP1,XP2]=VL_WTPS(PHI,YP) computes the thin-plate spline (TPS)
%   specified by the basis PHI and the warped control point Yp.
%
%   Yp is a 2xK matrix with one column per control point and the basis
%   PHI is calculated by means of the VL_TPS function.
%
%   The thin-palte spline is defined on a domain X1,X2 and specified
%   by a set of points Y and their warp YP. The spline passes
%   interpolates exaclty the control points.
%
%   The parameters X1,X2 and Y are used to compute the basis PHI. This
%   operation is fairily slow, but computing the spline for a given Yp
%   is then very quick, as the operation is just a linear combination
%   of the basis.
%
%   Example::
%     To calculate the warped grid [X1,X2] by moving the control points Y to
%     the control points YP use:
%       [xp1,xp2]=VL_WTPS(VL_TPS(x1,x2,Y),Yp).
%
%   See also: VL_TPS(), VL_HELP().
[varargout{1:nargout}] = vl_wtps(varargin{:});
