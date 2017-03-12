function varargout = det(varargin)
% VL_DET  Compute DET curve
%  [MISSRATE, FALSEALRAM] = VL_DET(LABELS, SCORES) computes the
%  Detection Error Trade-off (DET) curve for the given set LABELS and
%  SCORES. The function is a simple wrapper to VL_ROC(LABELS,
%  SCORES). In fact, MISSRATE is simply the false positive rate and
%  FALSEARALM the false negative rate returned by VL_ROC().
%
%  VL_DET(...) without output arguments plots the curves in the
%  current axis. Note that the DET curves use logarithmic axis.
%
%  VL_DET(..., OPT, ARG, ...) accepts the same options as VL_ROC().
%
%  REFERENCES:
%  [1] A. Martin, G. Doddington, T. Kamm, M. Ordowski, and
%  M. Przybocki. The DET curve in assessment of detection task
%  performance. In Proc. Conf. on Speech Communication and Technology,
%  1997.
[varargout{1:nargout}] = vl_det(varargin{:});
