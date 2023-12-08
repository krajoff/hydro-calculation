function h = temperatureCalculation(hi, st, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    break_page = '<div style="break-after:page"></div>\n';
    if akh == 0 && de == 0
        h = [hi, '<table class="cwdtable">\n'];
        h = [h, addTr('boldtype', 'Тепловой расчёт')]; 
        h = [h, addTr('Статор')];
        h = [h, addTr('left', 'Удельные тепловые нагрузки:')];
        h = [h, addTr('snpvd', 'wfe', wfe, '&nbsp')];
        h = [h, addTr('snpvd', 'wcu', wcu, '&nbsp')];
        h = [h, addTr('snpvd', 'wi', wi, '&nbsp')];
        h = [h, addTr('lnpvd', 'teti', teti)];
        h = [h, addTr('left', 'Превышение температуры:')];
        h = [h, addTr('snpvd', 'tetfe', tetfe, '&nbsp')];
        h = [h, addTr('snpvd', 'tets', tets, '&nbsp')];
        h = [h, addTr('snpvd', 'tetcu', tetcu, '&nbsp')];   
        h = [h, addTr('Обмотка возбуждения')];
        h = [h, addTr('snpvd', 'wcu2', wcu2)];
        h = [h, addTr('snpvd', 'tetep', tetep)];
        h = [h, '</table>'];
        h = [h, break_page];
    else
        h = [hi break_page];
    end
end