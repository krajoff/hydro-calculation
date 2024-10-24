%*************************************************************************
%   Test Problem : 'Hydrogenerator 965/160-56'
%*************************************************************************
paths;
options = nsgaopt();                    % create default options structure
options.popsize = 1000;                    % populaion size
options.maxGen  = 5;                   % max generation

options.numObj = 2;                     % number of objectives
options.numVar = 4;                     % number of design variables
options.numCons = 14;                   % number of constraints

options.lb = [9650-20 9000-20 1600-20 14-3]; % lower bound
options.ub = [9650+20 9000+20 1600+20 14+3]; % upper bound
options.nameObj = {'Efficiency', 'StatorMass'}; 

options.vartype = [2 2 2 1];
options.objfun = @TP_Hydrogenerator_965_160_56_objfun;     
options.plotInterval = 5; 
result = nsga2(options);               
