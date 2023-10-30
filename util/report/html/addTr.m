function tr = addTr(varargin)
    feature('DefaultCharacterSet', 'windows-1251');

    switch length(varargin)
        case 1
            tr = ['<tr class="heighttr">\n<td colspan="2">\n', ...
                varargin{1}, ...
                '\n</td>\n</tr>\n'];
        case 3
            description = varargin{1};
            formatSpec = varargin{2};
            digital = varargin{3};    
            tr = ['<tr class="heighttr">\n' ...
                    '<td class="bordertd">' description '</td>\n' ...
                    '<td class="bordertd">' formatSpec '</td>\n' ...
                  '</tr>\n'];
            tr = sprintf(tr, digital);
        otherwise
            error('Wrong number of input arguments')
    end
end