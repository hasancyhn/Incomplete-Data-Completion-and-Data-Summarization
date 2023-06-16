function besSayiOzeti(veri, sutunNoGir)
    sutun = sort(veri(:, sutunNoGir));
    minDeger = min(veri(:, sutunNoGir));
    veriSayisi=size(veri, 1);
    Q1IndexDegeri=(25/100)*(veriSayisi+1); 

    if mod(Q1IndexDegeri,1)>0
        index1=floor(Q1IndexDegeri);
        index2= ceil(Q1IndexDegeri);
        Q1Degeri =(sutun(index1, 1)+sutun(index2, 1))/2;
    else
        Q1Degeri = sutun(Q1IndexDegeri, 1);
    end

    
    Q3IndexDegeri =(75/100)*(veriSayisi+1); 
    if mod(Q3IndexDegeri, 1)>0
        index1   = floor(Q3IndexDegeri);
        index2   = ceil(Q3IndexDegeri);
        Q3Degeri =(sutun(index1,1)+sutun(index2,1))/2;
    else
        Q3Degeri = sutun(Q3IndexDegeri,1);
    end

    
    medyanDegeri = median(veri(:, sutunNoGir));
    maxDeger = max(veri(:, sutunNoGir));

    fprintf('Minimum Deger: %d\n',             minDeger)
    fprintf('Q1 (Birinci Ceyrek) Degeri: %d\n',Q1Degeri)
    fprintf('Medyan Degeri: %d\n',             medyanDegeri)
    fprintf('Q3 (Ucuncu Ceyrek) Degeri: %d\n', Q3Degeri)
    fprintf('Maksimum Deger: %d\n',            maxDeger)
end