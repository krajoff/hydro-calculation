function ms = getGenerator(filepath)
    [id,~] = readData(filepath);
    commonStruct = load('data\commondata.mat');
    ms = joinStructs(id, commonStruct);
    ms = calculation(ms);
    % Вычисление средневзвешенного КПД (пример из Тайнионкоски ГЭС):
    effweighted = (9*ms.kpdd(12)+22*ms.kpdd(11)+33*(ms.kpdd(10)+...
        ms.kpdd(11))/2+26*ms.kpdd(9)+10*(ms.kpdd(7)+ms.kpdd(8))/2);
    ms.effweighted = effweighted;
end