function ratedCurrent(sfile)
    load(sfile, '*');
    struct = open(sfile); not = struct.not;
    
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
    
    save(sfile);
    fclose('all');
end