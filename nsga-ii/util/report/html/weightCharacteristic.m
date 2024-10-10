function h = weightCharacteristic(hi, st, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', 'Весовые характеристики')];
    h = [h, listTr('lnpvd', st, sfile, 'ga', 'gd')]; 
    h = [h, '</table>'];
end