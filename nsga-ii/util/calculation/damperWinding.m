function damperWinding(sfile)
    load(sfile, '*');
    struct = open(sfile);
    db = struct.db; ar = struct.ar;
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
    clear('struct');
    save(sfile);
end