close all; clear; clc;
[sf, cf] = paths;

[id, gentype] = imDatFile('forinp.dat');
id = covert2struct(id);
joinStructByCell({id; cf}, sf);

pull(sf);
htmlReport(sf, gentype);
