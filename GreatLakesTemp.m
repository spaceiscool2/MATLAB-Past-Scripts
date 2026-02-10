clear; clc; close all;

%% Image Coloring


img = imread('great_lakes_blank.png');
img_hsv = rgb2hsv(img);
hue = img_hsv(:,:,1);
sat = img_hsv(:,:,2);
val = img_hsv(:,:,3);


sat(:,:) = 1;
val(:,:) = 1;

load('great_lakes_temps.mat');

land = temps == -999; %changing land values
hue(land) = 0.8;
sat(land) = 0.2;
val(land) = 0.8;

water = temps ~= -999;%changing water values
hue(water) = 0.7 - 0.7 .* ((temps(water) - 6) ./ 18);
sat(water) = 1;
val(water) = 1;

img_hsv(:,:,1) = hue;
img_hsv(:,:,2) = sat;
img_hsv(:,:,3) = val;

imgnew = hsv2rgb(img_hsv);
imshow(imgnew)
% Done! Be sure to place your .png file in the lab worksheet

%% Image Cropping (call crop_img function)

cropped_img = crop_img(imgnew, [300 700], [250 490]);
imshow(cropped_img)



% Done! Be sure to place your .png file in the lab worksheet
