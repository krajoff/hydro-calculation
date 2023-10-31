function data = importBH(fileToRead)
    fileID = fopen(fileToRead,'r');
    data = fscanf(fileID,'%f');
    fclose(fileID);
end