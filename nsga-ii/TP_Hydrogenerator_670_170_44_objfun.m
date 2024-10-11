function [y, cons] = TP_Hydrogenerator_670_170_44_objfun(x)
    y = [0,0];
    cons = [0,0];

    run('input_670_170_44.m');
    commonStruct = load('data\commondata.mat');
    id.da = x(1); id.di = x(2); id.elt = x(3);
    
    mainStruct = joinStructs(id, commonStruct);
    mainStruct = calculation(mainStruct);
    y(1) = 1/mainStruct.kpdd(12);
    y(2) = mainStruct.gs;
end