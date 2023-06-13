% Set structure-file, file of common data and additional paths
function [sf, cf] = paths
    sf = 'data\struct.mat';
    cf = 'data\commondata.mat';
    if exist(sf, 'file'), delete(sf); end

    addpath(fullfile(pwd, '\util'));
    addpath(fullfile(pwd, '\stations'));
    addpath(fullfile(pwd, '\data'));
    addpath(fullfile(pwd, '\results'));
    
    commonData(cf);
end
