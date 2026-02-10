function [maxDensity] = bamDen(bamboo_density, numRowsToSkip, numColsToSkip)

clc
close all
% read in data file
data = csvread(bamboo_density, numRowsToSkip, numColsToSkip);

% generate contour
contourf(data, 12);

% edit contour
colorbar
ax = gca;
ax.XTickLabel = [];
ax.YTickLabel = [];

maxDensity = max(max(bamboo_density));
display(maxDensity)
end