function varargout = colsubset(varargin)
% VL_COLSUBSET Select a given number of columns
%   Y = VL_COLSUBSET(X, N) returns a random subset Y of N columns of
%   X. The selection is order-preserving and without replacement. If N
%   is larger or equal to the number of columns of X (e.g. N = Inf),
%   then the function returns all the columns (i.e., Y = X).
%
%   If 0 < N < 1, then the function returns a fraction N of the
%   columns (rounded to the closest integer).
%
%   [Y, SEL] = VL_COLSUBSET(...) returns the indexes SEL of the
%   selected columns.
%
%   The function accepts the following options:
%
%   Beginning::
%     Returns the fist N columns.
%
%   Ending::
%     Returns the last N columns.
%
%   Random:: [default]
%     Returns N columns selected at random (using RANDPERM()).
%
%   Uniform::
%     Returns N uniformly spaced columns.
%
%   Largest::
%     Returns the N largest columns (using SORTROWS()).
%
%   Smallest::
%     Returns the N smallest columns (using SORTROWS()).
%
%  See also: VL_HELP().
[varargout{1:nargout}] = vl_colsubset(varargin{:});
