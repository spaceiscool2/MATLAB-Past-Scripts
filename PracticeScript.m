clear
close all

% read in the imf of the area around the dome
img = imread("dome_area.jpg");

% call function
[r,c,t] = GPS_data();

% tell matlab what to do with image and switch up the rgb
img(r-50:r+50, c-25:c+25, :) = 0;

% show img
imshow(img);