function htmlReport(sfile, gentype)
    file = fullfile(pwd, 'results', ['solution_', gentype, '.html']);
    [st, list] = structure();
    feature('DefaultCharacterSet', 'windows-1251');

    h = headHtml;
    h = mainInfo(h, sfile);
    h = magneticCircuitCalculation(h, sfile, st.nl, st.ns, st.prc);
    h = noloadCharacteristic(h, sfile);
    h = inductancesTime(h, sfile, st.ns, st.prc);
    h = lossesRatedPower(h, sfile, st.nl, st.prc, st.dmn);
    h = lossesPartialLoad(h, sfile);
    h = weightCharacteristic(h, sfile);
    
    fid = fopen(file, 'W', 'native', 'windows-1251');
    fprintf(fid, h);
    fclose(fid);
end