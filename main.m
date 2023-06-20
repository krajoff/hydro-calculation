close all; clear; clc;
[sf, cf] = paths;

[id, gentype] = imDatFile('input_2.dat');
id = covert2struct(id);
joinStructByCell({id; cf}, sf);

pull(sf);
htmlReport(sf, gentype);
