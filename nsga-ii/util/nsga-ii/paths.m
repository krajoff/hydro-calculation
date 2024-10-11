% Set structure-file, file of common data and additional paths
function [sf, cf] = paths
    sf = 'data\struct.mat';
    cf = 'data\commondata.mat';
    folder = fileparts(which(matlab.desktop.editor.getActiveFilename)); 
    if exist([folder, sf], 'file'), delete(sf); end
    addpath(genpath(folder));
    commonData(cf);
end
