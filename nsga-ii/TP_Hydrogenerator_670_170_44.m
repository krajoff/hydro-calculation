%*************************************************************************
%   Test Problem : 'Hydrogenerator 670/170-44'
%*************************************************************************
paths;
options = nsgaopt();                    % create default options structure
options.popsize = 20;                   % populaion size
options.maxGen  = 5;                    % max generation

options.numObj = 2;                     % number of objectives
options.numVar = 3;                     % number of design variables
options.numCons = 0;                    % number of constraints

% lower bound
options.lb = [6700-10 6100-10 1700-10];

% upper bound
options.ub = [6700+10 6100+10 1700+10]; 
options.vartype = [2 2 2];
options.objfun = @TP_Hydrogenerator_670_170_44_objfun;     
options.plotInterval = 1;                        
%oldresult=loadpopfile('populations.txt');
%options.initfun={@initpop, oldresult};
%options.useParallel = 'no'; 
%options.poolsize = 1; 
result = nsga2(options);               
