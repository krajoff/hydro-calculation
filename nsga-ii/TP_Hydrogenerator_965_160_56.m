%*************************************************************************
%   Test Problem : 'Hydrogenerator 965/160-56'
%*************************************************************************
paths;
options = nsgaopt();                    % create default options structure
options.popsize = 200;                  % populaion size
options.maxGen  = 20;                   % max generation

options.numObj = 2;                     % number of objectives
options.numCons = 14;                   % number of constraints

da=9650; di=9000; elt=1600; delta=14; 
we=21; bp=365; bp1=365; bm=280; be=62;
hs=6; bs=4; hsz=6;

options.lb = [da-100 di-100 elt-50 delta-0 we-3 bp-10 bp1-0 ...
    bm-10 be-2 hs-1 bs-1 hsz-1]; % lower bound
options.ub = [da+100 di+100 elt+50 delta+3 we+3 bp+5 bp1+10 ...
    bm+10 be+2 hs+1 bs+1 hsz+1] ; % upper bound

options.numVar = length(options.lb);    % number of design variables
options.nameObj = {'Efficiency', 'StatorMass'}; 

options.vartype = ones(1,length(options.lb))+1;
options.objfun = @TP_Hydrogenerator_965_160_56_objfun;     
options.plotInterval = 5; 
ms = getGenerator('input_965_160_56.dat');   
options.refPoint = [1/ms.kpdd(12),ms.gs];

result = nsga2(options);