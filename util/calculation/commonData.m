function commonData(filecommondata) 
    rwsnmb = 15;
    pqsed = zeros(rwsnmb,1); pqse1d = zeros(rwsnmb,1); 
    pkzkvd = zeros(rwsnmb,1); pqpol = zeros(rwsnmb,1); 
    pq1pol = zeros(rwsnmb,1); kpdd = zeros(rwsnmb,1);
    kpd1d = zeros(rwsnmb,1); pqwe1d = zeros(rwsnmb,1); 
    pqwed = zeros(rwsnmb,1); kvd = zeros(rwsnmb,1); 
    ie1d = zeros(rwsnmb,1); ied = zeros(rwsnmb,1);
    ggk1 = [0.3,0.2,0.15];
    kqm = [1.,0.966,0.96,0.958,0.957,0.956];
    calger = [0.4,0.46,0.54,0.63,0.74,0.84,0.96,1.12,1.31,1.5,  ...
        1.7,1.86,2.0,2.14,2.26,2.37,2.46,2.54,2.61,2.67,2.73,2.78,  ...
        2.83,2.87,2.92,2.96];
    fksi = [0.045,0.04,0.035,0.03,0.02,0.015,0.01,0.0101,0.02,0.04,0.055];
    fcfe = [133,133,133,136,139,144,152,164,179,198,223,252,286];
    fcs = [265,515,765,980,1210,1420,1610,1790];
    fw2aks = [0.0096,0.016,0.019,0.0206,0.0215,0.022,0.02235];
    fw2rad = [0.0078,0.0132,0.0162,0.0182,0.0192,0.02,0.02065];
    uuf = [0.5,0.75,1.0,1.15,1.25,1.3,1.35,1.4];
    bh1 = importBH('BH1.dat');
    bh2 = importBH('BH2.dat');
    h3 = importBH('H3.dat');
    kvd = [0.1,0.2,0.25,0.3,0.4,0.5,0.6,0.7,0.75,0.8,0.9,1,1.1,1.15,1.2];
    save(filecommondata);
end