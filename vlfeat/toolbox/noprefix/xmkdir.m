function varargout = xmkdir(varargin)
% VL_XMKDIR  Create a directory recursively.
%   VL_XMKDIR(PATH) creates all directory specified by PATH if they
%   do not exist (existing directories are skipped).
%
%   The function is meant as a silent replacement of MATLAB's builtin
%   MKDIR() function. It can also be used to show more clearly what
%   directories are or would be created by the command.
%
%   The function accepts the following options:
%
%   Pretend:: false
%     If TRUE the function does not create any directoty (implies
%     'Verbose').
%
%   Verbose:: false
%     If TRUE the function prints the operations performed.
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_xmkdir(varargin{:});
