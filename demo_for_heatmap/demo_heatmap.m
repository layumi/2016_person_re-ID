netStruct = load('../data/resnet52_2stream_drop0.9_only_siamese/net-epoch-95.mat');
net_s = dagnn.DagNN.loadobj(netStruct.net); %siamese_model
netStruct = load('../data/resnet52_drop0.9_baseline/net-epoch-50.mat');
net_c = dagnn.DagNN.loadobj(netStruct.net); %classification_model
netStruct = load('../data/resnet52_2stream_drop0.9/net-epoch-75.mat');
net_j = dagnn.DagNN.loadobj(netStruct.net); %our_model

p = dir('./*jpg');
ff = zeros(numel(p),2048);
for i = 1:numel(p)
    disp(i);
    str = strcat('./',p(i).name);
    im = imresize(imread(str),[224,224]);
    hp_s = get_heatmap( net_s,im );
    hp_c = get_heatmap( net_c,im );
    hp_j = get_heatmap( net_j,im );
    hp_s = remove_strange_map(gather(hp_s));
    hp_c = remove_strange_map(gather(hp_c));
    hp_j = remove_strange_map(gather(hp_j));
    
    subplot(1,4,1);
    imshow(im);
    title('original image');
    subplot(1,4,2);
    hp_ss = sum(hp_s,3);
    max_value = max(hp_ss(:));
    mapIm = mat2im(hp_ss, jet(100), [0 max_value]);
    imshow(mapIm);
    
    subplot(1,4,3);
    hp_ss = sum(hp_c,3);
    max_value = max(hp_ss(:));
    mapIm = mat2im(hp_ss, jet(100), [0 max_value]);
    imshow(mapIm);
    
    subplot(1,4,4);
    hp_ss = sum(hp_j,3);
    max_value = max(hp_ss(:));
    mapIm = mat2im(hp_ss, jet(100), [0 max_value]);
    imshow(mapIm);
    
    disp('Press a key~~');
    pause;
end
