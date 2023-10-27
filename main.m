% Define main paths and  structure-file
close all; clear; clc;
[sf, cf] = paths;

% Convert input dat-file to:
% genType is a type of hydro-generator
% id is an initial data from a dat-file 
[id, genType] = imDatFile('input_2.dat');
id = covert2struct(id); 
joinStructByCell({id; cf}, sf);

% Whole calculation modules
pull(sf, genType);

% Report module: 'html' by default, 'xls'
htmlReportNew(sf, genType);
