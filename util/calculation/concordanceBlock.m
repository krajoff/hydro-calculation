function concordanceBlock(sfile)
    load(sfile, '*');
    struct = open(sfile);
    db = struct.db;
    
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
    
    save(sfile);
    fclose('all');
end