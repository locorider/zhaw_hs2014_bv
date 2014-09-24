%-----------------------------------------------------------------------
% M. Thaler, ZHW, 2007
% read angle, number of views, points per view and the views
%-----------------------------------------------------------------------

function [angle, numViews, ppV, views] = readViews(fileName)
    fid       = fopen(fileName);
    angle     = double(fscanf(fid, '%e',1));
    numViews  = int32(fscanf(fid, '%e',1));
    ppV       = int32(fscanf(fid, '%e',1));
    views     = double(fscanf(fid, '%e', [double(ppV) double(numViews)])); 
    fclose(fid);
end