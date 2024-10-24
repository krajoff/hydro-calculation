function cons = checkConstrains(T, struct)
    cons = [];
    for i = 1:height(T)
        paramName = T.Parameters{i};
        paramValue = struct.(paramName);

        % ѕровер€ем, если минимальное и максимальное значени€ существуют
        if ~isnan(T.Min(i)) && paramValue < T.Min(i)
            cons(end+1) = paramValue;  % ƒобавл€ем значение в array, если меньше минимума
        elseif ~isnan(T.Max(i)) && paramValue > T.Max(i)
            cons(end+1) = paramValue;  % ƒобавл€ем значение в array, если больше максимума
        else
            cons(end+1) = 0;  % ƒобавл€ем 0, если значение в пределах
        end
    end
end