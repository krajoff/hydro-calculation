%*************************************************************************
%   Test Problem : 'Hydrogenerator 670/170-44'
%*************************************************************************

options = nsgaopt();                    % create default options structure
options.popsize = 10;                   % populaion size
options.maxGen  = 40;                   % max generation

options.numObj = 3;                     % number of objectives
options.numVar = 3;                     % number of design variables
options.numCons = 0;                    % number of constraints

% lower bound
options.lb = [6700-150 6100-150 1700-200]; 
% upper bound
options.ub = [6500+150 6100+150 1700+200]; 
options.vartype = [2 2 2];
options.objfun = @TP_Hydrogenerator_670_170_44_objfun;     
options.plotInterval = 100;                        
%oldresult=loadpopfile('populations.txt');
%options.initfun={@initpop, oldresult};
options.useParallel = 'no'; 
options.poolsize = 13; 
result = nsga2(options);               
