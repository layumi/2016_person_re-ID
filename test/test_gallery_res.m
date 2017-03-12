clear;
netStruct = load('../data/resnet52_2stream_drop0.9/net-epoch-75.mat');
net = dagnn.DagNN.loadobj(netStruct.net);
clear netStruct;
net.mode = 'test' ;
net.move('gpu') ;
net.conserveMemory = true;
im_mean = net.meta(1).normalization.averageImage;
%im_mean = imresize(im_mean,[224,224]);
p = dir('/home/zzd/re_ID/market1501/bounding_box_test/*jpg');
ff = [];
for i = 1:100:numel(p)
   disp(i);
   oim = [];
   for j=1:min(100,numel(p)-i+1)
    str = strcat('/home/zzd/re_ID/market1501/bounding_box_test/',p(i+j-1).name);  
    imt = imresize(imread(str),[224,224]);
    oim = cat(4,oim,imt);
   end
   f = getFeature2(net,oim,im_mean,'data','pool5');
   f = reshape(f,2048,[])';  %64*2048
   s = sqrt(sum(f.^2,2));
   s = repmat(s,1,2048);
   f = f./s;
   ff = cat(1,ff,f);
end
save('resnet_gallery_sample1:4.mat','ff','-v7.3');
