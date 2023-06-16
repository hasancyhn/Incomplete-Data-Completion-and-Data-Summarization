function yeniVeriler=ortTamamla(veri, sutunNoGir)
    yeniVeriler = veri;
    sutun = veri(:, sutunNoGir);
    for i=1:size(veri, 1)
        if isnan(sutun(i, 1))
            sinif = veri(i, 9);
            
            sum   = 0;
            bos = 0;
            for j=1:size(veri, 1)
                if veri(j, 9)==sinif && ~isnan(sutun(j, 1))
                    sum = sum + sutun(j, 1);
                    bos = bos + 1;
                end
            end
            ort = sum/(size(veri, 1)-bos);
            yeniVeriler(i, sutunNoGir) = ort;
        end
    end
end