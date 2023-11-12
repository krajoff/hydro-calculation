function htmlReport(sfile, gentype)
    file = fullfile(pwd, 'results', ['solution_', gentype, '.html']);
    nl = notationsLong();
    sl = notationsShort();
    prc = precision();
    feature('DefaultCharacterSet', 'windows-1251');

    h = headHtml;
    h = magneticCircuitCalculation(h, sfile, nl, sl, prc);
    h = noloadCharacteristic(h, sfile);
    h = inductancesTime(h, sfile, sl, prc);
    h = lossesRatedPower(h, sfile, nl, prc);
    %h = lossesPartialLoad(h, sfile, nl, prc);

    fid = fopen(file, 'W', 'native', 'windows-1251');
    fprintf(fid, h);
    fclose(fid);
end