function varargout = tightsubplot(varargin)
% VL_TIGHTSUBPLOT  Tiles axes without wasting space
%   H = VL_TIGHTSUBPLOT(K,P) returns an handle to the P-th axis in a
%   regular grid of K axes. The K axes are numbered from left to right
%   and from top to bottom.  The function operates similarly to
%   SUBPLOT(), but by default it does not put any margin between
%   axes. This is done by tiling the axes inner box rather than the
%   axes outer box.
%
%   H = VL_TIGHTSUBPLOT(M,N,P) retursn an handle to the P-th axes in a
%   regular subdivision with M rows and N columns.
%
%   VL_TIGHTSUBPLOT() accepts the following options:
%
%   Margin:: [0]
%   MarginLeft:: [0]
%   MarginRight:: [0]
%   MarginTop:: [0]
%   MarginBottom:: [0]
%     Set the axes inner box margin, either uniformly in all
%     directions, or specifically to the left, right, top or bottom.
%
%   Box:: [0]
%     If set to 'outer', tile the axes outer box, thus protecting
%     title and labels. Unfortunately this usually produces
%     unnecesarily large margins.
%
%   Spacing:: [0] (legacy option)
%     Set extra spacing between axes.  The space is added between the
%     inner or outer boxes, depending on the setting below.
%
%   REMARK. While SUBPLOT kills any pre-existing axes that overalps a
%   new one, this function does not.
%
%   See also: SUBPLOT(), VL_HELP().
[varargout{1:nargout}] = vl_tightsubplot(varargin{:});
