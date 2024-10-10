function joinStructByCell(cell, file)
    tempfile='temp.mat';
    for i = 1:length(cell)
        if isstruct(cell{i})
            name = cell{i};
            save(tempfile, '-struct', 'name');
            load(tempfile);
        else
            load(cell{i});
        end
    end
    save(file)
    delete(tempfile)
end