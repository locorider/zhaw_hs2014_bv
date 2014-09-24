[angle, numviews, ppV, views] = readViews('ct1.asc');

[x, y] = size(views);
figure(1);
mesh(views);

finalImg = uint8(zeros(ppV, ppV));

for x = 1:1:numviews
    img = uint8(zeros(ppV, ppV));
    v = views(:, x);
    mv = max(v);
    for i = 1:1:ppV
        val = v(i) / mv;
        for p = 1:1:ppV
            img(i, p) = val;
        end
    end
    imshow(img);
    img = imrotate(img, angle, 'neares', 'crop');
    finalImg = imadd(finalImg, img, 'uint8');
    %figure(x + 1);
    %plot(v);
    %i = imrotate(v, angle, 'bilinear', 'crop');
    %imshow(i);
end
imshow(finalImg);