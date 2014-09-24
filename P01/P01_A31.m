f = imread('C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lena.tif');
imwrite(f, 'C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lena.jpg');
imwrite(f, 'C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lena.gif');
imwrite(f, 'C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lena.bmp');
figure(1);
fd = double(f);
imshow(fd);

fu8 = uint8(fd);
figure(2);
imshow(fu8);

lenaM = imread('C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lenaM.tif');
figure(3);
imshow(lenaM);
lenaMd = double(lenaM);
lenaMd = lenaMd - min(min(lenaMd));
lenaMd = lenaMd / max(max(lenaMd));
figure(4);
imshow(lenaMd);