function varargout = test(varargin)
% VL_TEST  Run test suite
%  RESULTS = VL_TEST() runs all VLFeat test suites. The tests
%  verify that VLFeat is working correctly.
%
%  RESULTS is a structure listing the result of each test.
%  It has fileds:
%
%  TESTNAME:   name of the test
%  SUCCEDED:   a boolean flag indicating whether the test succeded
%  EXCEPTION:  the exception generated if the test failed
%
%  VL_TEST(SUITE) runs only the specified SUITE.
%
%  VL_TEST(SUITE, TEST) runs the specified SUITE/TEST without catching
%  the potential exception. Useful to DBSTOP to debug.
[varargout{1:nargout}] = vl_test(varargin{:});
