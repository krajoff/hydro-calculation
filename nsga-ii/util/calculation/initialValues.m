function id = initialValues(id)
	id.n_iv = id.n2p/(id.nf*120);                       % Скорость вращения
    id.ke_iv = (1+.125*(2*sin(acos(id.cosfi))+.125))^.5; 
    id.inom_iv = id.sn*10^3/(3^.5*id.un);               % Номинальный фазный ток
    if id.inom_iv>1000, id.typesw_iv = 2; else id.typesw_iv =1; end
    if 
    id.ednom_iv = id.un*id.ke_iv; 
    id.sp_iv = 3*id.ednom_iv*id.inom_iv*.001;
    
end