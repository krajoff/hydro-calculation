% Define main paths and  structure-file
close all; clear; clc;
[sf, cf] = paths;

% Convert input dat-file to:
% genType is a type of hydro-generator
% id is an initial data from a dat-file 
[id, genType] = readData('input_1.dat', sf, cf);

% Whole calculation modules
pull(sf, genType);

% Report module: 'html' by default, 'xls'
htmlReport(sf, genType);
