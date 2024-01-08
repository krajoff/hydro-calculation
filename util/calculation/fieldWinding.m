function fieldWinding(sfile)
    load(sfile, '*');
    struct = open(sfile); 
    bm = struct.bm;
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
    clear('struct');
    save(sfile);
    fclose('all');
end