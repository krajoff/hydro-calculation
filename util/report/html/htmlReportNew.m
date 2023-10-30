function htmlReportNew(sfile, gentype)
    load(sfile, '*');
    file = fullfile(pwd, 'results', ['solution_', gentype, '.html']);
    nl = notationsLong();
    ns = notationsShort();
    feature('DefaultCharacterSet', 'windows-1251');

    h = headHtml;
    h = [h, '<table class="cwdtable">\n' ...
                '<tr class="heighttr">\n' ...
                    '<td colspan="2" class="boldtype">' ...
                    '������ ��������� ����</td>\n' ...
                '</tr>\n'];
    h = [h, addTr(nl('fkf'), '%1.3f', fkf)];
    h = [h, addTr(nl('aklam'), '%1.3f', aklam)];
    h = [h, addTr('������������ �������:')];
    
    ul = ['первый %1.3f; второй %1.3f; ' ...
        'третий %1.3f; полный %1.3f'];
    ul = sprintf(ul, dkd1, dkd2, dkd3, dkd);
    h = [h, '<tr class="heighttr">\n', ...
                '<td colspan="2" class="ultd">\n', ...
                ul,'\n</td>\n</tr>\n'];
            
    h = [h, '<tr class="heighttr">\n<td colspan="2">' ...
        'Расчет проводимостей полюсов</td>\n</tr>\n'];
    ul = 'АР %3.2f; ДТ %3.2f; СР  %3.2f';
    ul = sprintf(ul, ap, dt, cp);
    h = [h, '<tr class="heighttr">\n', ...
                '<td colspan="2" class="ultd">\n', ul,'\n</td>\n</tr>\n'];
    
	ul = ['башмаков %3.3f; сердечников %3.3f; торцов %3.3f; ', ...
		'cуммарная %3.3f; полей рассеяния %3.3f'];
	ul = sprintf(ul, lampl, lamml, lammb, lammp, lamsig);	
    h = [h, '<tr class="heighttr">\n', ...
                '<td colspan="2" class="ultd">\n', ul,'\n</td>\n</tr>\n'];
    
    fid = fopen(file, 'w', 'native', 'windows-1251');
    fprintf(fid, h);
    fclose(fid);
end