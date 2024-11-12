% Set structure-file, file of common data and additional paths
function [sf, cf] = paths
    sf = 'data\struct.mat';
    cf = 'data\commondata.mat';
    if exist(sf, 'file'), delete(sf); end
    
    folder = fileparts(which(matlab.desktop.editor.getActiveFilename)); 
    
    allPaths = genpath(folder);
    pathList = strsplit(allPaths, pathsep);
    excludePath = fullfile(folder, 'nsga-ii');
    filteredPaths = pathList(~contains(pathList, excludePath));
    filteredPathsStr = strjoin(filteredPaths, pathsep);
    addpath(filteredPathsStr);
    
    commonData(cf);
end
