f = imread('C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lena.tif');
fig = 1;
figure(fig);
imshow(f);

b = 1;
for x = 1:1:8
    % fig = fig + 1;
    % figure(fig);
    g = bitand(f, b);
    %imshow(g);
    b = bitsll(b, 1);
end

lb = imread('C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lenaB.tif');
fig = fig + 1;
figure(fig);
imshow(lb);
lb = bitand(lb, bin2dec('10000000'));
fig = fig + 1;
figure(fig);
imshow(lb);
