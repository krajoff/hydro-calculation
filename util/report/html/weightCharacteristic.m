function h = weightCharacteristic(hi, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    struct = open(sfile); 
    ga = struct.ga;
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', 'Весовые характеристики')];
    h = [h, addTr('lnpvd', 'ga', ga)];
    h = [h, addTr('lnpvd', 'gz', gz)];
    h = [h, addTr('lnpvd', 'gs', gs)];
    h = [h, addTr('lnpvd', 'gus', gus)];
    h = [h, addTr('lnpvd', 'gps', gps)];
    h = [h, addTr('lnpvd', 'gc', gc)];
    h = [h, addTr('lnpvd', 'gc1', gc1)];
    h = [h, addTr('lnpvd', 'gce', gce)];
    h = [h, addTr('lnpvd', 'gm', gm)];
    h = [h, addTr('lnpvd', 'gpm', gpm)];
    h = [h, addTr('lnpvd', 'giz', giz)];
    h = [h, addTr('lnpvd', 'gb', gb)];
    h = [h, addTr('lnpvd', 'gr', gr)];
    h = [h, addTr('lnpvd', 'gd', gd)];
    h = [h, addTr('Тепловой расчёт статора')];
    h = [h, addTr('left', 'Удельные тепловые нагрузки:')];
    h = [h, addTr('snpvd', 'wfe', wfe, '&nbsp')];
    h = [h, addTr('snpvd', 'wcu', wcu, '&nbsp')];
    h = [h, addTr('snpvd', 'wi', wi, '&nbsp')];
    h = [h, addTr('lnpvd', 'teti', teti)];
    h = [h, addTr('left', 'Превышение температуры:')];
    h = [h, addTr('snpvd', 'tetfe', tetfe, '&nbsp')];
    h = [h, addTr('snpvd', 'tets', tets, '&nbsp')];
    h = [h, addTr('snpvd', 'tetcu', tetcu, '&nbsp')];   
    h = [h, addTr('Тепловой расчёт обмотки возбуждения')];
    h = [h, addTr('snpvd', 'wcu2', wcu2)];
    h = [h, addTr('snpvd', 'tetep', tetep)];
    h = [h, '</table>'];
    h = [h, '<div style="break-after:page"></div>\n'];
end