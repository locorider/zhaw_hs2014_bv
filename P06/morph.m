% M. Thaler, ZHAW, 5/2011
% 
clear all; close all;

f = imread('squares.tif');
[M N] = size(f);

%figure(1), imshow(f,[]);

% find squares of size 5x5
% ... begin your code

% ... end your code

% extract components one by one

imshow(f2);
count = int32(0);
x = 1; y = 1;
while ((x < M + 1) && (y < N + 1))
    if f(x,y) > 0
        figure(1); imshow(f,[]);
        pause(1.0);
        a = extract(f, x, y);
        f = and(a, f); 
        y = 1;
        count = count + 1;
    else
        y = y + 1;
        if y > N
            y = 1;
            x = x + 1;
        end
    end
end

count = int32(count);
str = sprintf('number of objects: %d', count);
msgbox(str);
