% Set structure-file, file of common data and additional paths
function [sf, cf] = paths
    sf = 'data\struct.mat';
    cf = 'data\commondata.mat';
    if exist(sf, 'file'), delete(sf); end
    folder = fileparts(which(matlab.desktop.editor.getActiveFilename)); 
    addpath(genpath(folder));
    commonData(cf);
end
