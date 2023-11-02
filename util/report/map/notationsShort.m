function n = notationsShort()
    slCharacterEncoding('windows-1251')
    feature('DefaultCharacterSet', 'windows-1251');
    n = containers.Map('KeyType', 'char', 'ValueType', 'char');
    n('fkf') = 'Коэффициент формы поля';
    n('aklam') = 'Коэффициент поля, входящего в башмак полюса';
    n('dkd1') = 'первый';
    n('dkd2') = 'второй';
    n('dkd3') = 'третий';
    n('dkd') = 'полный';
    n('ap') = 'АР'; 
    n('dt') = 'ДТ';
    n('cp') = 'СР';
    n('lampl') = 'башмаков';
    n('lamml') = 'сердечников';
    n('lammb') = 'торцов';
    n('lammp') = 'cуммарная';
    n('lamsig') = 'полей рассеяния';
end