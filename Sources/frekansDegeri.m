function frekansDegeri(veri, sutunNoGir)
    sutun = sort(veri(:, sutunNoGir));
    tekilveriler  = unique(sutun);
    tekilVeriSayisi = size(tekilveriler, 1);
    tekilveriler  = [tekilveriler zeros(tekilVeriSayisi, 1)];
    for i=1:tekilVeriSayisi
        deger = tekilveriler(i,1);
        sonucDizi = sutun == deger; 
        tekilveriler(i, 2)=sum(sonucDizi); 
    end
    disp(tekilveriler);
    bar(tekilveriler(:, 1),tekilveriler(:, 2));
end