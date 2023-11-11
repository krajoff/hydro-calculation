function h = inductancesTime(hi, sfile, nl, sl, prc)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', '���������')];
    h = [h, addTr('������������  �������  �����')];
    ul = [sl('kad'), ' ', prc('kad'), '; ', ...
          sl('kaq'), ' ', prc('kaq')];     
    ul = sprintf(ul, kad, kaq);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('� ������� ��������� ���������� �������')];
    h = [h, addTr('������������ �����')];
    ul = [sl('lamot'), ' ', prc('lamot'), '; ', ...
          sl('lamz'), ' ', prc('lamz'), '; ', ...
          sl('lamsr'), ' ', prc('lamsr')];     
    ul = sprintf(ul, lamot, lamz, lamsr);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('')];
    
    h = [h, addTr('�������� �������������')];
    h = [h, addTr('snpv', 'rast', rast)];
    h = [h, addTr('snpv', 'r1', r1)];
    h = [h, addTr('snpv', 'r2', r2)];
    h = [h, addTr('snpv', 'rf', rf)];
    h = [h, addTr('snpv', 'rkd', rkd)];
    h = [h, addTr('snpv', 'rkq', rkq)];     
    
    h = [h, addTr('')];
    h = [h, addTr('����������� �������������')];
    h = [h, addTr('snpv', 'td01', td01)];
    h = [h, addTr('snpv', 'td1', td1)];
    h = [h, addTr('snpv', 'ta', ta)];
    h = [h, addTr('left','���������� ������� �� ���������� ���')];
    h = [h, addTr('snpv', 'tc01', tc01)];
    h = [h, addTr('snpv', 'td02', td02)];
end