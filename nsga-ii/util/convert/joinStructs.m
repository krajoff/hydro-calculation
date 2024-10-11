function firstStruct = joinStructs(firstStruct, secondStruct)

    % ѕолучение всех полей второй структуры
    fieldsSecondStruct = fieldnames(secondStruct);

    % ѕрисвоение полей второй структуры в первую
    for i = 1:length(fieldsSecondStruct)
        firstStruct.(fieldsSecondStruct{i}) = ...
         secondStruct.(fieldsSecondStruct{i});
    end
   
end