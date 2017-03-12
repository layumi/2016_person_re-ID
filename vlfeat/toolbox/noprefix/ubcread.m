function varargout = ubcread(varargin)
% SIFTREAD Read Lowe's SIFT implementation data files
%   [F,D] = VL_UBCREAD(FILE) reads the frames F and the descriptors D
%   from FILE in UBC (Lowe's original implementation of SIFT) format
%   and returns F and D as defined by VL_SIFT().
%
%   VL_UBCREAD(FILE, 'FORMAT', 'OXFORD') assumes the format used by
%   Oxford VGG implementations .
%
%   See also: VL_SIFT(), VL_HELP().
[varargout{1:nargout}] = vl_ubcread(varargin{:});
