% Interpolation for variable step zkzx is taken into account in array b
% h - array of mds; b - arraxy of inductions
% awt - current mds; bz - current induction

function awt = zubtab(h,b,bz,nuzl)
    if (bz-b(1)) <= 0
        tgal = b(1)/h(1);
        awt = bz/tgal;
        return; 
    else

        % Normal interpolation
        for j = 1:nuzl-1
            if bz >= b(j) && bz <= b(j+1)
                jp = j;
                tgal = (b(jp+1)-b(jp))/(h(jp+1)-h(jp));
                db = bz-b(jp);
                dh = db/tgal;
                awt = h(jp)+dh;
                return;
            end
        end
        
        % Interpolation(for B.gt.B(nuzl))
        tgal = (b(nuzl)-b(nuzl-1))/(h(nuzl)-h(nuzl-1));
        db = bz-b(nuzl);
        dh = db/tgal;
        awt = h(nuzl)+dh;
    end
end