clc,clear all,close all;
res=imread('Eye_iris.jpg');
[x,y,z]=size(res); %x=sat�r say�s�n� yani y�kseklik boyutunu temsil ediyor.%y=s�tun say�s�n� yani geni�lik boyutunu temsil edeiyor.
b=2; %B�y�ltme miktar� 
count=0;    %Saya� olu�turup de�erini s�f�r olarak tan�mlayal�m.
for i=1:z   
    for k=1:y %�ncelikle s�tunlar�m�z� geni�letelim.
        for j=1:b %B�y�tme miktar� kadar de�er kopyalanacak.
            count=count+1;  %Sayac� 1 artt�r.
            res2(:,count,i)=res(:,k,i);
        end
    end
    count=0; %Sayac� s�f�rla
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
 figure %Yeni figure penceresi a�al�m
 imshow(res3) %Resmi ekrana yazd�rma
 title(['Resmin ',num2str(b),'X ' 'b�y�t�lm�� hali']) %Ba�l�k ekleme