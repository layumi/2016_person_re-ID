function varargout = pr(varargin)
%VL_PR   Precision-recall curve.
%   [RECALL, PRECISION] = VL_PR(LABELS, SCORES) computes the
%   precision-recall (PR) curve. LABELS are the ground truth labels,
%   greather than zero for a positive sample and smaller than zero for
%   a negative one. SCORES are the scores of the samples obtained from
%   a classifier, where lager scores should correspond to positive
%   samples.
%
%   Samples are ranked by decreasing scores, starting from rank 1.
%   PRECISION(K) and RECALL(K) are the precison and recall when
%   samples of rank smaller or equal to K-1 are predicted to be
%   positive and the remaining to be negative. So for example
%   PRECISION(3) is the percentage of positive samples among the two
%   samples with largest score. PRECISION(1) is the precision when no
%   samples are predicted to be positive and is conventionally set to
%   the value 1.
%
%   Set to zero the lables of samples that should be ignored in the
%   evaluation. Set to -INF the scores of samples which are not
%   retrieved. If there are samples with -INF score, then the PR curve
%   may have maximum recall smaller than 1, unless the INCLUDEINF
%   option is used (see below). The options NUMNEGATIVES and
%   NUMPOSITIVES can be used to add additional surrogate samples with
%   -INF score (see below).
%
%   [RECALL, PRECISION, INFO] = VL_PR(...) returns an additional
%   structure INFO with the following fields:
%
%   info.auc::
%     The area under the precision-recall curve. If the INTERPOLATE
%     option is set to FALSE, then trapezoidal interpolation is used
%     to integrate the PR curve. If the INTERPOLATE option is set to
%     TRUE, then the curve is piecewise constant and no other
%     approximation is introduced in the calculation of the area. In
%     the latter case, INFO.AUC is the same as INFO.AP.
%
%   info.ap::
%     Average precision as defined by TREC. This is the average of the
%     precision observed each time a new positive sample is
%     recalled. In this calculation, any sample with -INF score
%     (unless INCLUDEINF is used) and any additional positive induced
%     by NUMPOSITIVES has precision equal to zero. If the INTERPOLATE
%     option is set to true, the AP is computed from the interpolated
%     precision and the result is the same as INFO.AUC. Note that AP
%     as defined by TREC normally does not use interpolation [1].
%
%   info.ap_interp_11::
%     11-points interpolated average precision as defined by TREC.
%     This is the average of the maximum precision for recall levels
%     greather than 0.0, 0.1, 0.2, ..., 1.0. This measure was used in
%     the PASCAL VOC challenge up to the 2008 edition.
%
%   info.auc_pa08::
%     Deprecated. It is the same of INFO.AP_INTERP_11.
%
%   VL_PR(...) with no output arguments plots the PR curve in the
%   current axis.
%
%   VL_PR() accepts the following options:
%
%   Interpolate:: false
%     If set to true, use interpolated precision. The interpolated
%     precision is defined as the maximum precision for a given recall
%     level and onwards. Here it is implemented as the culumative
%     maximum from low to high scores of the precision.
%
%   NumPositives:: []
%   NumNegatives:: []
%     If set to a number, pretend that LABELS contains this may
%     positive/negative labels. NUMPOSITIVES/NUMNEGATIVES cannot be
%     smaller than the actual number of positive/negative entrires in
%     LABELS. The additional positive/negative labels are appended to
%     the end of the sequence, as if they had -INF scores (not
%     retrieved). This is useful to evaluate large retrieval systems
%     for which one stores ony a handful of top results for efficiency
%     reasons.
%
%   IncludeInf:: false
%     If set to true, data with -INF score SCORES is included in the
%     evaluation and the maximum recall is 1 even if -INF scores are
%     present. This option does not include any additional positive or
%     negative data introduced by specifying NUMPOSITIVES and
%     NUMNEGATIVES.
%
%   Stable:: false
%     If set to true, RECALL and PRECISION are returned in the same order
%     of LABELS and SCORES rather than being sorted by decreasing
%     score (increasing recall). Samples with -INF scores are assigned
%     RECALL and PRECISION equal to NaN.
%
%   NormalizePrior:: []
%     If set to a scalar, reweights positive and negative labels so
%     that the fraction of positive ones is equal to the specified
%     value. This computes the normalised PR curves of [2]
%
%   About the PR curve::
%     This section uses the same symbols used in the documentation of
%     the VL_ROC() function. In addition to those quantities, define:
%
%       PRECISION(S) = TP(S) / (TP(S) + FP(S))
%       RECALL(S) = TPR(S) = TP(S) / P
%
%     The precision is the fraction of positivie predictions which are
%     correct, and the recall is the fraction of positive labels that
%     have been correctly classified (recalled). Notice that the recall
%     is also equal to the true positive rate for the ROC curve (see
%     VL_ROC()).
%
%   REFERENCES:
%   [1] C. D. Manning, P. Raghavan, and H. Schutze. An Introduction to
%   Information Retrieval. Cambridge University Press, 2008.
%   [2] D. Hoiem, Y. Chodpathumwan, and Q. Dai. Diagnosing error in
%   object detectors. In Proc. ECCV, 2012.
%
%   See also VL_ROC(), VL_HELP().
[varargout{1:nargout}] = vl_pr(varargin{:});
