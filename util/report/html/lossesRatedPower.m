function h = lossesRatedPower(hi, st, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');

    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', ['Потери и КПД при номинальной нагрузке '...
        sprintf('%i', pnom) ' ' st.dmn('pnom')])];
    h = [h, addTr('Потери холостого хода')];
    h = [h, listTr('snpvd', st, sfile, 'pqa', 'pqv')];
    h = [h, addTr('lnpvd', 'raswoz', raswoz, '&nbsp')];
    h = [h, addTr('lnpvd', 'tetwoz', tetwoz, '&nbsp')];
    h = [h, addTr('snpvd', 'pqpodp', pqpodp)];
    h = [h, addTr('snpvd', 'qwpp', qwpp, '&nbsp')];
    h = [h, addTr('lnpvd', 'fpp', fpp, '&nbsp')];
    h = [h, addTr('lnpvd', 'grt', grt, '&nbsp')];
    h = [h, addTr('snpvd', 'qwps', qwps)];
    h = [h, addTr('lnpvd', 'pqpost', pqpost)];
    
    h = [h, addTr('Потери короткого замыкания')];
    h = [h, addTr('snpvd', 'pqmed', pqmed)];
    h = [h, addTr('snpvd', 'pqf', pqf)];
    h = [h, addTr('snpv', 'fildk', fildk, '&nbsp')];
    h = [h, addTr('snpv', 'gkc', gkc, '&nbsp')];
    h = [h, addTr('snpv', 'gks', gks, '&nbsp')];
    h = [h, addTr('snpvd', 'pqtkz', pqtkz)];
    h = [h, addTr('lnpvd', 'b3', b3*10^-4)];
    ul = [st.ns('a3m'), ' ', st.prc('a3m'), '; ', ...
          st.ns('a30'), ' ', st.prc('a30')];     
    ul = sprintf(ul, a3m, a30);
    h = [h, addTr('ultd', ul)];
    h = [h, addTr('left', 'На поверхности полюсных башмаков:')];
    h = [h, addTr('snpvd', 'pqpz', pqpz, '&nbsp')];
    h = [h, addTr('snpvd', 'pqph', pqph, '&nbsp')];
    h = [h, addTr('snpvd', 'pqed', pqed)];
    h = [h, addTr('snpvd', 'pqdob', pqdob)];
    h = [h, addTr('lnpvd', 'pqkz', pqkz)];

    h = [h, addTr('Потери на возбуждение')];
    h = [h, addTr('snpvd', 'pqwed', pqwed(12))];
    h = [h, addTr('snpvd', 'pqsed', pqsed(12))];
    
    h = [h, addTr('lnpvd', 'pqpol', pqpol(12))];
    h = [h, addTr('lnpvd', 'kpdd', kpdd(12))];
    h = [h, '</table>'];
    h = [h, '<div style="break-after:page"></div>\n'];
end