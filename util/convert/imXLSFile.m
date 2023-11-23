function [id, genType] = imXLSFile(name)
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
    M = readmatrix(name);
end