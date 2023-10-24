clc,clear all,close all;
res=imread('Eye_iris.jpg');
[x,y,z]=size(res); %x=satýr sayýsýný yani yükseklik boyutunu temsil ediyor.%y=sütun sayýsýný yani geniþlik boyutunu temsil edeiyor.
b=2; %Büyültme miktarý 
count=0;    %Sayaç oluþturup deðerini sýfýr olarak tanýmlayalým.
for i=1:z   
    for k=1:y %Öncelikle sütunlarýmýzý geniþletelim.
        for j=1:b %Büyütme miktarý kadar deðer kopyalanacak.
            count=count+1;  %Sayacý 1 arttýr.
            res2(:,count,i)=res(:,k,i);
        end
    end
    count=0; %Sayacý sýfýrla
end
count = 0;
for i=1:z
    for k=1:x 
        for j=1:b 
            count=count+1; 
            res3(count,:,i)=res2(k,:,i); 
        end
    end
    count=0;  
end
 imshow(res),title('Resmin orjinal hali')
 figure %Yeni figure penceresi açalým
 imshow(res3) %Resmi ekrana yazdýrma
 title(['Resmin ',num2str(b),'X ' 'büyütülmüþ hali']) %Baþlýk ekleme