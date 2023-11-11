function tr = addTr(varargin)
    nl = notationsLong();
    prc = precision();
    dmn = dimension();
    feature('DefaultCharacterSet', 'windows-1251');
    numVar = length(varargin);
    numColSpan = 5 - numVar;
    switch numVar
        case 1
            class = 'center';
            description = varargin{1};
        case 2
            class = varargin{1};
            description = varargin{2};       
        case {3, 4}
            dimention = '';
            numeration = '';
            if numVar == 4 
                numeration = sprintf('%i', varargin{4});
            end 
            if varargin{1} == "lnpvd" 
                dimention = dmn(varargin{2});
            end
            if varargin{1} == "lnpv" || varargin{1} == "lnpvd"
                description = nl(varargin{2});
                formatSpec = prc(varargin{2});
                digital = varargin{3};
            end 
        otherwise
            error('Wrong number of input arguments')
    end
   
    switch numVar
        case {1, 2}
            tr = ['<tr class="heighttr">\n', ...
                  '<td colspan="100" class="' class '">\n' ...
                  description '\n</td>\n</tr>\n'];
        case {3, 4}
            tr = '<tr class="heighttr">\n'; ...
            if numVar == 3
                tr = [tr '<td colspan="' sprintf('%i', numColSpan) ...
                           '" class="bordertd">' description '</td>\n'];
            elseif numVar == 4
                tr = [tr '<td colspan="' sprintf('%i', numColSpan) ...
                           '" class="center">'  numeration '</td>\n' ...
                         '<td class="bordertd">' description '</td>\n'];
            end
                tr = [tr '<td class="bordertd">' formatSpec ...
                    ' ' dimention '</td>\n </tr>\n'];
            tr = sprintf(tr, digital);
    end
end