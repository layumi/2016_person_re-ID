function varargout = tpfp(varargin)
% VL_TPFP  Compute true positives and false positives
%  This is an helper function used by VL_PR(), VL_ROC(), VL_DET().
%
%  See also: VL_PR(), VL_ROC(), VL_DET(), VL_HELP().
[varargout{1:nargout}] = vl_tpfp(varargin{:});
