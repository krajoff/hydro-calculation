function [y, cons] = TP_Hydrogenerator_965_160_56_objfun(x)

    y = [0,0];
    cons = zeros(1,14);
        
    [id,~] = readData('input_965_160_56.dat');
    commonStruct = load('data\commondata.mat');
    constrains = constrains();
    id.da = x(1); id.di = x(2); id.elt = x(3); id.delta = x(4);
    
    ms = joinStructs(id, commonStruct);
    ms = calculation(ms);
    y(1) = 1/ms.kpdd(12);
    y(2) = ms.gs;
    
    checkConstrains(constrains, ms)
    msg = "";
    
    
    if(ms.ha < 100)
        cons(1) = ms.ha; msg = msg + "ha=" + sprintf('%d',cons(1)) + " ";
    end
    if(ms.t < 40)
        cons(2) = ms.t; msg = msg + "t=" + sprintf('%1.2f',cons(2)) + " ";
    end
    

   
        cons(2) = ms.t; cons(3) = ms.as; cons(4) = ms.al;
        cons(5) = ms.taum; cons(6) = ms.pje; cons(7) = ms.bdeln; cons(8) = ms.bz3n;
        cons(9) = ms.ban; cons(10) = ms.okz; cons(11) = ms.teti; cons(12) = ms.tetfe;
        cons(13) = ms.tetcu; cons(14) = ms.tetep;
        
        fprintf("Bad: x1 = %d, x2 = %d, x3 = %d, x4 = %d \n", x(1),x(2),x(3),x(4));
        fmt = ['cons =' repmat(' %1.2f', 1, numel(cons))];
        fprintf(fmt, cons);
    end
         
end