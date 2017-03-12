addpath matlab;
addpath examples;
run vlfeat/toolbox/vl_setup ;
run matlab/vl_setupnn ;

vl_compilenn('enableGpu', true, ...
'cudaRoot', '/usr/local/cuda-7.5', ...  %change it 
'cudaMethod', 'nvcc',...
'enableCudnn',true,... 
'cudnnroot','local/cudnn-rc5');
%}
warning('off');