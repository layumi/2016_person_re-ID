function varargout = aibcuthist(varargin)
% VL_AIBCUTHIST Compute a histogram by using an AIB compressed alphabet
%  HIST = VL_AIBCUTHIST(MAP, X) computes the histogram of the data X
%  using the compressed alphabet specified by a cut MAP of the AIB
%  tree (as returned by VL_AIBCUT()). Each element of HIST counts how
%  many elements of X are projected to the corresponding cut node
%  (encoding the compressed alphabet).
%
%  Data are mapped to bins as specified by VL_AIBCUTPUSH(). Data mapped
%  to the null node are dropped.
%
%  VL_AIBCUTHIST() accepts the following options:
%
%  Nulls:: [drop]
%    What to do of null nodes: drop ('drop'), accumulate to an
%    extra bin at the end of HIST ('append'), or accumulate to
%    the first bin ('first')
%
%  See also: VL_AIB(), VL_HELP().
[varargout{1:nargout}] = vl_aibcuthist(varargin{:});
