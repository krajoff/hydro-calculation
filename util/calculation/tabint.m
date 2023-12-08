function awt = tabint(h, b, nuzl, bnach, stepb)
    if b <= bnach
        tgal = h(1)/bnach;
        awt = b*tgal;
        return;
    end
    btek1 = bnach;
    btek2 = btek1+stepb;
    for j = 1:nuzl-1
        if b >= btek1 && b < btek2 
            jp = j; 
            tgal = (h(jp+1)-h(jp))/stepb;
            db = b-btek1;
            dh = db*tgal;
            awt = h(jp)+dh;
            return;
        end
        btek1 = btek2;
        btek2 = btek1+stepb;
    end          
    tgal = (h(nuzl)-h(nuzl-1))/stepb;
    bkon = stepb*(nuzl-1)+bnach;
    db = b-bkon;
    dh = db*tgal;
    awt = h(nuzl)+dh;
end