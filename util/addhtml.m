function addhtml(file, permission, code, string, formatSpec, digital)
    fid = fopen(file, permission);
    if isempty(code)
        text = ['<tr class="heighttr">\n' ...
                    '<td class="bordertd">' string '</td>\n' ...
                    '<td class="bordertd">' formatSpec '</td>\n' ...
                '</tr>\n'];
    else
        text = code;
    end
    fprintf(fid, text, digital);
    fclose(fid);
end