im = imread('test.tif');
imsize = size(im);
width = imsize(1);
height = imsize(2);
imshow(im);
newim = uint8(imsize);
sz = 3;

for i = 1:1:width
    tillx = i + sz;
    if tillx > width
        tillx = width;
    end
    subm = im(i:tillx, i:tillx);
    submsz = size(subm);
    cx = uint8((submsz(1) + 1) / 2);
    center = subm(cx, cx);
    submb(:, :) = center;
    newim(i:tillx, i:tillx) = subm;
end
figure(1);
imshow('test.tif');
figure(2);
imshow(newim, []);