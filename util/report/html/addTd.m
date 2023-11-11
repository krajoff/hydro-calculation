function td = addTd(varargin)
    prc = precision();
    numVar = length(varargin);
    switch numVar
        case 1
            td = ['<td class="center">' varargin{1} '</td>\n'];  
        case 2
            if ~isempty(strfind(varargin{1}, '%'))
                formatSpec = varargin{1};
            else
                formatSpec = prc(varargin{1});
            end
            digital = varargin{2};
            td = ['<td class="center">' formatSpec '</td>\n'];
            td = sprintf(td, digital);
        otherwise
            error('Wrong number of input arguments')
    end
end