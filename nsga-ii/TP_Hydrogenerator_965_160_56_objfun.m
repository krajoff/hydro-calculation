function [y, cons] = TP_Hydrogenerator_965_160_56_objfun(x)

    y = [0,0];
    cons = zeros(1,14);
        
    [id,~] = readData('input_965_160_56.dat');
    tableConstrains = constrains();
    
    % Переопределение исходных данных 
    id.da = x(1); id.di = x(2); id.elt = x(3); 
    id.delta = x(4); id.we = x(5);
    % Вычисление/переопределение высоты полюсного сердечника
    id.hm = floor((id.ae+.4)*id.we+id.ae+28)+1; 
    
    commonStruct = load('data\commondata.mat');
    ms = joinStructs(id, commonStruct);
    ms = calculation(ms);
    
    % Вычисление средневзвешенного КПД (пример из Тайнионкоски ГЭС):
    effw = (9*ms.kpdd(12)+22*ms.kpdd(11)+33*(ms.kpdd(10)+...
        ms.kpdd(11))/2+26*ms.kpdd(9)+10*(ms.kpdd(7)+ms.kpdd(8))/2);
    y(1) = 1/ms.kpdd(12);
    y(2) = ms.gs;
    
    cons = checkConstrains(cons, tableConstrains, ms);
         
end