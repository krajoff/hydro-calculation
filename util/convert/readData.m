% Read initial FORTRAN77-files (aka dat-files) and m-files 
function [id, genType] = readData(name, sf, cf)
    [~, ~, ext] = fileparts(name);
    if (strcmp(ext, '.dat'))
        [id, genType] = imDatFile(name);
        id = covert2struct(id); 
    end
    joinStructByCell({id; cf}, sf);
end