function varargout = tpsu(varargin)
% VL_TPSU  Compute the U matrix of a thin-plate spline transformation
%   U=VL_TPSU(X,Y) returns the matrix
%
%   [ U(|X(:,1) - Y(:,1)|) ... U(|X(:,1) - Y(:,N)|) ]
%   [                                               ]
%   [ U(|X(:,M) - Y(:,1)|) ... U(|X(:,M) - Y(:,N)|) ]
%
%   where X is a 2xM matrix and Y a 2xN matrix of points and U(r) is
%   the opposite -r^2 log(r^2) of the radial basis function of the
%   thin plate spline specified by X and Y.
%
%   [U,dU]=vl_tpsu(x,y) returns the derivatives of the columns of U with
%   respect to the parameters Y. The derivatives are arranged in a
%   Mx2xN array, one layer per column of U.
%
%   See also: VL_TPS(), VL_HELP().
[varargout{1:nargout}] = vl_tpsu(varargin{:});
