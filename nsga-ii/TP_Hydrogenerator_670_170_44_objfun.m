function [y, cons] = TP_Hydrogenerator_670_170_44_objfun(x)
    y = [0,0];
    cons = [0,0];

    [sf, cf] = paths;
    [id, ~] = readData('input_670_170_44.m');
    id.da = x(1); id.di = x(2); id.elt = x(3);
    joinStructByCell({id; cf}, sf);
    
    calculation(sf);
    struct = open(sf); 
    y(1) = 1/struct.kpdd(12);
    y(2) = struct.gs;