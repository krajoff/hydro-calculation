function n = precision()
    n = containers.Map('KeyType', 'char', 'ValueType', 'char');
    %% �������� ������
    n('tipmas') = '%s';
    n('ce') = '%.2f';
    n('snom') = '%.0f';
    n('pnom') = '%.0f';    	
    n('n2p') = '%i';
    n('cosnom') = '%.2f';
    n('tau') = '%.2f';
    n('un') = '%.0f';
    n('ifaz') = '%.0f';
    n('fn') = '%.0f';
    n('obmin') = '%.2f';
    %% ��������� �������
    n('di') = '%i';
    n('da') = '%i';
    n('ks') = '%s';
    n('elt') = '%i';  
    n('el') = '%i';
    n('elef') = '%.1f';
    n('del') = '%.1f';
    n('ef') = '%.2f';
    n('nr') = '%i';
    n('brad') = '%.1f';
    n('qa') = '%.0f';
    n('ha') = '%.1f';
    n('ha1') = '%.1f';
    n('la') = '%.1f';
    n('npaz') = '%i';
    n('t') = '%.2f';
    n('t3') = '%.2f';
    n('t2') = '%.2f';
    n('bc') = '%i';
    n('bcspec') = '%s';
    n('bz') = '%.2f';
    n('bz13') = '%.2f';
    n('bz12') = '%.2f';
    n('b1') = '%.1f';
    n('h') = '%.1f';
    n('h1') = '%.1f';
    n('qz3') = '%.0f';
    n('qz2') = '%.0f';    
    n('cd') = '%.1f';
    %% ������� �������
    n('i1') = '%.0f';
    n('ia') = '%.0f';
    n('jja') = '%.2f';
    n('nss') = '%.0f';
    n('w') = '%i';
    n('a') = '%i';
    n('ela') = '%.0f';
    n('els') = '%.0f';
    n('as') = '%.0f';
    n('ao') = '%.2f';
    n('bo') = '%.2f';
    n('ai') = '%.2f';
    n('bi') = '%.2f';
    n('ra15') = '%.5f';
    n('ra75') = '%.5f';  
    n('no') = '%i';
    n('qo') = '%.2f';
    n('y') = '%i';
    n('bet') = '%.3f';     
    n('fq') = '%.3f';
    n('ksk') = '%.3f';
    n('fbet') = '%.3f';
    n('fw') = '%.4f';
    %% �����
    n('delta') = '%.2f';
    n('delmax') = '%.2f';
    n('d1') = '%.2f';
    n('delmm') = '%.3f';
    n('alm') = '%.1f';
    n('elo') = '%.0f';
    n('al') = '%.3f';
    n('qdel') = '%.0f';
    n('dbash') = '%.1f';
    n('rp') = '%.1f';
    n('taum') = '%.1f';    
    %% �������� ������
    n('hp') = '%.0f';
    n('bp') = '%.0f';
    n('bp1') = '%.0f';
    n('elp') = '%.0f';
    n('elu') = '%.0f';       
    %% �������� ���������
    n('hm') = '%.0f';
    n('bm') = '%.0f';
    n('elm') = '%.0f';
    n('elm1') = '%.0f';
    n('elf') = '%.0f';
    n('qm') = '%.0f';       
    %% ������� �����������
    n('we') = '%.0f';
    n('pje') = '%.1f';
    n('ae') = '%.2f';
    n('aeo') = '%.0f';
    n('ele') = '%.0f';
    n('qe') = '%.0f';
    n('be1') = '%.0f';
    n('be') = '%.0f';
    n('beo') = '%.0f';  
    n('besum') = '%.0f';  
    n('re15') = '%.4f';  
    n('re75') = '%.4f';  
    %% ���������� �������
    n('nb') = '%i';
    n('not') = '%i';
    n('ddemot') = '%.1f';
    n('t2ot') = '%.1f';
    n('hs') = '%.1f';   
    n('bs') = '%.1f';
    n('nz') = '%i';
    n('ddemz') = '%.1f';
    n('t2zak') = '%.1f';   
    n('hsz') = '%.1f';
    n('elb') = '%.0f';
    n('elb1') = '%.0f';
    n('qb') = '%.1f';
    n('qbz') = '%.1f';
    n('cgb') = '%.0f';
    n('ar') = '%.1f';
    n('br') = '%.1f';
    n('qr') = '%.1f';
    n('cr') = '%.0f';    
    %% ������ ��������� ����
    n('fkf') = '%.3f';
    n('aklam') = '%.3f';
    n('dkd1') = '%.3f';
    n('dkd2') = '%.3f';
    n('dkd3') = '%.3f';
    n('dkd') = '%.3f';
    %% ������ ������������� �������
    n('ap') = '%.2f'; 
    n('dt') = '%.2f';
    n('cp') = '%.2f';
    n('lampl') = '%.3f';
    n('lamml') = '%.3f';
    n('lammb') = '%.3f';
    n('lammp') = '%.3f';
    n('lamsig') = '%.3f';
    n('xp') = '%.4f';
    n('xp1') = '%.4f';
    %% ������ ��������� ���� ��� ����������� ����������
    n('fi1n') = '%.4f';
    n('fin') = '%.4f';
    n('filamn') = '%.4f';
    n('uftn') = '%.0f'; 
    n('bdeln') = '%.3f';
    n('bz3n') = '%.3f';
    n('ban') = '%.3f';
    n('bmin') = '%.3f';
    n('bpin') = '%.3f';
    n('bm12n') = '%.3f';
    n('awt1n') = '%.2f';
    n('awt3n') = '%.2f';
    n('awt2n') = '%.2f';
    n('awmn') = '%.2f';
    n('awzn') = '%.2f';
    n('awan') = '%.2f'; 
    n('sigmn') = '%.3f';
    n('sigpn') = '%.3f'; 
    n('awdn') = '%.0f';
    n('awzwn') = '%.0f';
    n('awawn') = '%.0f';
    n('awmwn') = '%.0f';
    n('awcn') = '%.0f';
    n('awjn') = '%.0f';
    n('awapr') = '%.0f';
    n('awad') = '%.0f';
    n('awk') = '%.0f'; 
    n('awsumn') = '%.0f';
    n('hhin') = '%.0f';
    n('uuf') = '%.0f'; 
    n('kad') = '%.3f';
    n('kaq') = '%.3f';
    n('bs1') = '%.2f';
    n('lamot') = '%.2f';
    n('lamz') = '%.2f';
    n('lamsr') = '%.2f';
    %% �������� �������������
    n('rast') = '%.5f';
    n('r1') = '%.5f';
    n('r2') = '%.5f';
    n('rf') = '%.6f';
    n('rkd') = '%.4f';
    n('rkq') = '%.4f';
    %% ����������� �������������
    n('xl') = '%.3f';
    n('xad') = '%.3f';
    n('xaq') = '%.3f';
    n('xd') = '%.3f';
    n('xq') = '%.3f';
    n('xf') = '%.3f';
    n('xfras') = '%.3f';
    n('xd1') = '%.3f';
    n('xkd') = '%.3f';
    n('xkq') = '%.3f';
    n('xd2p') = '%.3f';
    n('xq2p') = '%.3f';
    n('x2') = '%.3f';
    n('x0') = '%.4f';
    %% ���������� �������
    n('td01') = '%.2f';
    n('td1') = '%.2f';
    n('ta') = '%.3f';
    n('tc01') = '%.3f';
    n('td02') = '%.3f';
    n('td2') = '%.4f';
    n('tq01') = '%.3f';
    n('tq2') = '%.4f';
    n('okz') = '%.3f'; 
    n('stover') = '%.2f'; 
    n('terdem') = '%.0f'; 
    n('c3f') = '%.3f'; 
    n('c1f') = '%.3f'; 
    n('crot') = '%.3f'; 
    n('qczar') = '%.0f'; 
    %% ������ ��������� ����
    n('pqa') = '%.1f';
    n('pqz') = '%.1f'; 
    n('pqp0') = '%.1f'; 
    n('pqt') = '%.1f';
    n('pqc') = '%.1f'; 
    n('pqfehh') = '%.1f'; 
    n('pqv') = '%.1f'; 
    n('raswoz') = '%.0f'; 
    n('tetwoz') = '%.1f';
    n('pqpodp') = '%.1f';
    n('qwpp') = '%.1f'; 
    n('grt') = '%.1f'; 
    n('fpp') = '%.1f'; 
    n('qwps') = '%.1f'; 
    n('pqpost') = '%.1f';
    n('kvd') = '%.2f';
    %% ������ ��������� ���������
    n('pqmed') = '%.1f';
    n('pqf') = '%.1f';
    n('pqtkz') = '%.1f';
    n('pkzkvd') = '%.1f'; 
    n('pqpz') = '%.1f';
    n('pqph') = '%.1f';
    n('pqed') = '%.1f';
    n('pqdob') = '%.1f';
    n('pqkz') = '%.1f';
    n('b3') = '%.3f';
    n('a3m') = '%.3f';
    n('a30') = '%.3f';
    n('fildk') = '%.4f';
    n('gkc') = '%.4f';
    n('gks') = '%.4f';
    %% ������ �� �����������
    n('ied') = '%.0f';
    n('pqwed') = '%.1f';
    n('pqsed') = '%.1f';
    n('pqpol') = '%.1f';
    n('kpdd') = '%.2f';
    %% ������� ��������������
    n('ga') = '%.2f';
    n('gz') = '%.2f';
    n('gs') = '%.2f';
    n('gus') = '%.3f';
    n('gps') = '%.0f';
    n('gc') = '%.2f';
    n('gc1') = '%.2f';
    n('gce') = '%.2f';
    n('gm') = '%.2f';
    n('gum') = '%.2f';
    n('gpm') = '%.0f';
    n('giz') = '%.0f';
    n('gb') = '%.2f';
    n('gr') = '%.2f';
    n('gd') = '%.2f';
    %% �������� ������ �������
    n('wfe') = '%.3f';
    n('wcu') = '%.3f';
    n('wi') = '%.3f';
    n('teti') = '%.1f';
    n('tetfe') = '%.1f';
    n('tets') = '%.1f';
    n('tetcu') = '%.1f';
    %% �������� ������ ������� �����������
    n('wcu2') = '%.3f';
    n('tetep') = '%.1f';
end