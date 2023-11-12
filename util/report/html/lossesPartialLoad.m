function h = lossesPartialLoad(hi, sfile, nl, prc)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    dmn = dimension();
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', ['КПД при частичных нагрузках ' ...
        'и коэффициенте мощности ' sprintf('%.3f', cosnom)])];
    
    head = {'Постоянные', 'Короткое замыкание', 'На возбуждение', ...
        'Система возбуждения', 'Полные', 'Ток возбуждения', ...
        'Напр.возбуждения', 'КПД'};
    trc = '<tr class="heighttr">\n';
    h = [h trc addTd('Потери') addTd(head) '</tr>']; 
    

    
    
    
    
    
    
    
    
    
    h = [h, '</table>'];
    h = [h, '<div style="break-after:page"></div>\n'];
end