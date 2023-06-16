function aykiriDeger(veri, sutunNoGir)
    veriSayisi = size(veri, 1);
    sutun = sort(veri(:, sutunNoGir));

    Q1IndexDegeri=(25/100)*(veriSayisi+1); 
    if mod(Q1IndexDegeri, 1)>0
        index1   = floor(Q1IndexDegeri);
        index2   = ceil(Q1IndexDegeri);
        Q1Degeri =(sutun(index1, 1)+ sutun(index2, 1))/2;
    else
        Q1Degeri = sutun(Q1IndexDegeri, 1);
    end

    
    Q3IndexDegeri = (75/100)*(veriSayisi+1); 
    if mod(Q3IndexDegeri,1)>0
        index1   = floor(Q3IndexDegeri);
        index2   = ceil(Q3IndexDegeri);
        Q3Degeri =(sutun(index1, 1)+ sutun(index2, 1))/2;
    else
        Q3Degeri = sutun(Q3IndexDegeri, 1);
    end


    IQR = Q3Degeri - Q1Degeri;
    ustSinir = Q3Degeri + IQR*1.5;
    altSinir = Q1Degeri - IQR*1.5;

    disp("Aykiri Degerler: ");
    for i=1:veriSayisi
        if sutun(i, 1) < altSinir || sutun(i, 1) > ustSinir
            disp(sutun(i, 1));
        end
    end
end