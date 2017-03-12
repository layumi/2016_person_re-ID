function varargout = argparse(varargin)
% VL_ARGPARSE  Parse list of parameter-value pairs
%   CONF = VL_ARGPARSE(CONF, ARGS) updates the structure CONF based on
%   the specified parameter-value pairs ARGS={PAR1, VAL1, ... PARN,
%   VALN}. The function produces an error if an unknown parameter name
%   is passed in.
%
%   [CONF, ARGS] = VL_ARGPARSE(CONF, ARGS) copies any parameter in
%   ARGS that does not match CONF back to ARGS instead of producing an
%   error.
%
%   Example::
%     The function can be used to parse a list of arguments
%     passed to a MATLAB functions:
%
%       function myFunction(x,y,z,varargin)
%       conf.parameterName = defaultValue ;
%       conf = vl_argparse(conf, varargin)
%
%     If only a subset of the options should be parsed, for example
%     because the other options are interpreted by a subroutine, then
%     use the form
%
%      [conf, varargin] = vl_argparse(conf, varargin)
%
%     that copies back to VARARGIN any unknown parameter.
%
%   See also: VL_OVERRIDE(), VL_HELP().
[varargout{1:nargout}] = vl_argparse(varargin{:});
