function varargout = imgrad(varargin)
% VL_IMGRAD  Image gradient
%   [Fx,Fy] = VL_GRAD(F) returns the finite differencies gradient of the
%   image F. The function uses central differencies and for all but
%   the boundaries pixels, for which it uses forward/backward
%   differencies as appropriate.
%
%   VL_GRAD(F,'forward') uses only forward differencies (except on the
%   lower and right boundaries, where backward difference is used).
%   Similarly, VL_GRAD(F,'backward') uses only backward differencies.
%
%   See also: GRADIENT(), VL_HELP().
[varargout{1:nargout}] = vl_imgrad(varargin{:});
