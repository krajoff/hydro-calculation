function firstStruct = joinStructs(firstStruct, secondStruct)

    % ��������� ���� ����� ������ ���������
    fieldsSecondStruct = fieldnames(secondStruct);

    % ���������� ����� ������ ��������� � ������
    for i = 1:length(fieldsSecondStruct)
        firstStruct.(fieldsSecondStruct{i}) = ...
         secondStruct.(fieldsSecondStruct{i});
    end
   
end