function varargout = lbpfliplr(varargin)
% VL_LBPFLIPLR  Flip LBP features left-right
%   F = VL_LBPFLIPLR(F) flips the LBP features F from left to
%   right.
%
%   Example::
%     The following instructions return results almost identical
%     assuming that the width of I is exactly divisible by the cell
%     size:
%       F = VL_LBP(FLIPLR(I), 8)
%       F_ = VL_LBPFLIPLR(VL_LBP(I), 8)
%
%   See also: VL_LBP(), VL_HELP().
[varargout{1:nargout}] = vl_lbpfliplr(varargin{:});
