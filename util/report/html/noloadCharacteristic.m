function h = noloadCharacteristic(hi, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', 'Характеристика холостого хода')];
    h = [h, addTr('Значения при относительном напряжении')];
    trc = '<tr class="heighttr">\n';
    h = [h trc addTd('') addTd('%.2f', uuf) '</tr>']; 
    h = [h trc addTd('1') addTd('%.0f', uuf*uftn) '</tr>'];
    h = [h trc addTd('2') addTd('bdeln', bdel) '</tr>'];    
    h = [h trc addTd('3') addTd('bz3n', bz3) '</tr>'];    
    h = [h trc addTd('4') addTd('ban', ba) '</tr>'];    
    h = [h trc addTd('5') addTd('awzn', awz) '</tr>'];  
    h = [h trc addTd('6') addTd('awzn', awa) '</tr>'];    
    h = [h trc addTd('7') addTd('sigmn', sigm) '</tr>'];    
    h = [h trc addTd('8') addTd('sigpn', sigp) '</tr>'];    
    h = [h trc addTd('9') addTd('bmin', bmi) '</tr>'];    
    h = [h trc addTd('10') addTd('bpin', bpi) '</tr>'];    
    h = [h trc addTd('11') addTd('bm12n', bm12) '</tr>'];    
    h = [h trc addTd('12') addTd('awt1n', awt1) '</tr>'];    
    h = [h trc addTd('13') addTd('awt3n', awt3) '</tr>'];    
    h = [h trc addTd('14') addTd('awt2n', awt2) '</tr>'];    
    h = [h trc addTd('15') addTd('awmn', awm) '</tr>'];    
    h = [h trc addTd('16') addTd('awdn', awd) '</tr>'];    
    h = [h trc addTd('17') addTd('awzwn', awzw) '</tr>'];    
    h = [h trc addTd('18') addTd('awawn', awaw) '</tr>'];    
    h = [h trc addTd('19') addTd('awmwn', awmw) '</tr>'];    
    h = [h trc addTd('20') addTd('awcn', awc) '</tr>'];    
    h = [h trc addTd('21') addTd('awjn', awj) '</tr>'];    
    h = [h trc addTd('22') addTd('awsumn', awsum) '</tr>'];    
    h = [h trc addTd('23') addTd('hhin', hhi) '</tr>'];    
    h = [h trc addTd('24') addTd('%.2f', hhi/hhi(3)) '</tr>'];
    h = [h '</table>'];
    
    h = [h, '<table class="cwdtable">\n'];
    h = [h, addTr('lnpvd', 'awapr', awapr)];
    h = [h, addTr('lnpvd', 'awad', awad)];
    h = [h, addTr('lnpvd', 'awk', awk)];    
    h = [h, '</table>'];
    
    h = [h, '<div style="break-after:page"></div>\n'];
end