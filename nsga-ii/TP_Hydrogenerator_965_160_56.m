%*************************************************************************
%   Test Problem : 'Hydrogenerator 670/170-44'
%*************************************************************************
paths;
options = nsgaopt();                    % create default options structure
options.popsize = 100;                  % populaion size
options.maxGen  = 10;                   % max generation

options.numObj = 2;                     % number of objectives
options.numVar = 3;                     % number of design variables
options.numCons = 0;                    % number of constraints

% lower bound
options.lb = [9650-20 9000-20 1600-20];

% upper bound
options.ub = [9650+20 9000+20 1600+20]; 
options.vartype = [2 2 2];
options.objfun = @TP_Hydrogenerator_965_160_56_objfun;     
options.plotInterval = 5;                        
result = nsga2(options);               
