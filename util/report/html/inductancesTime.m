function h = inductancesTime(hi, st, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', ['Активные и индуктивные сопротивления, ' ...
            'постоянные времени'])];
    h = [h, addTr('left', 'Коэффициенты  реакции  якоря')];
    ul = [st.ns('kad'), ' ', st.prc('kad'), '; ', ...
          st.ns('kaq'), ' ', st.prc('kaq')];     
    ul = sprintf(ul, kad, kaq);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('К расчету рассеяния демпферной обмотки')];
    h = [h, addTr('lnpv', 'bs1', bs1)];
    h = [h, addTr('left', 'Проводимость пазов:')];
    ul = [st.ns('lamot'), ' ', st.prc('lamot'), '; ', ...
          st.ns('lamz'), ' ', st.prc('lamz'), '; ', ...
          st.ns('lamsr'), ' ', st.prc('lamsr')];     
    ul = sprintf(ul, lamot, lamz, lamsr);
    h = [h, addTr('ultd', ul)];
    
    h = [h, addTr('Активные сопротивления')];
    h = [h, listTr('snpv', st, sfile, 'rast', 'rkq')];
    
    h = [h, addTr('Индуктивные сопротивления')];
    h = [h, listTr('snpv', st, sfile, 'xl', 'x0')];      
    
    h = [h, addTr('Постоянные времени')];
    h = [h, addTr('snpvd', 'td01', td01)];
    h = [h, addTr('snpvd', 'td1', td1)];
    h = [h, addTr('snpvd', 'ta', ta)];
    h = [h, addTr('left', 'Демпферной обмотки по продольной оси:')];
    h = [h, addTr('snpvd', 'tc01', tc01, '&nbsp &nbsp')];
    h = [h, addTr('snpvd', 'td02', td02, '&nbsp &nbsp')];
    h = [h, addTr('snpvd', 'td2', td2, '&nbsp &nbsp')];    
    h = [h, addTr('left', 'Демпферной обмотки по поперечной оси:')];
    h = [h, addTr('snpvd', 'tq01', tq01, '&nbsp &nbsp')];
    h = [h, addTr('snpvd', 'tq2', tq2, '&nbsp &nbsp')];
    
    h = [h, addTr('lnpv', 'okz', okz)];
    h = [h, addTr('lnpv', 'stover', stover)];
    h = [h, addTr('lnpvd', 'terdem', terdem)];
    h = [h, addTr('lnpvd', 'c3f', c3f)];
    h = [h, addTr('lnpvd', 'c1f', c1f)];
    h = [h, addTr('lnpvd', 'crot', crot)];
    h = [h, addTr('lnpvd', 'qczar', qczar)];
    h = [h, '</table>\n'];
    h = [h, '<div style="break-after:page"></div>\n'];
end