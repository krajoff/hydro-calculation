function [y, cons] = TP_Hydrogenerator_965_160_56_objfun(x)

    y = [0,0];
    cons = [0,0];
        
    [id,~] = readData('input_965_160_56.dat');
    commonStruct = load('data\commondata.mat');
    id.da = x(1); id.di = x(2); id.elt = x(3);
    
    mainStruct = joinStructs(id, commonStruct);
    mainStruct = calculation(mainStruct);
    y(1) = 1/mainStruct.kpdd(12);
    y(2) = mainStruct.gs;
    
    if(mainStruct.tetfe > 44 || mainStruct.tetcu > 52)
        cons(1) = mainStruct.tetfe;
        cons(2) = mainStruct.tetcu;
        fprintf("Bad: x1 = %d, x2 = %d, x3 = %d, " + ...
                "КПД = %d, Масса статора = %d, " + ...
                "tetfe = %d,  tetcu = %d \n",  x(1),x(2),x(3), ...
                y(1), y(2), cons(1), cons(2));
    end
         
end