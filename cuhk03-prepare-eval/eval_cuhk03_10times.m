clear;
% conduct single-shot 10 times. Because it contain a random selection.
% for a stable result.

load('cuhk03_feature_res_split6.mat');
load('/home/zzd/CUHK03/zzd_code/cuhk_data_256_test_split6.mat');
rr1 = 0;
rr5 = 0;
rr10 = 0;
aap = 0;
times = 10;
for i=1:times
eval_cuhk03_100();
rr1 = rr1 + r1/query_num;
rr5 = rr5 + r5/query_num;
rr10 = rr10 + r10/query_num;
aap =  aap + mean(ap);
end
fprintf('r1:%f   r5:%f   r10:%f  mAP:%f',rr1/times,rr5/times,rr10/times,aap/times);