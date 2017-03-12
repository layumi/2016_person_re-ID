function varargout = isoctave(varargin)
% VL_ISOCTAVE   Determines whether Octave is running
%   X = VL_ISOCTAVE() returns TRUE if the script is running in the
%   Octave environment (instead of MATLAB).
[varargout{1:nargout}] = vl_isoctave(varargin{:});
