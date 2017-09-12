clear;
% put your trained model here
netStruct = load('/data/state/zzd/CUHK03/res50_drop0.5_gan_24000_split5/net-epoch-48.mat');
net = dagnn.DagNN.loadobj(netStruct.net);
net.mode = 'test' ;
net.move('gpu') ;
im_mean = net.meta(1).normalization.averageImage;
im_mean = imresize(im_mean,[224,224]);
load('/home/zzd/CUHK03/zzd_code/cuhk_data_256_test_split6.mat');
%cam1
data1 = testdb.data1;
p = size(data1,4);
for i = 1:p
   disp(i);
   oim = imresize(data1(:,:,:,i),[224,224]); 
   f = getFeature2(net,oim,im_mean,'data','pool5');
   f = reshape(f,1,[]);
   f = f./sqrt(sum(f.^2));%normal
   ff1(i,:) = f;
end
%cam2
data2 = testdb.data2;
p = size(data2,4);
for i = 1:p
   disp(i);
   oim = imresize(data2(:,:,:,i),[224,224]); 
   f = getFeature2(net,oim,im_mean,'data','pool5');
   f = reshape(f,1,[]);
   f = f./sqrt(sum(f.^2));%normal
   ff2(i,:) = f;
end

ff.ff1 = ff1;
ff.ff2 = ff2;
save('cuhk03_feature_res_split6.mat','ff','-v7.3');
