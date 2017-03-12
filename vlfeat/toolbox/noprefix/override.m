function varargout = override(varargin)
% VL_OVERRIDE  Override structure subset
%   CONFIG = VL_OVERRIDE(CONFIG, UPDATE) copies recursively the fileds
%   of the structure UPDATE to the corresponding fields of the
%   struture CONFIG.
%
%   Usually CONFIG is interpreted as a list of paramters with their
%   default values and UPDATE as a list of new paramete values.
%
%   VL_OVERRIDE(..., 'Warn') prints a warning message whenever: (i)
%   UPDATE has a field not found in CONFIG, or (ii) non-leaf values of
%   CONFIG are overwritten.
%
%   VL_OVERRIDE(..., 'Skip') skips fields of UPDATE that are not found
%   in CONFIG instead of copying them.
%
%   VL_OVERRIDE(..., 'CaseI') matches field names in a
%   case-insensitive manner.
%
%   Remark::
%     Fields are copied at the deepest possible level. For instance,
%     if CONFIG has fields A.B.C1=1 and A.B.C2=2, and if UPDATE is the
%     structure A.B.C1=3, then VL_OVERRIDE() returns a strucuture with
%     fields A.B.C1=3, A.B.C2=2. By contrast, if UPDATE is the
%     structure A.B=4, then the field A.B is copied, and VL_OVERRIDE()
%     returns the structure A.B=4 (specifying 'Warn' would warn about
%     the fact that the substructure B.C1, B.C2 is being deleted).
%
%   Remark::
%     Two fields are matched if they correspond exactly. Specifically,
%     two fileds A(IA).(FA) and B(IA).FB of two struct arrays A and B
%     match if, and only if, (i) A and B have the same dimensions,
%     (ii) IA == IB, and (iii) FA == FB.
%
%   See also: VL_ARGPARSE(), VL_HELP().
[varargout{1:nargout}] = vl_override(varargin{:});
