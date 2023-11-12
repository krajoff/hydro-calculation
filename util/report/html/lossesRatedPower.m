function h = lossesRatedPower(hi, sfile, nl, prc)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    dmn = dimension();

    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', ['Потери и КПД при номинальной нагрузке '...
        sprintf('%i', pnom) ' ' dmn('pnom')])];
    h = [h, addTr('Потери холостого хода')];
    h = [h, addTr('snpvd', 'pqa', pqa)];
    h = [h, addTr('snpvd', 'pqz', pqz)];
    h = [h, addTr('snpvd', 'pqp0', pqp0)];
    h = [h, addTr('snpvd', 'pqt', pqt)];
    h = [h, addTr('snpvd', 'pqc', pqc)];
    h = [h, addTr('snpvd', 'pqfehh', pqfehh)];
    h = [h, addTr('snpvd', 'pqv', pqv)];
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
    h = [h, addTr('lnpv', 'fildk', fildk, '&nbsp')];
    h = [h, addTr('lnpv', 'gkc', gkc, '&nbsp')];
    h = [h, addTr('lnpv', 'gks', gks, '&nbsp')];
    h = [h, addTr('snpvd', 'pqtkz', pqtkz)];
    h = [h, addTr('lnpvd', 'b3', b3*10^-4)];
    ul = [nl('a3m'), ' ', prc('a3m'), '; ', ...
          nl('a30'), ' ', prc('a30')];     
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