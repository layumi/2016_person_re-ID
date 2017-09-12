clear;
%you can download this file. It contains data.
load('../cuhk-03.mat'); 
count1 = 0;
count2 = 0;
label = 0;

%test
testsets_num = 6; % keep the same split with the training.
test = testsets{testsets_num,1};
for k=1:size(test,1)  %camera
    im = detected{test(k,1),1};
    id = im(test(k,2),:);
    label = label+1;
    for j=1:5  %image
        file = id{j};
        if(~isempty(file))
            count1 = count1 + 1;
            disp(label);
            testdb.data1(:,:,:,count1) = single(imresize(file,[256,256]));
            testdb.label1(:,count1) = label;
        end
    end
    for j=6:10  %image
        file = id{j};
        if(~isempty(file))
            count2 = count2 + 1;
            disp(label);
            testdb.data2(:,:,:,count2) = single(imresize(file,[256,256]));
            testdb.label2(:,count2) = label;
        end
    end
end

save(sprintf('cuhk_data_256_test_split%d.mat',testsets_num),'testdb','-v7.3');




