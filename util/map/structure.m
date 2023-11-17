function s = structure()
    s = struct();
    s.dmn = dimension();
    s.prc = precision();
    s.nl = notationsLong();
    s.ns = notationsLong();
    ns = notationsShort();
    key = keys(ns);
    for i = 1:length(key)
        s.ns(key{i}) = ns(key{i});
    end
end