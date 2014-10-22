% M. Thaler 5/2011
% make label table out of the label classes

function  lablTabl = getLabelMap(lblClasses)

% merge label Classes

[M N] = size(lblClasses);

lbl = 1;
for j = 1:N
    i = 1;
    while (i <= M)
        if (lblClasses(i,j) > 0)
            ci = i;
            i = M + 2;
        else
            i = i + 1;
        end
    end
    for k = ci+1:M
        if lblClasses(k,j) > 0
            lblClasses(ci,:) = or(lblClasses(ci,:), lblClasses(k,:));
            lblClasses(k,:) = 0;
            end
    end
end

% make label map

lablTabl = zeros(N,1);
lbl = 1;
for i = 1:M
    found = 0;
    for (j = 1:N)
        if lblClasses(i,j) > 0
            found = 1;
            lablTabl(j) = lbl;
        end
    end
    lbl = lbl + found;
end


end