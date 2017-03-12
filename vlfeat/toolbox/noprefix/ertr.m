function varargout = ertr(varargin)
% VL_ERTR  Transpose exremal regions frames
%  F = VL_ERTR(F) transposes the frames F as returned by VL_MSER(). This
%  conversion is required as the VL_MSER algorithm considers the column
%  index I as the frist image index, while according standard image
%  convention the first coordinate is the abscissa X.
%
%  See also: VL_MSER(), VL_HELP().
[varargout{1:nargout}] = vl_ertr(varargin{:});
