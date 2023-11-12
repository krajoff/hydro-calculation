function h = magneticCircuitCalculation(hi, sfile, nl, sl, prc)    
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');

    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', 'Расчёт магнитной цепи')];
    h = [h, addTr('lnpv', 'fkf', fkf)];
    h = [h, addTr('lnpv', 'aklam', aklam)];   
    h = [h, addTr('Коэффициенты Картера:')];
    ul = [sl('dkd1'), ' ', prc('dkd1'), '; ', ...
          sl('dkd2'), ' ', prc('dkd2'), '; ', ...
          sl('dkd3'), ' ', prc('dkd3'), '; ', ... 
          sl('dkd'), ' ', prc('dkd'), ''];
    ul = sprintf(ul, dkd1, dkd2, dkd3, dkd);
    h = [h, addTr('ultd', ul)];   
    h = [h, addTr('Расчёт проводимостей полюсов')];
    ul = [nl('ap'), ' ', prc('ap'), '; ', ...
          nl('dt'), ' ', prc('dt'), '; ', ...
          nl('cp'), ' ', prc('cp')];     
    ul = sprintf(ul, ap, dt, cp);
    h = [h, addTr('ultd', ul)];
    ul = [sl('lampl'), ' ', prc('lampl'), '; ', ...
          sl('lamml'), ' ', prc('lamml'), '; ', ...
          sl('lammb'), ' ', prc('lammb'), '; ', ... 
          sl('lammp'), ' ', prc('lammp'), '; ', ...
          sl('lamsig'), ' ', prc('lamsig')];
    ul = sprintf(ul, lampl, lamml, lammb, lammp, lamsig);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('lnpv', 'xp', xp)];
    h = [h, addTr('lnpv', 'xp1', xp1)];
    h = [h, addTr('Расчёт холостого хода при номинальном напряжении')];
    h = [h, addTr('lnpvd', 'fi1n', fi1n)];
    h = [h, addTr('lnpvd', 'fin', fin)];
    h = [h, addTr('lnpvd', 'filamn', filamn)];
    h = [h, addTr('lnpvd', 'uftn', uftn, 1)];
    h = [h, addTr('lnpvd', 'bdeln', bdeln, 2)];   
    h = [h, addTr('lnpvd', 'bz3n', bz3n, 3)];   
    h = [h, addTr('lnpvd', 'ban', ban, 4)];   
    h = [h, addTr('lnpvd', 'awzn', awzn, 5)];   
    h = [h, addTr('lnpvd', 'awan', awan, 6)];   
    h = [h, addTr('lnpvd', 'sigmn', sigmn, 7)];   
    h = [h, addTr('lnpvd', 'sigpn', sigpn, 8)];   
    h = [h, addTr('lnpvd', 'bmin', bmin, 9)];   
    h = [h, addTr('lnpvd', 'bpin', bpin, 10)];   
    h = [h, addTr('lnpvd', 'bm12n', bm12n, 11)];   
    h = [h, addTr('lnpvd', 'awt1n', awt1n, 12)];   
    h = [h, addTr('lnpvd', 'awt3n', awt3n, 13)];   
    h = [h, addTr('lnpvd', 'awt2n', awt2n, 14)];   
    h = [h, addTr('lnpvd', 'awmn', awmn, 15)];   
    h = [h, addTr('lnpvd', 'awdn', awdn, 16)];   
    h = [h, addTr('lnpvd', 'awzwn', awzwn, 17)];   
    h = [h, addTr('lnpvd', 'awawn', awawn, 18)];   
    h = [h, addTr('lnpvd', 'awmwn', awmwn, 19)];   
    h = [h, addTr('lnpvd', 'awcn', awcn, 20)];   
    h = [h, addTr('lnpvd', 'awjn', awjn, 21)];  
	h = [h, addTr('lnpvd', 'awsumn', awsumn, 22)];  
    h = [h, addTr('lnpvd', 'hhin', hhin, 23)];  
	h = [h, addTr('lnpvd', 'uuf', uuf(3), 24)];
    h = [h, '</table>\n'];
    h = [h, '<div style="break-after:page"></div>\n'];
end