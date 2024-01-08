function [awf1,xl,xmd] = xlcalc(elt,tau,awapr,fi1n,awdn, ...
    q,bet,hdb,fb2,probm,nss)
        
    awf1 = awapr/(2*fi1n*10^8);
    xmd = awapr/awdn;
    q10 = q*10;
    qq = (1/q)^2;
    b31 = 3*bet+1;
    b29 = 3*bet-1;

    % Conditions for different types of winding
    niq = fix(q);
    flq = double(niq);
    qflq = q-flq;
    xplk = 0.306/fb2*awf1;
    difk = 0.156;
    if qflq == 0, difk = 0.078; end
    if probm == 0, b29 = 2; end
    if nss == 1, b31 = 4; end
    xpaz = xplk*elt/q10*b31*hdb;
    xlob = xplk*3.44*tau*b29;
    xdif = difk*xmd*qq;
    xl = xpaz+xlob+xdif;
end