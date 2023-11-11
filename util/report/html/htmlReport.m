function htmlReport(sfile, gentype)
    file = fullfile(pwd, 'results', ['solution_', gentype, '.html']);
    nl = notationsLong();
    sl = notationsShort();
    prc = precision();
    feature('DefaultCharacterSet', 'windows-1251');

    h = headHtml;
    h = magneticCircuitCalculation(h, sfile, nl, sl, prc);
    h = breakPage(h);
    h = noloadCharacteristic(h, sfile);
    h = breakPage(h);
    h = inductancesTime(h, sfile, nl, sl, prc);
    
    fid = fopen(file, 'W', 'native', 'windows-1251');
    fprintf(fid, h);
    fclose(fid);
end