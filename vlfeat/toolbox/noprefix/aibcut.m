function varargout = aibcut(varargin)
% VL_AIBCUT  Cut VL_AIB tree
%  CUT = VL_AIBCUT(PARENTS, N) cuts the binary merge tree PARENTS and
%  returns a cut CUT of N nodes. The format of PARENTS is the same
%  used by the VL_AIB() function.
%
%  A cut is a set of N nodes such that no node is a descendant of any
%  other node in the cut and such that all leaves descend from a node
%  in the cut. The vector CUT lists the nodes of the binary merge tree
%  PARENT that form the cut.
%
%  Nodes with null parent (as defined by PARENTS) are included in the
%  cut if the other nodes are not enough to fill a cut of N elements.
%
%  [CUT, MAP] = VL_AIBCUT(...) returns a vector MAP with the same size
%  as PARENTS. MAP assigns each node below or in the cut to the
%  corresponding element in the CUT vector (each element above the cut
%  or with null parent is mapped to 0). To get the index of the
%  corresponding cut nodes use CUT(MAP). MAP can be used to quantize
%  the leaves in a sequences of N contiguous indexes, starting from
%  one (see also VL_AIBCUTPUSH()).
%
%  [CUT, MAP, SHORT] = VL_AIBCUT(...) returns also a vector SHORT that
%  represents a version of the PARENTS tree where nodes below the cut
%  are short-circuitied to link to the corresponding cut ancestors
%  directly. Null parents are left unchanged, except if the
%  corresponding node is in the cut (in which case the map-to-itself
%  rule has the precedence).
%
%  See also: VL_HELP(), VL_AIB().
[varargout{1:nargout}] = vl_aibcut(varargin{:});
