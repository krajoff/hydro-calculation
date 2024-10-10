function htmlReport(sfile, gentype)
    file = fullfile(pwd, 'results\html', ['solution_', ...
        char(strrep(gentype, "/", "_")), '.html']);
    st = structure();
    feature('DefaultCharacterSet', 'windows-1251');

    h = headHtml;
    h = mainInfo(h, st, sfile);
    h = magneticCircuitCalculation(h, st, sfile);
    h = noloadCharacteristic(h, sfile);
    h = inductancesTime(h, st, sfile);
    h = lossesRatedPower(h, st, sfile);
    h = lossesPartialLoad(h, sfile);
    h = weightCharacteristic(h, st, sfile);
    h = temperatureCalculation(h, st, sfile);
    
    fid = fopen(file, 'W', 'native', 'windows-1251');
    fprintf(fid, h);
    fclose(fid);
end