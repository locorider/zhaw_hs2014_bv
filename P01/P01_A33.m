file0 = 'lena.jpg';
file1 = 'rose.tif';
file = file1;
f = imread(file);
fig = 1;
figure(fig);
imshow(f, []);
for x = 0:1:5
    sz = 2 ^ x;
    f0 = reduceRes(f, sz);
    fig = fig + 1;
    figure(fig);
    imshow(f0, []);
end
sz = size(f);
sz = sz(1);
f0 = reduceRes(f, sz);
fig = fig + 1;
figure(fig);
imshow(f0, []);