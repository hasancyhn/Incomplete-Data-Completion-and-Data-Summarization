clc;
clear all;

veri = xlsread("dataEksik.xlsx");
veriSayisi  = size(veri, 1);
sutunSayisi = size(veri, 2);
yeniVeriler = [];

while(1==1)
    disp("Veriyi Goruntulemek Icin ----------------------------> 1")
    disp("Bes Sayi Ozetini Bulmak Icin ------------------------> 2");
    disp("Kutu Grafigini (Boxplot) Gormek Icin ----------------> 3");
    disp("IQR Degerini (Ceyrekler Arasý Deger) Bulmak Icin ----> 4");
    disp("Aykiri Degerleri Bulmak Icin ------------------------> 5");
    disp("Ortalamayi Bulmak Icin ------------------------------> 6");
    disp("Frekansi Bulmak Icin --------------------------------> 7");
    disp("Modu Bulmak Icin ------------------------------------> 8");
    disp("Medyani Bulmak Icin ---------------------------------> 9");
    disp("Varyans ve Standart Sapmayi Bulmak Icin -------------> 10");
    disp("Ortalama Tamamlamak Icin ----------------------------> 11");
    disp("Cikis Yapmak Icin -----------------------------------> 12");
    secim = input('Secim yapiniz: ');  
    
    if (secim==1)           
        disp(veri)
    
    elseif(secim==2)          
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        besSayiOzeti(veri, sutunNoGir);             
    
    elseif (secim==3)           
        boxplot(veri);
    
    elseif(secim==4)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        IQR = IQRHesapla(veri, sutunNoGir);
        disp(IQR);
    elseif(secim==5)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        aykiriDeger(veri, sutunNoGir);
    
    elseif(secim==6)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        toplam = 0;
        sayi = 0;
        for i=1:veriSayisi
            if isnan(veri(i, sutunNoGir))
            else
                toplam = toplam + veri(i, sutunNoGir);
                sayi = sayi+1;
            end
        end
        ortalama = toplam / sayi;
        disp(ortalama)
    
    elseif(secim==7)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        frekansDegeri(veri, sutunNoGir); 
   
    elseif(secim==8)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        modHesapla(veri, sutunNoGir)       
    
    elseif(secim==9)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        medyanDegeri = median(veri(:, sutunNoGir));
        disp(medyanDegeri);
    
    elseif(secim==10)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz:');
        standartSapmaHesapla = std(veri(:, sutunNoGir));
        varyansHesapla = sqrt(standartSapmaHesapla);
        disp("Standart Sapma");
        disp(standartSapmaHesapla);
        disp("Varyans");
        disp(varyansHesapla);
    
    elseif(secim==11)
        sutunNoGir = input('Hesaplamak istediginiz sutunu giriniz: ');
        veri = ortTamamla(veri, sutunNoGir);
        disp(veri);
          
    elseif(secim==12)
        break;
    else
        disp("Yanlis Veri Girisi, Lutfen Tekrar Deneyiniz!");
    end
end