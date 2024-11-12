function [ms,genType] = getGenerator(filepath,sf)
    [id,genType] = readData(filepath);
    commonStruct = load('data\commondata.mat');
    ms = joinStructs(id, commonStruct);
    ms = calculation(ms);
    save(sf);
end