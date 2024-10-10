function H = mainInfo(hi, st, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    brr = join(repmat('&nbsp',1,2),'');
    H = [hi, '<table class="cwdtable">\n'];
    H = [H, addTr('boldtype', 'Основные данные')];
    H = [H, addTr('lnpvd', 'tipmas', strrep(genType, "_", "/"))];
    H = [H, listTr('lnpvd', st, sfile, 'snom', 'tau')];    
    H = [H, addTr('left', 'Сердечник статора:')];
    H = [H, listTr('snpvd', st, sfile, 'di', 't2', [brr brr])];    
    if cc ~= 0 
        bc_cc_dc = sprintf('%i+%i/%i', bc, cc, dc);
        H = [H, addTr('snpvd', 'bcspec', bc_cc_dc, [brr brr])]; 
    else
        H = [H, addTr('snpvd', 'bc', bc, [brr brr])];         
    end       
    H = [H, listTr('snpvd', st, sfile, 'bz', 'cd', [brr brr])];
    H = [H, '</table>'];     
    H = [H, '<div style="break-after:page"></div>\n'];
    
    H = [H, '<table class="cwdtable">\n'];    
    H = [H, addTr('left', 'Обмотка статора:')];
    H = [H, listTr('snpvd', st, sfile, 'i1', 'bet', brr)]; 
    
    H = [H, addTr('left', [brr 'обмоточные коэффициенты:'])];
    H = [H, listTr('snpvd', st, sfile, 'fq', 'fw', brr)]; 
    
    H = [H, addTr('left', 'Полюс:')];
    H = [H, listTr('snpvd', st, sfile, 'delta', 'taum', brr)]; 
    
    H = [H, addTr('left', 'Полюсный башмак:')];
    H = [H, listTr('snpvd', st, sfile, 'hp', 'elu', brr)]; 
    H = [H, '</table>'];   
    H = [H, '<div style="break-after:page"></div>\n'];
    
    H = [H, '<table class="cwdtable">\n'];
    H = [H, addTr('left', 'Полюсный сердечник:')];
    H = [H, listTr('snpvd', st, sfile, 'hm', 'qm', brr)];  
    
    H = [H, addTr('left', 'Обмотка возбуждения:')];
    H = [H, listTr('snpvd', st, sfile, 'we', 're75', brr)]; 
    
    H = [H, addTr('left', 'Демпферная обмотка:')];
    H = [H, listTr('snpvd', st, sfile, 'nb', 'cr', brr)]; 
    H = [H, '</table>'];    
    H = [H, '<div style="break-after:page"></div>\n'];
end