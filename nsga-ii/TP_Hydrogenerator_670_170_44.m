%*************************************************************************
%   Test Problem : 'Hydrogenerator 670/170-44'
%*************************************************************************
paths;
options = nsgaopt();                    % create default options structure
options.popsize = 100;                   % populaion size
options.maxGen  = 10;                   % max generation

options.numObj = 2;                     % number of objectives
options.numVar = 4;                     % number of design variables
options.numCons = 14;                   % number of constraints

options.lb = [6700-20 6100-20 1700-20 14-3]; % lower bound
options.ub = [6700+20 6100+20 1700+20 14+3]; % upper bound
options.nameObj = {'Efficiency', 'StatorMass'}; 

options.vartype = [2 2 2 2];
options.objfun = @TP_Hydrogenerator_670_170_44_objfun;     
options.plotInterval = 5;                        
%oldresult=loadpopfile('populations.txt');
%options.initfun={@initpop, oldresult};
%options.useParallel = 'no'; 
%options.poolsize = 1; 
result = nsga2(options);               
