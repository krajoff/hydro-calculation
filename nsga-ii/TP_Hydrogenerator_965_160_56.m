%*************************************************************************
%   Test Problem : 'Hydrogenerator 965/160-56'
%*************************************************************************
paths;
options = nsgaopt();                    % create default options structure
options.popsize = 50;                   % populaion size
options.maxGen  = 5;                    % max generation

options.numObj = 2;                     % number of objectives
options.numVar = 5;                     % number of design variables
options.numCons = 14;                   % number of constraints

options.lb = [9650-30 9000-30 1600-30 14-3 21-3]; % lower bound
options.ub = [9650+30 9000+30 1600+30 14+3 21+3]; % upper bound
options.nameObj = {'Efficiency', 'StatorMass'}; 

options.vartype = [2 2 2 2 2];
options.objfun = @TP_Hydrogenerator_965_160_56_objfun;     
options.plotInterval = 5; 
result = nsga2(options);