function [cropped_img] = crop_img(img, rowsVector, columnsVector)
%% 1. "Crop" the image by only selecting the section to keep based on the rows and columns vectors

toprow = rowsVector(1);
bottomrow = rowsVector(2);

topcol = columnsVector(1);
bottomcol = columnsVector(2);

cropped_img = img(toprow:bottomrow,topcol:bottomcol,:);    

end

% cropped_img = crop_img(img, [10 50], [35 100]);