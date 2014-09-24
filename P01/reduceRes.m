% tha, 8/2012
% only gets correct results for images of power of 2
function theImage = reduceRes(img, sz)
    [M N d] = size(img);
    m = M/sz;
    n = N/sz;
    theImage = uint8(zeros(M,N));
    tmpImage = uint8(zeros(sz, sz));
    szm = sz-1;
    idx = 1;
    for x = 1:sz:M
        idy = 1;
        for y = 1:sz:N
            tmpImage = img(x:x+szm, y:y+szm);
            pix = uint8(mean2(tmpImage));
            theImage(x:x+szm, y:y+szm) = pix;
            idy = idy + 1;
        end
        idx = idx + 1;
    end
end