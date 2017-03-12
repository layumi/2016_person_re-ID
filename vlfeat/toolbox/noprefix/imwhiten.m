function varargout = imwhiten(varargin)
% VL_IMWHITEN  Whiten an image
%   J = VL_IMWHITEN(I,ALPHA) approximatively whitens the power spectrum
%   of the natural image I. The algorithm assumes that the modulus of
%   the spectrum decays as 1/f^ALPHA (f is the frequency).
%
%   VL_IMWHITEN(I) uses ALPHA=1 (a typical value for natural images).
%
%   VL_IMWHITEN(I,ALPHA,CUTOFF) also applies a low-pass filter with
%   cutoff frequency equal to CUTOFF x FN, where FN is the Nyquist
%   frequency (half of the sampling frequency).
%
%   See also: VL_HELP().
[varargout{1:nargout}] = vl_imwhiten(varargin{:});
