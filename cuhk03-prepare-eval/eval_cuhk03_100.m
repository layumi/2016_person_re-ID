%single shot
%random select 100 person as gallery, which contain only 1 ground truth

label1 = testdb.label1;
label2 = testdb.label2;
r1 = 0;
r5 = 0;
r10 = 0;
ff1 = ff.ff1;
ff2 = ff.ff2;
query_num = size(ff1,1)+size(ff2,1);


%cam1
for i=1:size(ff1,1)
    ff2_100 = [];
   f = ff1(i,:);
   for k=1:100
       index100 = find(label2 == k);
       rn = randperm(numel(index100));
       ff2_100 = cat(1,ff2_100, ff2(index100(rn(1)),:)); 
   end
   score = f*(ff2_100)';
   [~,index]= sort(score,'descend');
   good_index = label1(i);
   [ap(i),~] = compute_AP(good_index,[],index);
   if(index(1)== label1(i))
       r1 = r1+1;
   end
   if(~isempty(intersect(index(1:5),label1(i))))
       r5 = r5+1;
   end
   if(~isempty(intersect(index(1:10),label1(i))))
       r10 = r10+1;
   end
end

%cam2
for j=1:size(ff2,1)
    ff1_100 = [];
   f = ff2(j,:);
   for k=1:100
       index100 = find(label1 == k);
       rn = randperm(numel(index100));
       ff1_100 = cat(1,ff1_100, ff1(index100(rn(1)),:)); 
   end
   score = f*(ff1_100)';
   [~,index]= sort(score,'descend');
   good_index = label2(j);
   [ap(i+j),~] = compute_AP(good_index,[],index);
   if(index(1)== label2(j))
       r1 = r1+1;
   end
   if(~isempty(intersect(index(1:5),label2(j))))
       r5 = r5+1;
   end
   if(~isempty(intersect(index(1:10),label2(j))))
       r10 = r10+1;
   end
end

%fprintf('r1:%f   r5:%f   r10:%f  mAP:%f',r1/query_num,r5/query_num,r10/query_num,mean(ap));