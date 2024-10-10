function h = magneticCircuitCalculation(hi, st, sfile)    
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');

    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', 'Расчёт магнитной цепи')];
    h = [h, addTr('lnpv', 'fkf', fkf)];
    h = [h, addTr('lnpv', 'aklam', aklam)];   
    h = [h, addTr('left', 'Коэффициенты Картера:')];
    ul = [st.ns('dkd1'), ' ', st.prc('dkd1'), '; ', ...
          st.ns('dkd2'), ' ', st.prc('dkd2'), '; ', ...
          st.ns('dkd3'), ' ', st.prc('dkd3'), '; ', ... 
          st.ns('dkd'), ' ', st.prc('dkd'), ''];
    ul = sprintf(ul, dkd1, dkd2, dkd3, dkd);
    h = [h, addTr('ultd', ul)];   
    h = [h, addTr('left' ,'Расчёт проводимостей полюсов:')];
    ul = [st.ns('ap'), ' ', st.prc('ap'), '; ', ...
          st.ns('dt'), ' ', st.prc('dt'), '; ', ...
          st.ns('cp'), ' ', st.prc('cp')];     
    ul = sprintf(ul, ap, dt, cp);
    h = [h, addTr('ultd', ul)];
    ul = [st.ns('lampl'), ' ', st.prc('lampl'), '; ', ...
          st.ns('lamml'), ' ', st.prc('lamml'), '; ', ...
          st.ns('lammb'), ' ', st.prc('lammb'), '; ', ... 
          st.ns('lammp'), ' ', st.prc('lammp'), '; ', ...
          st.ns('lamsig'), ' ', st.prc('lamsig')];
    ul = sprintf(ul, lampl, lamml, lammb, lammp, lamsig);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('lnpv', 'xp', xp)];
    h = [h, addTr('lnpv', 'xp1', xp1)];
    h = [h, addTr('Расчёт холостого хода при номинальном напряжении')];
    h = [h, addTr('lnpvd', 'fi1n', fi1n)];
    h = [h, addTr('lnpvd', 'fin', fin)];
    h = [h, addTr('lnpvd', 'filamn', filamn)];
    h = [h, listTr('lnpvd', st, sfile, 'uftn', 'hhin', (1:23))];
	h = [h, addTr('lnpvd', 'uuf', uuf(3), 24)];
    h = [h, '</table>\n'];
    h = [h, '<div style="break-after:page"></div>\n'];
end