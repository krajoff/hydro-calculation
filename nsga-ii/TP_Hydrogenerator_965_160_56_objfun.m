function [y, cons] = TP_Hydrogenerator_965_160_56_objfun(x)

    y = [0,0];
    cons = zeros(1,14);
        
    [id,~] = readData('input_965_160_56.dat');
    commonStruct = load('data\commondata.mat');
    tableConstrains = constrains();
    
    % ѕереопределение исходных данных 
    id.da = x(1); id.di = x(2); id.elt = x(3); 
    id.delta = x(4); id.we = x(5); id.bp = x(6);
    id.bp1 = x(7); id.bm = x(8); id.be = x(9);
    id.hs = x(10); id.bs = x(11); id.hsz = x(12);
    % ¬ычисление/переопределение высоты полюсного сердечник
    id.hm = floor((id.ae+.4)*id.we+id.ae+28)+1; 
    id.nr = round((id.elt+id.bk)/53-1); % переопределение количества вент.канаов в статоре

    mainStruct = joinStructs(id, commonStruct);
    mainStruct = calculation(mainStruct);
    y(1) = 1/mainStruct.kpdd(12);
    y(2) = mainStruct.gs;
    
    cons = checkConstrains(cons, tableConstrains, mainStruct);
         
end