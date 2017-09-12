clear;
%you can download this file. It contains data.
load('../cuhk-03.mat');
imdb.meta.sets = ['train','test'];
count = 0;
label = 0;

%choose a split
testsets_num = 6; %cuhk03 has 20 different splits, and this value can be 1 ~ 20.
p = sprintf('./split%d_256/',testsets_num);
if(~exist(p,'dir'))
    mkdir(p);
end
test = testsets{testsets_num,1};
cc = [];
for k=1:numel(detected)  %camera
    im = detected{k,1};
    for i = 1:size(im,1)  %identity
        A = find(test(:,1) == k);
        B = find(test(:,2) == i);
        C = intersect(A,B);
        if(~isempty(C))
            continue;
        end
        label = label+1;
        temp = 0;
        for j=1:10  %image
            file = im{i,j};
            url = sprintf('/home/zzd/CUHK03/zzd_code/split%d_256/%d_%d_%d.jpg',testsets_num,k,i,j);
            if(~isempty(file))
                disp(url);
                imwrite(imresize(file,[256,256]),url);
                temp = temp + 1;
                count = count + 1;
                %disp(count);
                imdb.images.data(count) = cellstr(url);
                imdb.images.label(count) = label;
            end
        end
        cc = [cc;temp];
    end
end

imdb.images.set = ones(1,count);
imdb.images.set(:,randi(count,[round(0.1*count),1])) = 2;
list = find(imdb.images.set==2);
for i=1:numel(list)
    if cc(imdb.images.label(list(i)))<9
        imdb.images.set(list(i))=1;
    end
end
save(sprintf('cuhk_data_256_split%d.mat',testsets_num),'imdb','-v7.3');



