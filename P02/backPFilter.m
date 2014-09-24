% tha, 10/2010
% function to filter views for back-projection

function filteredView = backPFilter(f, N)
    h = double(zeros(N,1));
    lim = floor(N/2);
    Nm  = floor(lim+1);
    if (lim/2-floor(lim/2)) < 0.1
        lim = lim-1;
    end
    h(Nm) = 1;
    for k = -lim:2:lim
        h(k+Nm) = -4 / pi^2 / k^2;
    end
    g = conv(f, h);
    filteredView = g(Nm:length(g)-(Nm-1));
end