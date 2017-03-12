function varargout = getpid(varargin)
% VL_GETPID Get MATLAB process ID
%   VL_GETPID() returns MATLAB process ID.
%
%   Algorithm::
%     VL_GETPID() returns the result of the getpid() system call on
%     UNIX-like operating systems and of GetCurrentProcessID() on
%     Windows.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_getpid(varargin{:});
