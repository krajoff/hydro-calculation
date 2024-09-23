%Define main paths and  structure-file
close all; clear; clc;
[sf, ~] = paths;


% Convert input file. Supported files: .m, .dat, .xls
%[id, genType] = readData('input_435_190_10.m');
%[id, genType] = readData('input_670_170_44.m');
%[id, genType] = readData('input_820_175_80.dat');
%[id, genType] = readData('input_1285_275_42.dat');
[id, genType] = readData('input_965_160_56.dat');


% Whole calculation modules
pull(sf, genType);


% Report module: 'html' by default, 'xls'
htmlReport(sf, genType);
