function output = remove_strange_map( input )
output = input;
for i = 1:size(input,3)
    map = input(:,:,i);
    [~,index] = sort(map(:),'descend');
    if(index(1)<=28 || mod(index(1)-1,14) == 0)
        output(:,:,i) = zeros(14,14,'single');
    end
    if(index(2)<=28 || mod(index(2)-1,14) == 0)
        output(:,:,i) = zeros(14,14,'single');
    end
end
end

