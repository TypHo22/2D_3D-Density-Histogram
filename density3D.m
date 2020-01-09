function  density3D(x,y)
%DENSITY3D Summary of this function goes here
% This function makes a 2d histogram as an alternative to plotting data points and visually estimating where the most data is. 
% Input:
%       x: nx1 or 1xn double vector
%       y: nx1 or 1xn double vector
% Explanation: https://blogs.mathworks.com/videos/2010/01/22/advanced-making-a-2d-or-3d-histogram-to-visualize-data-density/  
%% Andreas Bernatzky 09.01.2020
n = 49;
if(iscolumn(x)==0 && iscolumn(y) == 0 && length(x) == length(y)) % make sure both vectors have the same length
x=x';
y=y';
else
    error('Error, Vectors do not have the same length or both do not have the same format');
end

xi = linspace(min(x(:)),max(x(:)),n);
yi = linspace(min(y(:)),max(y(:)),n);

xr = interp1(xi,1:numel(xi),x,'nearest');
yr = interp1(yi,1:numel(yi),y,'nearest');

Z = accumarray([xr yr],1, [n n]);
figure()
surf(Z);
end

