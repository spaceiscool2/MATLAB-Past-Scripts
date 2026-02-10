

% Specify the output file name
 

clear
close all

% Load the image of the dome
img = imread('vehicularmanslaughter.jpg');

% Specify the output file name
filename = 'vehicularmanslaughter.gif'; 


% convert it to a format we can write to a .gif file 
[A,map] = rgb2ind(img,256);

% start the .gif file with this first image
imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',0.25);

img2 = imread('vehicularmanslaughterupdate.jpg');
[A,map] = rgb2ind(img2,256);
imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.25);