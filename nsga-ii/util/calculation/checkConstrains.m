function cons = checkConstrains(T, struct)
    cons = [];
    for i = 1:height(T)
        paramName = T.Parameters{i};
        paramValue = struct.(paramName);

        % ���������, ���� ����������� � ������������ �������� ����������
        if ~isnan(T.Min(i)) && paramValue < T.Min(i)
            cons(end+1) = paramValue;  % ��������� �������� � array, ���� ������ ��������
        elseif ~isnan(T.Max(i)) && paramValue > T.Max(i)
            cons(end+1) = paramValue;  % ��������� �������� � array, ���� ������ ���������
        else
            cons(end+1) = 0;  % ��������� 0, ���� �������� � ��������
        end
    end
end