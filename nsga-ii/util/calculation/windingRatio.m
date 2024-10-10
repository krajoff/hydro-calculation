function windingRatio(sfile)
    load(sfile, '*');
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
    save(sfile);
end