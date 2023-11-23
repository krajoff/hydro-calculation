function h = weightCharacteristic(hi, st, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', '������� ��������������')];
    h = [h, listTr('lnpvd', st, sfile, 'ga', 'gd')];    
    h = [h, addTr('�������� ������ �������')];
    h = [h, addTr('left', '�������� �������� ��������:')];
    h = [h, addTr('snpvd', 'wfe', wfe, '&nbsp')];
    h = [h, addTr('snpvd', 'wcu', wcu, '&nbsp')];
    h = [h, addTr('snpvd', 'wi', wi, '&nbsp')];
    h = [h, addTr('lnpvd', 'teti', teti)];
    h = [h, addTr('left', '���������� �����������:')];
    h = [h, addTr('snpvd', 'tetfe', tetfe, '&nbsp')];
    h = [h, addTr('snpvd', 'tets', tets, '&nbsp')];
    h = [h, addTr('snpvd', 'tetcu', tetcu, '&nbsp')];   
    h = [h, addTr('�������� ������ ������� �����������')];
    h = [h, addTr('snpvd', 'wcu2', wcu2)];
    h = [h, addTr('snpvd', 'tetep', tetep)];
    h = [h, '</table>'];
    h = [h, '<div style="break-after:page"></div>\n'];
end