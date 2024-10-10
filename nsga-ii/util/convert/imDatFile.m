function [data, gentype] = imDatFile(fileToRead)
    fileID = fopen(fileToRead, 'r', 'n', 'IBM866');
    nmb = 3;
    top = "";
    for i = 1:nmb
        line = fgetl(fileID);
        if ~isempty(regexp(line, '\d', 'once'))
            top = [top; line];
        end
    end
    fclose(fileID);
    top(2) = regexprep(top(2), ' +', ' ');
    swrow = str2double(split(top(2)));
    swrow = swrow(~isnan(swrow));
    gentype = top(3);
    gentype = strtrim(gentype);
    gentype = regexprep(gentype, '  ', ' ');
    gentype = char(gentype);
    data = readmatrix(fileToRead)';
    data = data(:);
    data = data(all(~isnan(data),2),:);
    data = [swrow; data]; 
end
