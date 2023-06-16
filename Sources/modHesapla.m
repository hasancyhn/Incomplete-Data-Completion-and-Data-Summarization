function modHesapla(veri, sutunNoGir)
    sutun=sort(veri(:, sutunNoGir));
    tekilveriler    = unique(sutun);
    tekilVeriSayisi = size(tekilveriler, 1);
    tekilveriler    = [tekilveriler zeros(tekilVeriSayisi, 1)];
    for i=1:tekilVeriSayisi
        deger = tekilveriler(i, 1);
        sonucDizi = sutun == deger; 
        tekilveriler(i, 2)=sum(sonucDizi); 
    end
    maxFrekans  = max(tekilveriler(:, 2));
    ModIndexler = find(tekilveriler(:, 2) == maxFrekans);
    for i=1:size(ModIndexler, 1)
        fprintf( 'Mod: %d \n\n\n', tekilveriler(ModIndexler(i, 1), 1))
    end
end