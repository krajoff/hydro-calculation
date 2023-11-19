function firstStep(sfile)
    load(sfile, '*');
    if cosfi == 1, cosfi = 0.9999999; end
    nhhh = 7;
    nuzls = nuzs;
    nuzlp = nuzp;
    nuzlz = nuzz;
    rob = 1.75*10.^(-5);
    root = 1.75*10.^(-2);
    in = sn/sqrt(3.)/un*1.e+3;
    ia = in/na;
    i1 = ia*ns;
    q1 = qo*no+nh*qh;
    jja = ia/q1;
    en = nf*60/n2p*2;
    bc = fix(nz/(3*n2p));
    cc = int32(nz-bc*3*n2p);
    dc = int32(3*n2p);
    mdel = 0;
    if cc ~= 0 
%         for j = 1:cc
%           if (cc/j*j) == cc && (dc/j*j) == dc, mdel = j; end
%         end
        mdel = rem(dc,cc);
        cc = cc/mdel;
        dc = dc/mdel;
    end
    q = nz/3./n2p;
    if y-3*q <= 0 
        bet = y/3/q;
    else
        bet = 2-y/3/q;
    end
    w = nz*ns/6./na;
    tau = pi*di/n2p/10.;
    odt = d/tau/10.;
    al = bp/tau/10.;
    t = pi*di/nz;
    t3 = pi*(di+2./3.*h1)/nz;
    t2 = pi*(di+h1)/nz;
    as = ia*ns/t*10.;
    bz = t-(b1+0.5);
    bz13 = t3-(b1+0.5);
    bz12 = t2-(b1+0.5);
    el = elt-bk*nk;
    if del-0.35 > 0
        ef = 0.95;
    else 
        ef = 0.90;
    end
    elef = ef*el;
    qz3 = 3.*q*elef*bz13/100;
    qz2 = 3.*q*elef*bz12/100;
    lz = 2.*h1/10;
    gz = n2p*qz2*h1*7.8*1.e-7;
    if els == 0
        els = .02*un+15.5*tau+150.;
    end
    ela = 2.*(elt+els);
    ra15 = w*ela/(57.*q1*na)*1.e-3;
    if nh > 0
        ra50 = 1.14*ra15;
        ra75 = ra50;
        bh = bo;
        bhi = bi;
    else
        ra75 = 1.24*ra15;
    end
    gc = nz*ns*q1*ela/2.*8.9*1.e-9;
    gc1 = gc*9.3/8.9;
    ha = (da-di)/2.-h1;
    ha1 = ha-5.;
    qa = ha1*elef*1.e-2;
    la = pi*(da-ha1)/n2p/10.;
    cd = da*sin(nz1/nz*pi);
    ga = n2p*qa*la*7.8*ha/ha1*1.e-6;
    gs = gz+ga;
    gus = gs/sn*1000.;
    gps = gs/((sn/en)^0.75)*1.e+3;
    dm = d*od;
    rp = di/(2.+8.*di*(dm-d)/bp/bp);
    elo = elt+d;
    qd = bp*elo*1.e-2;
    d1 = d+(dm-d)/3.;
    ld = 2.*d1*0.1;
    if kr == 1, kr1 = 1; end
    if kr == 2 || kr == 3, kr1 = 2; end
    elm1 = elm+elf*kr1;
    lm = 2.*(hm+hp)*.1;
    lj = (pi/n2p*(di-2.*(d+hp+hm)-hj)+hj)*1.e-1;
    save(sfile);
    fclose('all');
end