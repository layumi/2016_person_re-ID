function varargout = threads(varargin)
%VL_THREADS  Control VLFeat computational threads
%   [NUM,MAXNUM] = VL_THREADS() returns the current number of
%   computational threads NUM and the maximum possible number MAXNUM.
%
%   VL_THREADS(NUM) sets the current number of threads to the
%   specified value. NUM = VL_THREADS(NUM) does the same, but returns
%   the *previous* number of computational threads as well.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_threads(varargin{:});
