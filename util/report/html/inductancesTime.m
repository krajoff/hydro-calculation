function h = inductancesTime(hi, sfile, sl, prc)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', 'Параметры')];
    h = [h, addTr('Коэффициенты  реакции  якоря')];
    ul = [sl('kad'), ' ', prc('kad'), '; ', ...
          sl('kaq'), ' ', prc('kaq')];     
    ul = sprintf(ul, kad, kaq);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('К расчету рассеяния демпферной обмотки')];
    h = [h, addTr('lnpv', 'bs1', bs1)];
    h = [h, addTr('Проводимость пазов')];
    ul = [sl('lamot'), ' ', prc('lamot'), '; ', ...
          sl('lamz'), ' ', prc('lamz'), '; ', ...
          sl('lamsr'), ' ', prc('lamsr')];     
    ul = sprintf(ul, lamot, lamz, lamsr);
    h = [h, addTr('ultd', ul)];
    
    h = [h, addTr('Активные сопротивления')];
    h = [h, addTr('snpv', 'rast', rast)];
    h = [h, addTr('snpv', 'r1', r1)];
    h = [h, addTr('snpv', 'r2', r2)];
    h = [h, addTr('snpv', 'rf', rf)];
    h = [h, addTr('snpv', 'rkd', rkd)];
    h = [h, addTr('snpv', 'rkq', rkq)];     
    
    h = [h, addTr('Индуктивные сопротивления')];
    h = [h, addTr('snpv', 'xl', xl)];
    h = [h, addTr('snpv', 'xad', xad)];    
    h = [h, addTr('snpv', 'xaq', xaq)];
    h = [h, addTr('snpv', 'xd', xd)];
    h = [h, addTr('snpv', 'xq', xq)];    
    h = [h, addTr('snpv', 'xf', xf)];    
    h = [h, addTr('snpv', 'xfras', xfras)];
    h = [h, addTr('snpv', 'xd1', xd1)];    
    h = [h, addTr('snpv', 'xkd', xkd)];
    h = [h, addTr('snpv', 'xkq', xkq)];
    h = [h, addTr('snpv', 'xd2p', xd2p)];    
    h = [h, addTr('snpv', 'xq2p', xq2p)];    
    h = [h, addTr('snpv', 'x2', x2)];    
    h = [h, addTr('snpv', 'x0', x0)];       
    
    h = [h, addTr('Постоянные времени')];
    h = [h, addTr('snpvd', 'td01', td01)];
    h = [h, addTr('snpvd', 'td1', td1)];
    h = [h, addTr('snpvd', 'ta', ta)];
    h = [h, addTr('left','Демпферной обмотки по продольной оси')];
    h = [h, addTr('snpvd', 'tc01', tc01, '&nbsp &nbsp')];
    h = [h, addTr('snpvd', 'td02', td02, '&nbsp &nbsp')];
    h = [h, addTr('left','Демпферной обмотки по поперечной оси')];
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