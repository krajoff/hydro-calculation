function n = notationsShort()
    slCharacterEncoding('windows-1251')
    feature('DefaultCharacterSet', 'windows-1251');
    n = containers.Map('KeyType', 'char', 'ValueType', 'char');
    n('fkf') = '����������� ����� ����';
    n('aklam') = '����������� ����, ��������� � ������ ������';
    n('dkd1') = '������';
    n('dkd2') = '������';
    n('dkd3') = '������';
    n('dkd') = '������';
    n('ap') = '��'; 
    n('dt') = '��';
    n('cp') = '��';
    n('lampl') = '��������';
    n('lamml') = '�����������';
    n('lammb') = '������';
    n('lammp') = 'c��������';
    n('lamsig') = '����� ���������';
end