function joinStructFiles(structfilemain, structfileslave)
    load(structfilemain);
    load(structfileslave);
    save(structfilemain);
end