function awt = tabint(h, b, nuzl, bnach, stepb)
    % Interpolation in the beginning(if b le bnach)
    if b-bnach > 0
%        tgal = h(1)/bnach;
%        awt = b*tgal;
        btek1 = bnach;
        btek2 = btek1+stepb;
        for j = 1:nuzl-1
            % Normal interpolation
            if b >= btek1 && b < btek2 
                jp = j; 
                tgal = (h(jp+1)-h(jp))/stepb;
                db = b-btek1;
                dh = db*tgal;
                awt = h(jp)+dh;
                break;
            else
                btek1 = btek2;
                btek2 = btek1+stepb;
                % Interpolation beyond the tabl.(B gt Bmax)
                tgal = (h(nuzl)-h(nuzl-1))/stepb;
                bkon = stepb*(nuzl-1)+bnach;
                db = b-bkon;
                dh = db*tgal;
                awt = h(nuzl)+dh;
            end
        end
    else
        tgal = h(1)/bnach;
        awt = b*tgal;
    end
end