function pull(sf, genType)
    firstStep(sf);
    fieldWinding(sf);
    damperWinding(sf);
    windingRatio(sf);
    concordanceBlock(sf);
    ratedCurrent(sf);
    dataLosses(sf);
    soon(sf, genType);
end