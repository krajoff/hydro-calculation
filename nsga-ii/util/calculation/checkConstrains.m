function cons = checkConstrains(cons, T, calculatedStruct)
    prc = precision();
    msg = "Bad: ";
    for i = 1:height(T)
        paramName = T.Parameters{i};
        structValue = calculatedStruct.(paramName);
        formatSpec = prc(paramName);
        if ~isnan(T.Min(i)) && structValue < T.Min(i)
            cons(i) = structValue;
            msg = msg + paramName + sprintf(['=' formatSpec], structValue) + " ";
        elseif ~isnan(T.Max(i)) && structValue > T.Max(i)
            cons(i) = structValue;
            msg = msg + paramName + sprintf(['=' formatSpec], structValue) + " ";
        else
            cons(i) = 0;
        end
    end
    if msg ~= "Bad: "
        fprintf(msg);
    end
end