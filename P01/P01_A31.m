f = imread('lena.tif');
imwrite(f, 'lena.jpg');
imwrite(f, 'lena.gif');
imwrite(f, 'lena.bmp');
figure(1);
fd = double(f);
imshow(fd, []);

fu8 = uint8(fd);
figure(2);
imshow(fu8);

lenaM = imread('lenaM.tif');
figure(3);
imshow(lenaM);
lenaMd = double(lenaM);
lenaMd = lenaMd - min(min(lenaMd));
lenaMd = lenaMd / max(max(lenaMd));
figure(4);
imshow(lenaMd);