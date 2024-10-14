% Read initial FORTRAN77-files (aka dat-files) and m-files 
function [id, genType] = readData(name)
    [~, ~, ext] = fileparts(name);
    switch ext
        case '.dat'
            [id, genType] = imDatFile(name);
            id = covert2struct(id);
        case '.m'
            run(name);
        case '.xls'
            [id, genType] = imXLSFile(name);
    end
end