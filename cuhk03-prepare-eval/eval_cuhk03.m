%multi-shot
% use all images as gallary, which may contain 5 ground truth.

clear;
load('cuhk03_feature_res_split5.mat');
load('/home/zzd/CUHK03/zzd_code/cuhk_data_256_test_split5.mat');
label1 = testdb.label1;
label2 = testdb.label2;
r1 = 0;
r5 = 0;
r10 = 0;
ff1 = ff.ff1;
ff2 = ff.ff2;
query_num = size(ff1,1)+size(ff2,1);
rr = [];% record for show
%cam1
for i=1:size(ff1,1)
   f = ff1(i,:);
   score = f*(ff2)';
   [~,index]= sort(score,'descend');
   good_index = find(label2 == label1(i));
   [ap(i),~] = compute_AP(good_index,[],index);
   rr = [rr;index(1:10)];
   if(label2(index(1))== label1(i))
       r1 = r1+1;
   end
   if(~isempty(intersect(label2(index(1:5)),label1(i))))
       r5 = r5+1;
   end
   if(~isempty(intersect(label2(index(1:10)),label1(i))))
       r10 = r10+1;
   end
end

%cam2
for j=1:size(ff2,1)
   f = ff2(j,:);
   score = f*(ff1)';
   [~,index]= sort(score,'descend');
   good_index = find(label1 == label2(j));
   [ap(i+j),~] = compute_AP(good_index,[],index);
   if(label1(index(1))== label2(j))
       r1 = r1+1;
   end
   if(~isempty(intersect(label1(index(1:5)),label2(j))))
       r5 = r5+1;
   end
   if(~isempty(intersect(label1(index(1:10)),label2(j))))
       r10 = r10+1;
   end
end

fprintf('r1:%f   r5:%f   r10:%f  mAP:%f',r1/query_num,r5/query_num,r10/query_num,mean(ap));