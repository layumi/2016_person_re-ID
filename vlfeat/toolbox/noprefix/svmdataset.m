function varargout = svmdataset(varargin)
% VL_SVMDATASET  Construct advanced SVM dataset structure
%   DATASET = VL_SVMDATASET(X) wraps the matrix X into a dataset
%   structure. All the formats supported by VL_SVMTRAIN() are
%   suppported here as well.
%
%   DATASET = VL_SVMDATASET(X, 'homkermap', HOM) where HOM is a
%   structure with zero or more of the following fields: HOM.kernel,
%   HOM.order, HOM.window, HOM.gamma, HOM.period, See VL_HOMKERMAP()
%   for a discussion of these parameters. The effect is to use the
%   homogeneous kernel map to expand the data on the fly. This is
%   equivalent (albeit somewhat slower) to running VL_HOMKERMAP()
%   prior to learning. The main advantage is the significant memory
%   saving as the expanded data needs not to be stored in memory.
%
%   See:: VL_SVMTRAIN(), VL_HOMKERMAP(), VL_HELP().
[varargout{1:nargout}] = vl_svmdataset(varargin{:});
