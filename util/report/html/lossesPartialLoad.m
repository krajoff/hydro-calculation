function h = lossesPartialLoad(hi, sfile, nl, prc)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    dmn = dimension();
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', ['��� ��� ��������� ��������� ' ...
        '� ������������ �������� ' sprintf('%.3f', cosnom)])];
    
    head = {'����������', '�������� ���������', '�� �����������', ...
        '������� �����������', '������', '��� �����������', ...
        '����.�����������', '���'};
    trc = '<tr class="heighttr">\n';
    h = [h trc addTd('������') addTd(head) '</tr>']; 
    

    
    
    
    
    
    
    
    
    
    h = [h, '</table>'];
    h = [h, '<div style="break-after:page"></div>\n'];
end