function soon(sfile, genType)
    load(sfile, '*');
    struct = open(sfile); 
    not = struct.not; 
    qr = struct.qr; 
    ga = struct.ga;
    bm = struct.bm;
    xl = struct.xl;
    
    % Data for printing values in tabl. at U = 1.
    bpin = bpi(jnom);
    bm12n = bm12(jnom);
    awt1n = awt1(jnom);
    awt2n = awt2(jnom);
    awt3n = awt3(jnom);
    bdeln = bdel(jnom);
    bz3n = bz3(jnom);
    ban = ba(jnom);
    awzn = awz(jnom);
    awan = awa(jnom);
    bmin = bmi(jnom);
    awmn = awm(jnom);
    awzwn = awzw(jnom);
    awawn = awaw(jnom);
    awmwn = awmw(jnom);
    awcn = awc(jnom);
    awjn = awj(jnom);
    awsumn = awsum(jnom);
    hhin = hhi(jnom);
    k1 = (-0.55+1.375*al)*(1.5/delmm)^0.4;
    k2 = 0.3125*(1.07-al)*(deltau/0.03)^0.85;
    kq = k1+k2;
    kaq = kq;
    xad = kad*xmd;
    xaq = kq*xad*(1.+dkd)/2.;

    % Calculating x0
    b32b = (3.*bet-2.)/fb2;
    q3q = (1./3./q)^2;
    b23 = bet-2./3.;
    x0 = 0.83*elt*awf1/(fb2*3.*q)*((bet-0.555)*h1/b1+0.2)  ...
        +0.45*xmd*b32b*(q3q+0.39*b23-b23^2+0.037);

    % Calculating xd,xq and so on
    xd = xl+xad;
    xq = xl+xaq;
    xf = kad*xad*(fkf+0.2*awdn*elt*lamsig/(fi1n*10.^8));
    xfras = xf-xad;
    xd1 = xd-xad*xad/xf;
    xq1 = xq;
    xp = 0.8*xd1;

    % Symplified Swedish diagram for rated field winding current
    awtnom = awsum(nhhh+1);
    vw = 0.8*xd1*(awsumn-awdn); % it was committed debug line
    awk = awad+xl*awdn;
    dlab = awk+vw;
    dlan = awtnom-awsumn;
    dlbn = sqrt(dlab*dlab+dlan*dlan);
    dlo1n = dlbn/2;
    cosal = dlan/dlbn;
    dlo2n = dlo1n/cosal;
    dlao2 = awtnom-awsumn-dlo2n;
    ficos = acos(cosnom);
    cotfi = cos(ficos)/sin(ficos);
    faca = 1.+cotfi*cotfi;
    facb = -2.*dlao2;
    facc = dlao2*dlao2-dlo2n*dlo2n;
    xah = (-facb+sqrt(facb*facb-4*faca*facc))/2./faca;
    yah = cotfi*xah;
    dlah = sqrt(xah*xah+yah*yah);
    dloh = sqrt((awsumn+xah)^2+yah^2);

    % Field winding current and losses
    for j = 1:15
        dloh = sqrt((awsumn+kvd(j)*xah)^2+(kvd(j)*yah)^2);
        dlob = sqrt(awsumn^2+(kvd(j)*dlab)^2);
        ied(j) = dloh/2/we;
        ie1d(j) = dlob/2/we;
        pqwed(j) = (ied(j)^2*re75+2.*ied(j))*1.e-3;
        pqwe1d(j) = (ie1d(j)^2*re75+2.*ie1d(j))*1.e-3;
    end
    pje = ied(12)/qe;
    pqwen = pqwed(12);
    if de ~= 0, pqwen = 0; end
    awnom = ied(12)*2*we;

    % OKZ
    okz = awsumn/awk;

    % Static overloadness
    stover = awnom/awk/cosnom*(1+1/6*...
        awsumn/awnom/sqrt(1+1.5*(awnom/awsumn)^2));

    % Charge capacity
    qczar = 0.8*snom/xd;

    % Conductivity of damper winding
    if nz ~= 0, lamz = 1.7+2.8*hsz/bs1; end
    lamot = 1.7+2.8*hs/bs;
    lamsr = (nz*lamz+(nb-nz)*lamot)/nb;
    xkd = 0.51*awf1*(di/(2.*n2p)+lamsr*elt/nb);
    xkq = 0.75*xkd;
    xd2 = xl+xkd*(xd1-xl)/(xkd+xd1-xl);
    xq2 = xl+xaq*xkq/(xaq+xkq);
    xd2p = xd2;
    xq2p = xq2;
    x2 = 0.5*(xd2+xq2);

    % Active resistanses
    rf = 333./fn*awf1*kad*kad*ele/we/qe;

    % Calculating rkd,rkq
    qbekv = pi*ddemek^2/4.;
    rster = elb*cb/nb/qbekv;
    rsegm = di*cr/(n2p/2.*qr);
    rkd = 3550./fn*awf1*(rster+0.2*rsegm);
    rkq = 2660./fn*awf1*(rster+0.4*rsegm);

    % Time constants
    td01 = xf/rf/omeg;
    tc01 = (xad+xkd)/rkd/omeg;
    tq01 = (xaq+xkq)/rkq/omeg;
    td1 = xd1/xd*td01;
    td02 = (xkd*xfras+xad*xkd+xfras*xad)/rkd/(xfras+xad)/omeg;
    td2 = (xfras*xad*xl+xfras*xd*xkd+xad*xl*xkd)/...
        omeg/(xfras*xd+xad*xl)/rkd;
    tq2 = xq2/xq*tq01;

    % 3 Harmonic of flux
    a3m = 3.8*al*(1.-7.8*deltau)*(0.25+4.55*...
        deltau+(1.5-delmm)*0.07)-0.7;
    a1 = 1.04-0.82*al+1.84*(delmm-1.5)*...
        (al-0.45)/delmm^(al-0.35);
    a2 = 0.28-1.8*deltau+(delmm-1.5)*...
        (deltau+0.25*delmm)*1.2/(delmm)^1.5;
    a30 = a1*a2;
    b3 = bz2*(a3m*xd+1.27*xad*a30);

    % The no load losses
    pqa = 1.3*ga*ppa*ban^2*10.^(-3)*(fn/50.)^1.3*1.e3;
    pqz = 1.7*gz*ppz*bz3n^2*10.^(-3)*(fn/50.)^1.3*1.e3;
    pqp0 = 0.5*dbash*((dkd1-1.)*bdeln*t)^2* ...
        n2p*qd1/1000.*(npaz*obmin/10000.)^1.5*10.^(-3);
    pqt = (1.55*c+5.*c1)*n2p*tau/1000.*...
        (awsumn/20000.)^2*(fn/50.)^1.3;

    % Eddy losses in demper winding on no-load and rated voltage
    al11 = 1.;
    al21 = 0.4;
    at2t1 = 2.*pi*(t2zak*nz+t2ot*not)/nb/t;
    fz1 = npaz*obmin/60.;
    fil1 = 0.0886*ddemf*sqrt(fz1/50.*0.0175/root);
    fil2 = fil1*sqrt(2.);
    rrrb = 0.2*rsegm/rster;
    fkfz1 = (fil1-1.)*elp/elb+1.+rrrb;
    fkfz2 = (fil2-1.)*elp/elb+1.+rrrb;
    hsbs = hs*not/bs;
    if nz ~=  0, hsbs = (hs*not/bs+hsz*nz/bs1)/nb; end
    dlpz1 = 0.66/fkfz1+hsbs+0.2;
    dlpz2 = 0.66/fkfz2+hsbs+0.2;
    dlam1 = (1.-cos(at2t1))*al11/(dlamd+2.*dlpz1*(1.-cos(at2t1)));
    dlam2 = (1.-cos(2.*at2t1))*al21/(dlamd+2.*dlpz2*(1.-cos(2.*at2t1)));
    pqc = 2.5*(n2p/2)*nb/qbekv*elb*cb*root  ...
        *(t*(dkd1-1.)*dkd1*bdeln*10000./2000.)^2*  ...
        (fkfz1*dlam1^2+fkfz2*dlam2^2)*10.^(-3);
    pqfehh = pqa+pqz+pqp0+pqt+pqc;

    % Short circuit losses
    pqmed = 3.*ifaz^2*ra75*10.^(-3);
    pqf = pqmed*(gkc*mtr+gks);
    pqtkz = 10.7*ppz*(b3/10000.)^1.25*gz*(fn/50.)^1.3;
    pqpz = gk1*(xad*n2p/npaz/(dkd1-1.))^2*pqp0;
    w2 = 1.15*(as/1000.*tau/100.)^2.5;
    pqed = 3.5*di*tau*w2*(fn/50.)^1.5*10.^(-4);

    % Short circuit poles losses
    % Curve fig.15 calculating
    nuzl = 11;
    stepfb = 0.01;
    fnach = 0.9;
    fksig = tabint(fksi,fbeta,nuzl,fnach,stepfb);

    % fksig - current value of ksig
    fhz = 6.*fn;
    f300kd = ddemf*0.1*sqrt(0.785)*sqrt(fhz/fn);
    dlams = 0.66/f300kd+hsbs+0.2;
    pqph = nb/qbekv*3.7*(n2p/2)*elb*cb*f300kd*  ...
        (tau/10./delta/dkd)^2*((fksig*xad*awdn/2000.)/  ...
        (dlamd/(1.-cos(delsig))+2.*dlams))^2.;
    pqdob = pqf+pqtkz+pqpz+pqph+pqed;
    pqkz = pqmed+pqdob;
    pqkzgr = pqkz;
    if nh ~= 0, pqkzgr = pqtkz+pqpz+pqph+pqed; end

    % Ventilatoin losses
    vms = pi*di*obmin/60*1.e-3;
    tetwoz = 27.;
    if raswoz == 0 
        raswoz = (pqfehh+pqkzgr+pqwen)/  ...
            (tetwoz*1.1-0.1124*1.4*(vms/10)^2);
    end
    if raswoz == 0, raswoz = int32(raswoz); end
    if raswoz == 0, raswoz = raswoz+1; end
    pqv = 0.1124*1.4*(vms/10)^2*raswoz;
    if nr == 0, pqv = 0; end
    if fpp ~= 0
        pqpodp = qwpp*grt/fpp;
    else
        pqpodp = 0; %% !NB! pqpodp = 0 is added
    end
    pqpost = pqfehh+pqv+pqpodp+qwps;
    tetwoz = (pqfehh+pqkzgr+pqv+pqwen)/1.1/raswoz;
    if nr == 0, raswoz = 0.; end
    if nr == 0, tetwoz = 0.; end

    % Cycle of kpd calculating
    for j = 1:15
        pkzkvd(j) = pqkz*kvd(j)^2;
        pqpol(j) = pqpost+pkzkvd(j)+pqwed(j)+pqsed(j);
        pq1pol(j) = pqpost+pkzkvd(j)+pqwe1d(j)+pqse1d(j);
        kpdd(j) = (1.-pqpol(j)/(snom*cosnom*kvd(j)+pqpol(j)))*100.;
        kpd1d(j) = (1.-pq1pol(j)/(snom*kvd(j)+pq1pol(j)))*100.;
    end
    r1 = pqkz*rast/pqmed;
    ta = x2/rast/omeg;

    % Calculating R2
    f100kd = 0.125*ddemek;
    rkd1 = f100kd*rkd;
    rkq1 = f100kd*rkq;
    tausr = pi/n2p*(di-2.*delta-2.*hp-hm);
    aleta = 2.*pi*sqrt(2.*brotsr/(tausr-bm))*sqrt(1.*fn*2./0.0217/10.^5);
    eta = aleta*arot*0.1;
    fieta = eta*(sinh(2.*eta)+sin(2.*eta))/(cosh(2.*eta)-cos(2.*eta));
    psieta = 2.*eta*(sinh(eta)-sin(eta))/(cosh(eta)+cos(eta));
    f100kf = fieta+(we*we-1.)/3.*psieta;
    rf1 = f100kf*rf;
    skol = 2.;
    r1xl = complex(r1,xl);
    xadc = complex(0.,xad);
    rf1s = rf1/skol;
    rf1xc = complex(rf1s,xfras);
    rkd1s = rkd1/skol;
    rkd1xc = complex(rkd1s,xkd);
    xaqc = complex(0.,xaq);
    rkq1s = rkq1/skol;
    rkq1xc = complex(rkq1s,xkq);
    zd2 = r1xl+(xadc*rf1xc*rkd1xc)/(xadc*rf1xc+ xadc*rkd1xc+rf1xc*rkd1xc);
    zq2 = r1xl+(xaqc*rkq1xc)/(xaqc+rkq1xc);
    r2d = real(zd2);
    xd2 = imag(zd2);
    r2q = real(zq2);
    xq2 = imag(zq2);
    r2 = (r2d+r2q)/2.;

    % Heat calculation of stator
    wfe = (pqa+pqz+pqtkz)*1.e5/(pi*di*el);
    wcu = as*jja*fildk/4200.;
    wi = wcu*t/2/(b1+h);
    eltvms = elt/10./tau;
    cnach = 0.000001;
    stepc = 0.5;
    nuzl = 13;
    ctek = tabint(fcfe,eltvms,nuzl,cnach,stepc);
    cfe = ctek;
    if eltvms <= 1, cfe = 133.; end
    alffe = (1.+0.0667*vms)/cfe;
    tetfe = (wcu+wfe)/alffe;
    udli = 0.016;
    if tipiz == 1, udli = 0.022; end
    teti = wi*diz/udli;
    cnach = 10.;
    stepc = 10.;
    nuzl = 8;
    ctek = tabint(fcs,vms,nuzl,cnach,stepc);
    cs = ctek;
    alfs = (1.+0.047*vms)/cs;
    tets = wi/alfs;
    tetcu = ((tetfe+teti)*el+(teti+tets)*(0.5*ela-el))/0.5/ela;

    % Heat calculation of rotor
    wcu2 = pje*pje*brotsr/400.;
    eke = 1./(elt/tau/10.)^(1./2.5);
    cnach = 10.;
    stepc = 10.;
    nuzl = 7;
    ctek = tabint(fw2rad,vms,nuzl,cnach,stepc);
    if nr == 0
        ctek = tabint (fw2aks,vms,nuzl,cnach,stepc);
    end
    w2f = ctek;
    alfe = w2f*eke;
    tete = wcu2/alfe;
    tetep = tete;

    % Rotor voltage calculating
    for j=1:15
        if kqe == 1, tete = 55.; end
        if de ~= 0, tete = 20.; end
        trotfi = tete*(ied(j)/ied(12))^2;
        trot1 = tete*(ie1d(j)/ied(12))^2;
        trrfi = trotfi+thol;
        trr1 = trot1+thol;
        if de ~=  0, trrfi = 50.; end
        if de ~=  0, trr1 = 50.; end
        rtefi = re15*(1.+0.004*(trrfi-15.));
        rte1 = re15*(1.+0.004*(trr1-15.));
        urotfi(j) = ied(j)*rtefi;
        urot1(j) = ie1d(j)*rte1;
    end
    
    fprintf("Calculation hydro-generator %s is done.\n", ...
        strrep(genType, "_", "/"));   
    clear('struct');
    save(sfile);
    fclose('all');
end