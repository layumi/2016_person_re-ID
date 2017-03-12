function output = rand_diff_class(imdb,index)
% average possible for every train image
    output = randi(numel(imdb.images.label));
    while(imdb.images.label(output) == imdb.images.label(index) || imdb.images.set(output)~=1)
        output = randi(numel(imdb.images.label)); 
    end
end

