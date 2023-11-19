function H = listTr(varargin)
    numVar = length(varargin);
    setting = varargin{1};
    structure = varargin{2};
    sfile = varargin{3};
    start = varargin{4};
    finish = varargin{5};
    feature('DefaultCharacterSet', 'windows-1251');
    list = structure.l;
    struct = open(sfile);
    H = [];
    start = find(strcmp(list, start));
    finish = find(strcmp(list, finish));
    if start > finish
        temp = start;
        start = finish;
        finish = temp;
    end
    switch numVar
        case 5
            for i = 1:length(list)
                if i >= start && i <= finish && isfield(struct, list{i})    
                    H = [H addTr(setting, list{i}, struct.(list{i}))];
                end
            end            
        case 6
            numeration = varargin{6};
            for i = 1:length(list)
                if i >= start && i <= finish && isfield(struct, list{i})          
                    H = [H addTr(setting, list{i}, ...
                        struct.(list{i}), numeration)];
                end
            end            
    end
end