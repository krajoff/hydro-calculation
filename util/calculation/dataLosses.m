function dataLosses(sfile)
    load(sfile, '*');
    struct = open(sfile); bm = struct.bm;
    
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

    % Recall. B for given ZKZX (!NB! nuzlz+1 -> nuzlz)
    for j = 1:nuzlz
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
        % (!NB! awdn=awd(jnom) -> 
        % if ja == jnom, awdn = awd(jnom); end)
        awsum(ja) = awd(ja)+awaw(ja)+awzw(ja)+awmw(ja)+awj(ja)+awc(ja);
        if ja == nhhh+1, awsum(ja)=awsum(ja)+awad; end
        hhi(ja) = awsum(ja)/we/2.;
        if ja == jnom, awdn = awd(jnom); end
        
    end
        xp1 = xl+xpxl;
        for j = 1:nhhh+1
            hhoe(j) = hhi(j)/hhi(jnom);
        end
        
    clear('struct');    
    save(sfile);
    fclose('all');
end