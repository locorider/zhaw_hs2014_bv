
f = imread('squares.tif');
SE1 = strel('square', 6);
f2 = imerode(f, SE1);
f2 = imdilate(f2, SE1);
SE2 = strel('square', 5);
f3 = imerode(f, SE2);
f3 = imdilate(f3, SE2);
figure(1);
subplot(2,3,1);
imshow(f);
subplot(2,3,2);
imshow(f2);
subplot(2,3,3);
imshow(f3);
f4 = f3 - f2;
subplot(2,3,4);
imshow(f4);
f5 = imerode(f4, strel('square', 5));
subplot(2,3,5);
imshow(f5);

anzahl = sum(sum(f5))
%bwmorph