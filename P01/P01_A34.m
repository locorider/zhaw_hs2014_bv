
f = imread('C:\Users\neo\Dropbox\Documents\ZHAW\HS2014\BV\P01\lenaV.tif');

[w h] = size(f);
wh = w / 2;
hh = h / 2;

q0 = f(1:wh, 1:hh);
q1 = f(wh-1:w, 1:hh);
q2 = f(1:wh, hh:h-1);
q3 = f(wh:w-1, hh:h-1);
figure(1);
imshow(q0);
figure(2);
imshow(q1);
figure(3);
imshow(q2);
figure(4);
imshow(q3);

nf = uint8(zeros(w, h));
q0sz = size(q0);
q3sz = size(q3);
% top left
for x = 1:1:wh
    for y = 1:1:hh
        nf(x, y) = q2(x, y);
    end
end
% bottom left
for x = wh:1:w-1
    for y = 1:1:hh
        nf(x, y) = q1(x - (wh - 1), y);
    end
end
% top left
for x = 1:1:wh
    for y = hh:1:h-1
        nf(x, y) = q3(x, y - (hh - 1));
    end
end
% bottom right
for x = wh:1:w-1
    for y = hh:1:h-1
        nf(x, y) = q0(x - (wh -1), y - (hh - 1));
    end
end
figure(5);
imshow(nf);
% for x = 1:1:q0sz