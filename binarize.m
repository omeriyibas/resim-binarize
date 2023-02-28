
%dizin_yolu=uigetdir()
dizin =dir();
dosya_adlari = {dizin.name};
dosya_adlari2=[];
for i=1:length(dosya_adlari)
    dosya_adi=dosya_adlari(i);
    dosya_adi=cell2mat(dosya_adi);
    if length(dosya_adi)>2
        dosya_uzantisi=dosya_adi(length(dosya_adi)-2:end);
        if dosya_uzantisi == "png"
            dosya_adlari2=[dosya_adlari2 {dosya_adi}];
        end
    end
end

dizin_adi=dizin.folder;

for i=1:length(dosya_adlari2)
%     img=imread([dizin_yolu '/' cell2mat(dosya_adlari2(i))])
    img=imread([dizin_adi '/' cell2mat(dosya_adlari2(i))]);
    img= rgb2gray(img);
    img=imbinarize(img);
    imwrite(img,[dizin_adi '/' cell2mat(dosya_adlari2(i))]); 
end
