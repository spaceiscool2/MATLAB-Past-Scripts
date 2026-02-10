% <Rene Jarquin-Le> 
% <Partner uniqname (or “none”)> 
% <> 
% <Date Submitted>

%------------------------------------------------------
% AUTOGRADER INFO -- IGNORE BUT DO NOT REMOVE 
% test_cases: true
% feedback('all')
% 6c26a5aa-cdd9-4698-b802-b82bb8db8a25
%------------------------------------------------------

function [ img ] = heatmap( img, rad )
    %heatmap Generates a heatmap image by using values from rad to set
    %  values in the hue channel for img. Hue values vary smoothly
    %  depending on the corresponding radiation level.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    % TODO your code here
    %reference heatmap lab
    % convert image from rgb to hsv
    img = imread('dome_area.jpg');
    rad = scan_radiation(30);
    rad = removeNoise(rad, 15);
    img = rgb2hsv(img);
    
    % hue
    hue = imgHsv(:,:,1);
    hueimg = 0.7 - 0.7 .* rad ./ 100.0;

    % saturation 

    sat = imgHsv(:,:,2);
    satimg = 1;

    % value
    val = imgHsv(:,:,3);

    heatmap = hsv2rgb(img);
    imshow(heatmap(img,rad));
    return

    %areaLand = (temps==-999);
    %areaWater = (~areaLand);
    %hue(areaWater)= 0.7 - (0.7 .* ((temps(areaWater) - 6) ./ 18));
    %hue(areaLand)=0.8;
    %sat(areaWater)=1;
    %sat(areaLand)=0.2;
%     val(areaWater)=1;
%     val(areaLand)=0.2;
%     imgHsv(:,:,1)= hue;
%     imgHsv(:,:,2)= sat;
%     imgHsv(:,:,3)= val;
%     imgMod = hsv2rgb(imgHsv);
%     10imshow(imgMod);
% 
 end
% 
