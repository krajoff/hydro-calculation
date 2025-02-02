genType = 'BoguchanHPP';
id = struct;
%% ������������ ������
id.uuf1 = 0.5;      % ������������� �������� ���� ������ (1 �����)
id.uuf2 = 0.75;     % ----------------------------------- 2 -----
id.uuf3 = 1;        % ----------------------------------- 3 -----
id.uuf4 = 1.15;     % ----------------------------------- 4 -----
id.uuf5 = 1.25;     % ----------------------------------- 5 -----
id.uuf6 = 1.3;      % ----------------------------------- 6 -----
id.uuf7 = 1.35;     % ----------------------------------- 7 -----
id.uuf8 = 1.4;      % ----------------------------------- 8 -----
id.nuzs = 200;      % ����� ����� �������������� H(J)
id.bnachs = 3000;   % ��������� � � �� ---------------
id.stepbs = 100;    % ����� ����� H(J)
id.nuzp = 200;      % ����� ����� �������������� BH2(J)
id.bnachp = 3000;   % ��������� � � �� ---------------
id.stepbp = 100;    % ����� ����� BH2(J)
id.nuzz = 142;      % ����� ����� �������������� H3(J)
id.bnachz = 6000;   % ��������� � � �� ---------------
id.stepbz = 100;    % ����� ����� H3(J)

%% �������� ������
id.sn = 94100;      % ����������� ������ ��������
id.pnom = 80000;    % ----------- �������� ��������
id.un = 13800;      % ----------- ���������� �������
id.nf = 50;         % ----------- ������� 
id.n2p = 56;        % ����� �������
id.cosfi = 0.85;    % ����������� ����������� ��������
id.thol = 35;       % ����������� ��������� �������

%% ��������� �������
id.da = NaN;        % �������� ������� ���������� �������
id.di = NaN;        % ������� �������� ���������� �������
id.elt = NaN;       % ������ ����� ���������� �������
id.nk = NaN;        % ����� �������������� ������� �������
id.bk = NaN;          % ������ �������������� ������� �������
id.del = 0.5;       % ������� ������ ����� �������
id.nz = NaN;        % ����� ����� �������
id.nz1 = NaN;       % ����� ����� � �������� ��������
id.b1 = NaN;        % ������ ����
id.h1 = NaN;        % ������ ������ ����
id.h = NaN;         % ������ ���� ��� �����

id.akpst = NaN;     % ����� ����� �������� ������� �������
id.ckpst = NaN;     % ����� ������ �������� ������� �������
id.ks = '�270-0.5'; % ����� ����� ���������� �������
id.pa = 1.3;        % ����������� ���������� ������ � ����
id.pz = 0.8;        % ����������� ���������� ������ � ������

%% ������� �������
% id.ko = 1;          % ��� �������
% id.ns = 1.5;        % ����� ������ � ����
% id.na = 1;          % ����� ������������ ������
% id.y = 6;           % ��� ������� �������
% id.ktr = 1;         % ����������� �����
% id.ao = 4.2;        % ������ ������������� ���������� ��� ��������
% id.bo = 7.0;        % ������ ������������� ���������� ��� �������
% id.ai = 4.53;       % ������ ������������� ���������� � ��������
% id.bi = 7.0;        % ������ ������������� ���������� � ���������
% id.no = 30;         % ����� ������������ �����������
% id.qo = 28.52;      % ������� ������� ������������� ����������
% id.ah = 0;          % ������ ������ ����������
% id.ahi = 0;         % ������ ������ ���������� � ���������
% id.akh = 0;         % ������ ������ ������ ����������
% id.bkh = 0;         % ������ ������ ������ ����������
% id.nh = 0;          % ����� ������������ ����� ����������� � �������/�����
% id.qh = 0;          % ������� ������������� ������ ����������
% 
% id.els = 0;         % ������� ����� ������� ����� ���������
% id.tipiz = 1;       % ��� ��������
% id.deliz = 2.5;     % ������� ��������� ��������
% id.fq = 0;          % ����������� ������������
% id.ksk = 1;         % ����������� �����
% 
% %% �����
% id.d = 14;          % ��������� �����
% id.od = 1.5;        % ��������� ������������� ������ � ������������
% id.delm = 1.5;      % ������� ��������
% id.bp = 285;        % ������ ��������� �������
% id.bp1 = 295;       % ������ ��������� ������� �� ������� ����������
% id.hp = 55;         % ������ ��������� �������
% id.elp = 1650;      % ����� ����� ��������� ������� 
% id.elf = 45;        % ������� ��� ��������� ����������
% id.elpf = 90;       % ������� ���� ������
% id.prnem = 1;       % NB! �� ��������� � ������� ��������: deltap=hp+hm/2 � elpf=0 
% id.elu = 0;         % ����� ����� ��������� �������
% id.kp = 0;          % ��� ��������
% id.kb = 0;          % ������ ������� ��������
% id.kh1 = 0;         % ������ ������� �������� �� ��������
% id.kh2 = 0;         % ������ ������� �������� �� �����
% 
% id.bm = 190;        % ������ ��������� ����������
% id.hm = 255;        % ������ ��������� ����������
% id.elm = 1650;      % ����� ��������� ����������
% id.qm = 0;          % ������� ������� ��������� ����������
% id.hj = 600;        % ������ ���� ����� ������
% id.qj = 900000;     %  ������� ���� ����� ������
% 
% %% ������� ����������
% id.we = 33;         % ����� ����������� ������� �����������
% id.kr = 3;          % ����� �������: 1-������������,2-������������� ��� ������������,3-�������
% id.ae = 6;          % ������ ���������� ������� �����������
% id.be = 47;         % ������ ���������� ������� �����������
% id.aeo = 0;         % ������0
% id.beo = 0;         % ������0
% id.ae1 = 2;         % ������ ������
% id.be1 = 8;         % ������ ������
% id.ae2 = 0;         % ������ �������� �������
% id.be2 = 0;         % ������ �������� �������
% id.de = 0;          % ������� ��������� � ���������� ������� �����������
% id.qe = 0;          % ������� ������� �����
% id.ele = 0;         % ������� ����� ����� ������� �����������
% id.ele2 = 0;        % ������� ����� ����� ��� �������������� �������
% 
% %% ���������� �������
% id.nb = 4;          % ����� �������� �������� ���������� �������
% id.nbz = 2;         % ����� �������� �������� ���������� �������
% id.db = 16;         % ������� �������� �������� ���������� �������
% id.dbz = 16;        % ������� �������� ---------------------------
% id.tb = 50;         % ��� �������� �������� ���������� �������
% id.tbz = 50;        % ��� �������� ---------------------------
% id.elb = 0;         % ����� ������� ��������� �������
% id.hs = 8;          % ������ ����� �������� �������� ���������� �������
% id.hsz = 8;         % ������ ����� �������� ---------------------------
% id.bs = 3;          % ������ ����� �������� ---------------------------
% id.cb = 1;          % �������� ������� (�������������)
% id.cgb = 1;         % ����������� ��������� ��������� ���� ���������� ��������
% id.cr = 1;          % ����������� ��������� �������� �������� ���������� �������
% id.ar = 10;         % ������ ��������
% id.br = 50;         % ������ ��������
% 
% %% ������
% id.qwpp = 0;        % ������ ������ � ����������
% id.fpp = 0;         % �������� �� ���������
% id.grt = 0;         % ����� ����������� ������
% id.qwps = 0;        % ������ � �����������
% id.raswoz = 0;      % ������ �������
% 
% %% ������ � ������� �����������
% id.pqsed = 0;       % ������ �� ����������� � ������� ����������� ��� ����������� ����. ��������
% id.pqse1d = 0;      % ������ �� ����������� � ������� ����������� ��� �����. �������� 1
id = evalin('caller', 'id');
genType = evalin('caller', 'genType');