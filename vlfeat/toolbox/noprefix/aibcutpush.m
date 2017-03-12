function varargout = aibcutpush(varargin)
% VL_AIBCUTPUSH  Quantize based on VL_AIB cut
%  Y = VL_AIBCUTPUSH(MAP, X) maps the data X to elements of the AIB
%  cut specified by MAP.
%
%  The function is equivalent to Y = MAP(X).
%
%  See also: VL_HELP(), VL_AIB().
[varargout{1:nargout}] = vl_aibcutpush(varargin{:});
