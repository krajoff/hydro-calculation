function n = precision()
    n = containers.Map('KeyType', 'char', 'ValueType', 'char');
    %% �������� ������
    n('tipmas') = '%.3f';
    n('ce') = '%.3f';
    n('snom') = '%.3f';
    n('nn2p') = '%.3f';
    n('cosnom') = '%.3f';
    n('tau') = '%.3f';
    n('nun') = '%.3f';
    n('ifaz') = '%.3f';
    n('nfn') = '%.3f';
    n('obmin') = '%.3f';
    %% ��������� �������
    n('di') = '%.3f';
    n('da') = '%.3f';
    n('kkks') = '%.3f';
    n('elt') = '%.3f';  
    n('el') = '%.3f';
    n('elef') = '%.3f';
    n('del') = '%.3f';
    n('ef') = '%.3f';
    n('nnnp') = '%.3f';
    n('brad') = '%.3f';
    n('qa') = '%.3f';
    n('ha') = '%.3f';
    n('ha1') = '%.3f';
    n('la') = '%.3f';
    n('nnpaz') = '%.3f';
    n('t') = '%.3f';
    n('t3') = '%.3f';
    n('t2') = '%.3f';
    n('bc') = '%.3f';
    n('bz') = '%.3f';
    n('bz13') = '%.3f';
    n('bz12') = '%.3f';
    n('b1') = '%.3f';
    n('h') = '%.3f';
    n('h1') = '%.3f';
    n('qz3') = '%.3f';
    n('qz2') = '%.3f';    
    n('cd') = '%.3f';
    %% ������� �������
    n('i1') = '%.3f';
    n('ia') = '%.3f';
    n('jja') = '%.3f';
    n('nss') = '%.3f';
    n('w') = '%.3f';
    n('a') = '%.3f';
    n('ela') = '%.3f';
    n('els') = '%.3f';
    n('as') = '%.3f';
    n('ao') = '%.3f';
    n('bo') = '%.3f';
    n('ai') = '%.3f';
    n('bi') = '%.3f';
    n('ra15') = '%.3f';
    n('ra75') = '%.3f';  
    n('no') = '%.3f';
    n('qo') = '%.3f';
    n('y') = '%.3f';
    n('bet') = '%.3f';     
    n('fq') = '%.3f';
    n('ksk') = '%.3f';
    n('fbet') = '%.3f';
    n('fw') = '%.3f';
    %% �����
    n('delta') = '%.3f';
    n('delmax') = '%.3f';
    n('d1') = '%.3f';
    n('delmm') = '%.3f';
    n('alm') = '%.3f';
    n('elo') = '%.3f';
    n('al') = '%.3f';
    n('qdel') = '%.3f';
    n('dbash') = '%.3f';
    n('rp') = '%.3f';
    n('taum') = '%.3f';    
    %% �������� ������
    n('hp') = '%.3f';
    n('bp') = '%.3f';
    n('bp1') = '%.3f';
    n('elp') = '%.3f';
    n('elu') = '%.3f';       
    %% �������� ���������
    n('hm') = '%.3f';
    n('bm') = '%.3f';
    n('elm') = '%.3f';
    n('elm1') = '%.3f';
    n('elf') = '%.3f';
    n('qm') = '%.3f';       
    %% ������� �����������
    n('we') = '%.3f';
    n('pje') = '%.3f';
    n('ae') = '%.3f';
    n('aeo') = '%.3f';
    n('ele') = '%.3f';
    n('qe') = '%.3f';
    n('be1') = '%.3f';
    n('be') = '%.3f';
    n('beo') = '%.3f';  
    n('besum') = '%.3f';  
    n('re15') = '%.3f';  
    n('re75') = '%.3f';  
    %% ���������� �������
    n('nb') = '%.3f';
    n('not') = '%.3f';
    n('ddemot') = '%.3f';
    n('t2ot') = '%.3f';
    n('hs') = '%.3f';   
    n('bs') = '%.3f';
    n('nz') = '%.3f';
    n('ddemz') = '%.3f';
    n('t2zak') = '%.3f';   
    n('hsz') = '%.3f';
    n('elb') = '%.3f';
    n('elb1') = '%.3f';
    n('qb') = '%.3f';
    n('qbz') = '%.3f';
    n('cgb') = '%.3f';
    n('ar') = '%.3f';
    n('br') = '%.3f';
    n('qr') = '%.3f';
    n('cr') = '%.3f';    
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
    n('awzn') = '%.3f';
    n('awan') = '%.3f'; 
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
    n('x0') = '%.3f';
    %% ���������� �������
    n('td01') = '%.3f';
    n('td1') = '%.3f';
    n('ta') = '%.3f';
    n('tc01') = '%.3f';
    n('td02') = '%.3f';
    n('td2') = '%.3f';
    n('tq01') = '%.3f';
    n('tq2') = '%.3f';
    n('okz') = '%.3f'; 
    n('stover') = '%.3f'; 
    n('terdem') = '%.3f'; 
    n('c3f') = '%.3f'; 
    n('c1f') = '%.3f'; 
    n('crot') = '%.3f'; 
    n('qczar') = '%.3f'; 
    %% ������ ��������� ����
    n('pqa') = '%.3f';
    n('pqz') = '%.3f'; 
    n('pqp0') = '%.3f'; 
    n('pqt') = '%.3f';
    n('pqc') = '%.3f'; 
    n('pqfehh') = '%.3f'; 
    n('pqv') = '%.3f'; 
    n('raswoz') = '%.3f'; 
    n('tetwoz') = '%.3f';
    n('pqpodp') = '%.3f';
    n('qwpp') = '%.3f'; 
    n('grt') = '%.3f'; 
    n('fpp') = '%.3f'; 
    n('qwps') = '%.3f'; 
    n('pqpost') = '%.3f';
    %% ������ ��������� ���������
    n('pqmed') = '%.3f';
    n('pqf') = '%.3f';
    n('gks') = '%.3f';
    n('pqpz') = '%.3f';
    n('pqph') = '%.3f';
    n('pqed') = '%.3f';
    n('pqdob') = '%.3f';
    n('pqkz') = '%.3f';
    n('b3') = '%.3f';
    n('a3m') = '%.3f';
    n('a30') = '%.3f';
    n('fildk') = '%.3f';
    n('gkc') = '%.3f';
    %% ������ �� �����������
    n('pqwed') = '%.3f';
    n('pqsed') = '%.3f';
    n('pqpol') = '%.3f';
    n('kpdd') = '%.3f';
    %% ������� ��������������
    n('ga') = '%.3f';
    n('gz') = '%.3f';
    n('gs') = '%.3f';
    n('gus') = '%.3f';
    n('gps') = '%.3f';
    n('gc') = '%.3f';
    n('gc1') = '%.3f';
    n('gce') = '%.3f';
    n('gm') = '%.3f';
    n('gum') = '%.3f';
    n('gpm') = '%.3f';
    n('giz') = '%.3f';
    n('gb') = '%.3f';
    n('gr') = '%.3f';
    n('gd') = '%.3f';
    %% �������� ������ �������
    n('wfe') = '%.3f';
    n('wcu') = '%.3f';
    n('wi') = '%.3f';
    n('teti') = '%.3f';
    n('tetfe') = '%.3f';
    n('tets') = '%.3f';
    n('tetcu') = '%.3f';
    %% �������� ������ ������� �����������
    n('wcu2') = '%.3f';
    n('tetep') = '%.3f';
end