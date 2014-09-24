[angle, numviews, ppV, views] = readViews('ct3.asc');

[x, y] = size(views);
figure(1);
mesh(views);

finalImg = double(zeros(ppV, ppV));

rot = 0;
for x = 1:1:numviews
    img = double(zeros(ppV, ppV));
    v = views(:, x);
    v = (v - min(v)) / max(v);
    for i = 1:1:ppV
        img(:, i) = v(i, :);
    end    
    img = imrotate(img, rot, 'bicubic', 'crop');
    figure(2);
    imshow(img, []);
    % img = imfilter(img, fspecial('motion', 21, 11), 'conv', 'circular');
    % finalImg = imadd(finalImg, img, 'uint8');
    finalImg = finalImg + img;
    rot = rot + angle;
    %figure(x + 1);
    %plot(v);
    %i = imrotate(v, angle, 'bilinear', 'crop');
    %imshow(i);
end
figure(3);
imshow(finalImg, []);
mesh(finalImg);