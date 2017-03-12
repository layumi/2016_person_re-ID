function output = rand_same_class(imdb,index)
    list = find(imdb.images.label==imdb.images.label(index));
    selected = randi(numel(list));
    output = list(selected);
    while(output==index || imdb.images.set(output)~=1)
        selected = randi(numel(list));
        output = list(selected);
    end
end

