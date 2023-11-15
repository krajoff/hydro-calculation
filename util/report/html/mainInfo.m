function H = mainInfo(hi, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    struct = open(sfile); 
    cd = struct.cd;
    
    H = [hi, '<table class="cwdtable">\n'];
    H = [H, addTr('boldtype', 'Исходые данные')];
    H = [H, addTr('lnpvd', 'tipmas', strrep(genType, "_", "/"))];
    H = [H, addTr('lnpvd', 'snom', snom)];
    H = [H, addTr('lnpvd', 'cosnom', cosnom)];
    H = [H, addTr('lnpvd', 'un', un)];
    H = [H, addTr('lnpvd', 'ifaz', ifaz)];
    H = [H, addTr('lnpvd', 'fn', fn)];
    H = [H, addTr('lnpvd', 'obmin', obmin)];
    H = [H, addTr('lnpvd', 'n2p', n2p)];
    H = [H, addTr('lnpvd', 'ce', ce)];
    H = [H, addTr('lnpvd', 'tau', tau)];
    
    H = [H, addTr('left', 'Сердечник статора')];
    H = [H, addTr('snpvd', 'di', di, '&nbsp')];
    H = [H, addTr('snpvd', 'da', da, '&nbsp')];
    H = [H, addTr('snpvd', 'ks', ks, '&nbsp')];
    H = [H, addTr('snpvd', 'elt', elt, '&nbsp')];
    H = [H, addTr('snpvd', 'el', el, '&nbsp')];
    H = [H, addTr('snpvd', 'elef', elef, '&nbsp')];
    H = [H, addTr('snpvd', 'del', del, '&nbsp')];
    H = [H, addTr('snpvd', 'ef', ef, '&nbsp')];
    H = [H, addTr('snpvd', 'nr', nr, '&nbsp')];
    H = [H, addTr('snpvd', 'brad', brad, '&nbsp')];
    H = [H, addTr('snpvd', 'qa', qa, '&nbsp')];
    H = [H, addTr('snpvd', 'ha', ha, '&nbsp')];
    H = [H, addTr('snpvd', 'ha1', ha1, '&nbsp')];
    H = [H, addTr('snpvd', 'la', la, '&nbsp')];
    H = [H, addTr('snpvd', 'npaz', npaz, '&nbsp')];
    H = [H, addTr('snpvd', 't', t, '&nbsp')];
    H = [H, addTr('snpvd', 't3', t3, '&nbsp')];
    H = [H, addTr('snpvd', 't2', t2, '&nbsp')];
    
    bc_cc_dc = sprintf('%i+%i/%i', bc, cc, dc);
    H = [H, addTr('snpvd', 'bcspec', bc_cc_dc, '&nbsp')];
    
    H = [H, addTr('snpvd', 'bz', bz, '&nbsp')];
    H = [H, addTr('snpvd', 'bz13', bz13, '&nbsp')];
    H = [H, addTr('snpvd', 'bz12', bz12, '&nbsp')];
    H = [H, addTr('snpvd', 'b1', b1, '&nbsp')];
    H = [H, addTr('snpvd', 'h', h, '&nbsp')];
    H = [H, addTr('snpvd', 'h1', h1, '&nbsp')];
    H = [H, addTr('snpvd', 'qz3', qz3, '&nbsp')];    
    H = [H, addTr('snpvd', 'qz2', qz2, '&nbsp')];
    H = [H, addTr('snpvd', 'cd', cd, '&nbsp')];
    H = [H, addTr('left', 'Обмотка статора')];
    H = [H, addTr('left', 'Полюс')];
    H = [H, addTr('left', 'Обмотка возбуждения')];

    H = [H, '</table>'];
    
    H = [H, '<div style="break-after:page"></div>\n'];
end