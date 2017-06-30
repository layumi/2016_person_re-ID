function hp = get_heatmap( net,im )
net.mode = 'test' ;
net.move('gpu') ;
net.conserveMemory = false;
im_mean = net.meta(1).normalization.averageImage;
im_mean = imresize(im_mean,[224,224]);
oim = bsxfun(@minus,single(im),im_mean);
net.eval({'data',gpuArray(oim)});
hp = net.vars(net.getVarIndex('res4fx')).value;
%hp_max = max(reshape(hp,14*14,[]),[],1);
%hp_max = repmat(reshape(hp_max,1,1,[]),14,14,1);
%hp = hp./hp_max;
end

