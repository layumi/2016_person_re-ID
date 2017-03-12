function varargout = noprefix(varargin)
% VL_NOPREFIX  Create a prefix-less version of VLFeat commands
%   VL_NOPREFIX() creats prefix-less stubs for VLFeat functions
%   (e.g. SIFT for VL_SIFT). This function is seldom used as the stubs
%   are included in the VLFeat binary distribution anyways. Moreover,
%   on UNIX platforms, the stubs are generally constructed by the
%   Makefile.
%
%   See also: VL_COMPILE(), VL_HELP().
[varargout{1:nargout}] = vl_noprefix(varargin{:});
