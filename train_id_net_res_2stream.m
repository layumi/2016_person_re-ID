function train_id_net_res_2stream(varargin)
% -------------------------------------------------------------------------
% Part 4.1: prepare the data
% -------------------------------------------------------------------------

% Load character dataset
imdb = load('./url_data.mat') ;
imdb = imdb.imdb;
% -------------------------------------------------------------------------
% Part 4.2: initialize a CNN architecture
% -------------------------------------------------------------------------
net = resnet52_2stream();
net.params(net.getParamIndex('fc751f')).learningRate = 0.01;
net.params(net.getParamIndex('fc751b')).learningRate = 0.2;
net.conserveMemory = true;
net.meta.normalization.averageImage = reshape([105.6920,99.1345,97.9152],1,1,3);

% -------------------------------------------------------------------------
% Part 4.3: train and evaluate the CNN
% -------------------------------------------------------------------------
opts.train.averageImage = net.meta.normalization.averageImage;
opts.train.batchSize = 48;
opts.train.continue = true; 
opts.train.gpus = 2;
opts.train.prefetch = false ;
opts.train.expDir = './data/resnet52_2stream_drop0.9_new' ;  % your model will store here
opts.train.learningRate = [0.1*ones(1,70),0.01*ones(1,5)] ;
opts.train.derOutputs = {'objective', 0.5,'objective_2', 0.5,'objective_final', 1} ;
opts.train.weightDecay = 0.0005;
opts.train.numEpochs = numel(opts.train.learningRate) ;
[opts, ~] = vl_argparse(opts.train, varargin) ;

% Call training function in MatConvNet
[net,info] = cnn_train_dag(net, imdb, @getBatch,opts) ;


% --------------------------------------------------------------------
function inputs = getBatch(imdb, batch,opts)
% --------------------------------------------------------------------
im1_url = imdb.images.data(batch) ; 
label1 = imdb.images.label(:,batch) ;
batchsize = numel(batch);
% every epoch we will add negative pairs until 1:4
dividor = 2;
dividor = max(5,dividor*power(1.01,opts.epoch));
half = round(batchsize/dividor);

label_f = cat(1,ones(half,1,'single'),ones(batchsize-half,1,'single')*2);
% select half from same class, second half from different class;  
batch2 = zeros(batchsize,1);
for i=1:batchsize
    if(i<=half)
        batch2(i) = rand_same_class(imdb, batch(i));
    else
        batch2(i) = rand_diff_class(imdb, batch(i));
    end
end
im2_url = imdb.images.data(batch2) ; 
im1 = vl_imreadjpeg(im1_url,'Flip');
im2 = vl_imreadjpeg(im2_url,'Flip');
label2 = imdb.images.label(:,batch2) ;
%------------------------------process data
oim1 = zeros(224,224,3,batchsize,'single');
oim2 = zeros(224,224,3,batchsize,'single');
for i=1:batchsize
    x1 = randi(33);x2 = randi(33);
    y1 = randi(33);y2 = randi(33);
    tim1 = im1{i};
    tim2 = im2{i};
    temp1 = tim1(x1:x1+223,y1:y1+223,:);
    temp2 = tim2(x2:x2+223,y2:y2+223,:);
    oim1(:,:,:,i) = temp1;
    oim2(:,:,:,i) = temp2;
end
oim1 = bsxfun(@minus,oim1,opts.averageImage); 
oim2 = bsxfun(@minus,oim2,opts.averageImage); 
inputs = {'data',gpuArray(oim1),'data_2',gpuArray(oim2),'label',label1,'label_2',label2,'label_f',label_f};
