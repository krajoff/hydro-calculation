%Define main paths and  structure-file
close all; clear; clc;
[sf, ~] = paths;


% Convert input dat-file to: 1. genType is a type of hydro-generator
% 2. id is an initial data from a data file 
[id, genType] = readData('input_435_190_10.m');
%[id, genType] = readData('input_670_170_44.dat');
%[id, genType] = readData('input_820_175_80.dat');
%[id, genType] = readData('input_1285_275_42.dat');


% Whole calculation modules
pull(sf, genType);


% Report module: 'html' by default, 'xls'
htmlReport(sf, genType);
