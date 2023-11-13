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
    h = [h, '</table>'];
    h = [h, '<div style="break-after:page"></div>\n'];
end