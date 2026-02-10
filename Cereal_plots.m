clear; clc; close all;

% 1. Read in the numeric data from 'cereals.csv'


%% Sugars Histogram

figure(1);
% 2. Generate a histogram of the sugars content across all cereals.
% Customize the bins to be 0-1, 1-2, 2-3, etc. by specifying an "edges"
% parameter.
% HINT: Look up histogram documentation and think about range notation.


% 3. Set axes labels and plot title to match slide 11.




% 4. Set the font size to be 14.


% 5. Save the figure as a png called 'sugars_histogram.png'.



%% Calories by Manufacturer Multiple Boxplot

figure(2);
% 6. Create a multiple boxplot of calories per serving grouped by cereal
% manufacturer code.
% HINT: See boxplot documentation, particularly 'create box plots for
% grouped data' example.


% 7. Set axes labels and plot title to match the lab slides example.




% 8. Use xticklabels to label the boxes "G", "K", "P", "Q", and "R".


% 9. Set the font size to be 14. Turn the grid on.



% 10. Save the figure as a png called 'cals_by_manufacturer_boxplots.png'.



%% Data Analysis Questions

% 11. Use histcounts to find the percent of cereals that have over 10 grams
% of sugars per serving; store answer in a variable 'percent_above_10'.
% HINT: Look up histcounts documentation and specify [0,10,16] for edges.



% 12. Create a subset variable 'Quaker_Oats' that only contains cereal data
% for cereals made by Quaker Oats (see slides for manufacturer codes)


% 13. Use the max function to find the cereal with the highest sugars
% content and store that cereal's manufacturer code in a variable
% 'sugariest_cereal_manufacturer'.



% DONE! Please place your code and 2 figures in the lab slides.
