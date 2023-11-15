function [data, gentype] = imDatFile(fileToRead)
    fileID = fopen(fileToRead, 'r');
    nmb = 3;
    top = "";
    for i = 1:nmb
        line = fgetl(fileID);
        if ~isempty(regexp(line, '\d', 'once'))
            top = [top; line];
        end
    end
    fclose(fileID);
    swrow = str2double(split(top(2), '   '));
    gentype = regexprep(top(3),'[^0-9+-]','');
    gentype = regexprep(gentype,'[*?:<>;"]','_');
    gentype = char(gentype);
    data = readmatrix(fileToRead)';
    data = data(:);
    data = data(all(~isnan(data),2),:);
    data = [swrow; data]; 
end
