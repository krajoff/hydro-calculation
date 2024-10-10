function calculation(sfile)
	load(sfile, '*');
    struct = open(sfile); 
	bm = struct.bm;
    db = struct.db; 
	ar = struct.ar;	
	
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
        gcdel = gcd(dc,cc);
        cc = cc/gcdel;
        dc = dc/gcdel;
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
	
	% Field winding
	qeo = ae*be+(ae+aeo)/2.*beo+(ae+ae1)/2.*be1-pi*de*de/4.;
    if be2 == 0, besum = be1+be+beo; else besum = be2; end
    if ah == 0, del22 = 6; else del22 = 25; end
    taum = pi*(di-2.*(d+hp+hm))/n2p-(bm+2.*del22+2.*besum);
    if be2 == 0
        if ele == 0 
            if kr == 2
                ele = 2.*(elm+bm-2.*besum)+pi*(3.*besum+2.*del22);
            elseif kr == 1
                if bm <= 100
                    del2 = 12.5;
                elseif bm > 100 && bm <= 120 
                    del2 = 15;
                elseif bm > 120 && bm <= 150
                    del2 = 20;
                elseif bm > 150 && bm <= 200
                    del2 = 30;
                elseif bm > 200 && bm <= 250
                    del2 = 40;
                end
                ele = 2.*(elm-2.*del2)+pi*(bm+2.*del22+besum);
            elseif kr == 3
                ele = 2.*(bm+elm+2.*elf+2.*be+4.*del22);
                ele2 = 2.*(bm+elm+2.*elf+2.*besum+4.*del22);
            end
        end
    else
        if ele2 == 0 
            ele2 = 2.*(bm+elm+2.*elf+2.*be2+4.*del22);
        end
    end
    if qe ~= 0, kqe = 1; else kqe = 0; end
    if kqe ~= 0 
        re15 = n2p*we*ele/57./qe*1.e-3;
        gce = n2p*we*qe*ele*8.9*1.e-9;
    else
        if ae2 > 0 
            qe2 = ae2*be2;
            re15 = n2p*we/57.*(ele+ele2)/(qeo+qe2)*1.e-3;
            gce = n2p*we*8.9*(qeo*ele+qe2*ele2)*1.e-9/2.;
            qe = (qeo+qe2)/2.;
        else
            qe = qeo;
            re15 = n2p*we*ele/57./qe*1.e-3;
            gce = n2p*we*qe*ele*8.9*1.e-9;
        end
    end
    gm = gc+gce;
    gum = gm/sn*1000.;
    gpm = gm/((sn/en)^0.75)*1000.;
    if de > 0
        re50 = 1.14*re15;
        re75 = re50;
    else
        re75 = 1.24*re15;
    end
	
	% Damper winding
    nbsum = nb+nbz;
    qb = pi*db^2/4;
    qbz = pi*dbz*dbz/4.;
    if elb ~=  0 
        elb1 = elb+ar+4.;
    else
        elb = elp+2*elpf+ar+4.;
    end 
    gb = n2p*(nb*qb+nbz*qbz)*(elb+ar+4.)*8.9*cgb*1.e-9;
    qr = ar*br;
    gr = 2*qr*pi*(di-2.*d-br)*8.9*1.e-9*cgb;
    gd = gb+gr;
    ce = sn/elt/di/di/en*1.e9;
	
	% Winding ration
	fbet = sin(pi/2.*bet);
    if fq == 0 
        if cc-1 < 0
            for m = 1:6
                if m-bc == 0 
                    fq = kqm(m);
                    break;
                end
            end
        elseif cc-1 == 0
            if dc-2 > 0
                fq = .955;
            else
                if bc-2 == 0 
                    fq = .957; 
                elseif bc-2 < 0 
                    fq = .96;
                else
                    fq = .955;
                end
            end
        else
            fq = .955;
        end
    end
    fw = fbet*fq*ksk;
	
	% Concordance block
	snom = sn;
    cosnom = cosfi;
    fn = nf;
    nr = nk;
    brad = bk;
    npaz = nz;
    nss = ns;
    a = na;
    probm = ko;
    dbash = delm;
    not = nb;
    nz = nbz;
    nb = nbsum;
    ddemot = db;
    ddemz = dbz;
    t2ot = tb;
    t2zak = tbz;
    ator = akpst;
    ctor = ckpst;
    ppa = pa;
    ppz = pz;
    ast = ao;
    bst = bo;
    arot = ae;
    brotsr = be1/2.+be+beo;
    if be2 ~= 0, brotsr = (be+be2)/2; end
    if ae2 ~= 0, arot = (ae+ae2)/2; end
    if ae == 0, arot = qe/brotsr; end
    nprow = no;
    ifaz = in;
    uf = un/sqrt(3);
    obmin = en;
    delta = d;
    delmm = od;
    deltau = odt;
    delmax = dm;
    dtau = delta/tau;
    alz = lz;
    ala = la;
    qdel = qd;
    alm = lm;
    alj = lj;
    qb2 = qb;
    qb1 = qbz;
    fbeta = fbet;
    fkfb = 0.732+0.49*al+(1.5-delmm)*(0.12*al*al-0.04);
    fkfb1 = 0.877+0.035*sqrt(dtau*10.)+ 0.14*(1.5-delmm)*deltau^(2./3);
    fkf = fkfb*fkfb1;
    aklc = 1.+0.072*(dtau*10.)^(1./3)*(al/0.7)^3.;
    akld = 1.-0.132*(dtau*10.)^(1./3)+ 0.4*(delmm-1.5)*(deltau+0.005);
    aklam = aklc*akld;
    % if(delmm.eq.1.) gk1=0.3
    % if(delmm.eq.1.5) gk1=0.2     
    gk1 = tabint(ggk1, delmm, 3, 1., 0.5);
    if del == 0.35, ppa = 1.3; end
    if del == 0.35, ppz = 0.66; end
    awapr = 2.12*w*fw*ifaz/(n2p/2.);
    kad = 1.+0.01265/al^4;
	
	% Rated current
	awad = kad*awapr;
    bmiz = 2*bi;
    diz = (b1-bmiz-.3)/2+(bi-bo)/2;
    if ktr == 3 || ktr == 4, diz = (b1-bi-bo)/2; end
    hk = h1-h;
    hdb = (h1+diz+2.*hk)/b1;
    % probm = 0 - wave winding 
    % probm = 1 - lap winding
    fb2 = fbeta^2;
    zbaz = uf/ifaz;
    rast = ra75/zbaz;
    omeg = 2.*pi*fn;
    eps0 = 8.86*10^(-8);
    epsr = 6.;
    d10 = d1*10.;
    dkd1 = (t+d10)/(bz+d10);
    ttr = elt/(nr+1.);
    dkd2 = (ttr+d10)/((ttr-brad)+d10);
    dkd3 = (t2ot+d10)/((t2ot-bs)+d10);
    dkd = dkd1*dkd2*dkd3;
    kpog = 1;
    if nz ~= 0
        iog = as*t2zak*kpog*.1;
        bs1 = 7.6*iog*.0001;
    end

    % Weight of insulation coil double-layer winding
    % size-cross section of insulation in slot
    skorp = 4*deliz*((2.*bi+1.04+deliz) + ...
        ((nprow/2.*ai+1.04)*nss/2.+deliz));
    switk = 1.04*nss*(1.04+2.*bi+nprow*ai/2.);
    siz = skorp+switk;

    % Bar winding xtrans-correction factor due to type of transposition
    xtrans = 1.;
    if qh ~= 0, xtrans = 0; end
    if ktr == 2, xtrans = 2; end
    if ktr == 1 || ktr == 2
        siz = 2.*nss*deliz*(2.*bi+2.*deliz+0.5 ...
        +ai*(nprow/2.+xtrans)+ahi*(nh/2.+1.));
    end

    % gam = 1.55*1.e-3 kg/sm^3 - per unit weight of mikalent
    % gam = 1.8*1.e-3 ....termoreactive type of insulatio
    gam = 1.55*1.e-3;
    if tipiz == 1, gam = 1.85*1.e-3; end
    giz = npaz*ela/2.*gam*1.e-3*siz;
    dlamd = ((t2zak-bs1)*nz+(t2ot-bs)*not)/nb/dkd/d1;
    delsig = 6*pi/10./tau*(nz*t2zak+not*t2ot)/nb;

    % Capacity of stator winding
    if ktr == 1 || ktr == 2
        c3f = 1.2*npaz*elt/diz*(nss*nprow*ast + ...
        4*nss*bst)*eps0*epsr*0.1*1.379;
    end
    if ktr == 3 || ktr == 4
        c3f = 1.2*npaz*elt/diz*(nss*nprow*ast + ...
        4*2*bst)*eps0*epsr*.1*1.379;
    end
    c1f = c3f/3.;

    % Capacity of one phase of double-layer winding
    % without semi-conductive cover, un.lt.3150 V
    prom = (nprow*ast*nss+2.*bst)/diz;
    if un < 3150, c3f = npaz*el*prom*eps0*epsr*0.1; end
    if un < 3150
        c1f = npaz*el*((bet-2/3)*prom+(1-bet)* ...
            (prom+2.*bst/diz))*eps0*epsr*.1;
    end

    % Capacity of rotor winding
    crot = n2p*(50.*tau^1.5+0.242*arot*we*elm)*eps0;

    % Termo-resistance of demper winding
    ddemek = sqrt((ddemz^2*nz+ddemot^2*not)/nb);
    ddemf = ddemek;

    % Ddemek-equivalent diameter of dempfer winding
    terdem = 2.72*nb*nb*ddemf^3*10.^5/(as*tau)^2/sqrt(2.*fn/50.);

    % Data for losses calculating and calc. losses in pole shoes
    af = (elt-elp)/2.;

    % Alger curves for C,C1
    afd1 = -af/d1;

    % ELPF-kozirek(drawing)
    % DELTAP = O  for nonmagneticpole .....
    deltap = 0;
    if prnem == 0, deltap = hp+hm/2; end
    if prnem == 0, elpf = 0; end
    aflp = (elpf-af)/(d1+deltap);
    cnach = -4.5;
    stepc = .5;
    nuzl = 26;
    c = tabint(calger,afd1,nuzl,cnach,stepc);
    c1 = tabint(calger,aflp,nuzl,cnach,stepc);
	
	% Data losses
	% Data for calc. losses in end parts
    elpf2 = elt-elp+2*delta;
    elpf1 = elpf2/2.;
    gamma = elpf1-ator-delta;
    deltac = delta+2*ctor/3.;
    ab = sqrt((elpf1-gamma-ator)^2+(delta+ctor)^2);
    delpf = (gamma*delta+ator*deltac+(elpf1-gamma-ator)*ab)/elpf1;
    if kp ~= 0
        rifk1 = kp/(kp+2*kh1);
        rifk2 = kp/(kp+2*kh2);
    end
    if kp == 0 || kb == 0, rifk1 = 1; end
    if kp == 0 || kb == 0, rifk2 = 1; end
    qd1 = bp*((elp-elu)+elu*7*rifk1/dbash + ...
        elpf2*(delta/(delpf+deltap))^1.5*7*rifk2/dbash)*1e-2;
    if elp >= elt+2*delta, d1 = bp*(elt+2.*delta)*10^(-2); end
    
    % Data for copper losses
    epsil = (elt-0.5*nr*brad)*2/ela;
    bmed = 2*bst/b1;
    hmed = ast*.1*nprow*nss/2;
    hprow = .1*ast;
    mtr = 1;
    if ktr == 1, mtr = 0; end
    if ktr == 4, mtr = .7-.8*bet/nss; end
    snkc = nprow*nss/2;
    if ktr == 2, snkc = snkc/2; end
    if ktr == 3 || ktr == 4, snkc = nss; end
    gks = .107*epsil*bmed^2*hmed^2*hprow^2*(fn/50)^2;
    gkc = .019/(snkc^2)*epsil^2 *bmed^2*hmed^4*(fn/50)^2;

    % Fild factor for water cooled winding
    hcupr = (ah*nh+ast*nprow)*nss/2.;
    if nh ~= 0, v6 = ah^3*nh/hcupr*nss/2*(1-akh*bkh/ah/bst) ...
        *(1-akh^3*bkh/ah^3/bst)+ast^3*nprow/hcupr*nss/2; end
    if nh ~= 0, gks = 0.107*(fn/50.)^2*bmed^2*hcupr^2*v6*1e-4; end
    fildk = 1+mtr*gkc+gks;
    if mtr == 0, gkc = 0.; end
    bkb = t*elt/bz/elef;
    zkzx = bkb-1.;

    % Recall. B for given ZKZX
    for j = 1:nuzlz+1
        bnew(j) = bnachz+stepbz*(j-1)+.4*pi*h3(j)*zkzx;
    end
    for j = 1:nhhh
        if uuf(j) == 1, jnom = j; end
    end
    
    % Open-circuit characteristic
    for ja = 1:nhhh+1
        if ja == nhhh+1 
            [awf1,xl,xmd] = xlcalc(elt,tau,awapr,fi1n,awdn,...
                q,bet,hdb,fb2,probm,nss);
        end
        if ja == nhhh+1, uuf(ja) = 1.+xl; end
        uft = uf*uuf(ja);
        uufvol(ja) = uft;
        if ja == jnom, uftn = uft; end
        fi1 = uft*10.^8/(4.44*fn*w*fw);
        
        % MDS of jarma
        fi = fkf*fi1;
        ba(ja) = fi/(2*qa);
        awt = tabint(bh1,ba(ja),nuzls,bnachs,stepbs);
        ba(ja) = ba(ja)*0.0001;
        awaw(ja) = awt*ala;
        awa(ja) = awt;

        % Air gap MDS
        filam = fi*aklam;
        if ja == jnom, fi1n = fi1*10^(-8); end
        if ja == jnom, fin = fi*10^(-8); end
        if ja == jnom, filamn = filam*10^(-8); end
        bdel(ja) = filam/qdel;
        awd(ja) = .16*dkd*d1*bdel(ja);
        if ja == nhhh+1, xpxl = awapr/awd(jnom)*(kad-1.); end
        bdel(ja) = bdel(ja)*.0001;
        
        % Zubcowaj MDS
        bz3(ja) = filam/(al*qz3);
        if ja == jnom, bz2 = filam/(al*qz2); end
        zkzx = bkb-1;
        awt = zubtab(h3,bnew,bz3(ja),nuzlz);
        bz3(ja) = bz3(ja)*.0001;
        awzw(ja) = awt*alz;
        awz(ja) = awt;
        
        % Rotor pole MDS
        lammb = .37*bm/elm1;
        lamml = .55*hm/(10*tau-bm-pi/n2p*(hm+2*hp+2*delta));
        bp2 = (bp1+bp)/2;
        ap = (bp1-bm)/2;
        dt = hp+delta-bp2*bp2/(4*di);
        cp = 10*tau-bp2-2.*pi*dt/n2p;
        lampl = 1.4*(dt/cp-0.25)+.55*(ap/cp+0.2)-0.4*(ap/cp-0.5)^2;
        lammp = lammb+lamml+lampl;
        lamsig = lampl+lamml/1.53+lammb/2.65;
        sigm(ja) = 1+2*lammp*elm1*(awd(ja)+awaw(ja)+awzw(ja))/(10*fi);
        if ja == nhhh+1
            sigm(ja) = 1+2*lammp*elm1*(awd(ja)+ ...
            awaw(ja)+awzw(ja)+awad)/(10*fi);
        end
        if ja == nhhh+1, sigp(ja) = 1+(sigm(ja)-1)*lampl/lammp; end
        sigp(ja) = 1+(sigm(ja)-1)*lampl/lammp;
        if ja == jnom, sigmn = sigm(ja); end
        if ja == jnom, sigpn = sigp(ja); end
        fim = sigm(ja)*fi;
        if qm == 0 
            if delm == 1.0, kef2 = .95; end
            if delm == 1.2, kef2 = .96; end
            if delm >= 1.4 && delm <= 2, kef2 = .97; end
            if delm == 5.0, kef2 = 1.0; end
            qm = ((kef2*(elm-elu)+elu+elf)*bm)*.01;
        end
        bmi(ja) = fim/qm;
        bpi(ja) = fi*sigp(ja)/qm;
        if ja == nhhh+1, bmi(ja) = fim/qm+xpxl*fin/qm*(10^8); end
        if ja == nhhh+1, bpi(ja) = fi*sigp(ja)/qm+xpxl*fin/qm*(10^8); end
        bm12(ja) = bpi(ja)+3*(bmi(ja)-bpi(ja))/4;
        awt1(ja) = tabint(bh2,bmi(ja),nuzlp,bnachp,stepbp);
        awt2(ja) = tabint(bh2,bm12(ja),nuzlp,bnachp,stepbp);
        awt3(ja) = tabint(bh2,bpi(ja),nuzlp,bnachp,stepbp);
        awm1 = (awt1(ja)+4*awt2(ja)+awt3(ja))/6;
        awmw(ja) = awm1*alm;
        awm(ja) = awm1;
        bpi(ja) = bpi(ja)*.0001;
        bm12(ja) = bm12(ja)*.0001;

        % Stick of rotor with pole 
        % (2 sticks of 0.15 mm. give 0.16*0.15*2=0.05)
        awc(ja) = 0.05*bmi(ja);
        bmi(ja) = bmi(ja)*.0001;

        % Rotor armature(for auxilary gen.)
        if qj ~= 0
            bj = fim/(2.*qj);
            % QJ- from drawing(qj=0. for main generator)
            awt = tabint(bh2,bj,nuzlp,bnachp,stepbp);
            awj(ja) = awt*alj;
        else
            awj(ja) = 0;
        end
        % Summar MDS 
        awsum(ja) = awd(ja)+awaw(ja)+awzw(ja)+awmw(ja)+awj(ja)+awc(ja);
        if ja == nhhh+1, awsum(ja)=awsum(ja)+awad; end
        hhi(ja) = awsum(ja)/we/2.;
        awdn = awd(jnom);
    end
   
    xp1 = xl+xpxl;
    for j = 1:nhhh+1
        hhoe(j) = hhi(j)/hhi(jnom);
    end 
	
	
	% The last part
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
    clear('struct');
    save(sfile);
end