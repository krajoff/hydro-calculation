function T = constrains()

Parameters = {'ha'; 't'; 'as'; 'al'; 'taum'; 'pje'; 'bdeln'; ...
    'bz3n'; 'ban'; 'okz'; 'teti'; 'tetfe'; 'tetcu'; 'tetep'};

Min = [100;  40; 400; .6;   35; NaN; .6; 1.3;   .8;  .9; NaN; NaN; NaN; NaN];

Max = [NaN; NaN; 900; .73; NaN;   5; .9; 1.6; 1.25; 1.2; 20; 65; 65; 65];

T = table(Parameters, Min, Max);

end