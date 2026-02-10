% clear workspace and command window
clear; clc; close all;

% ------------------------------------------------------------------------
% Load wavefieldData.mat. This file contains all the data
load('wavefieldData.mat');

% Create the figure window
figure('Position', [10 10 900 500])

% ------------------------------------------------------------------------
% Graph 1: The Wave Field
% TODO: make the wave field


% Label the x, y, and z axes
xlabel('X Distance from origin (m)');
ylabel('Y Distance from origin (m)');
zlabel('topography (in 100ft)');

% Make the title
title('North Campus Wavefield');

% TODO: Set axes limits


% ------------------------------------------------------------------------
% Graph 2: The Flight Trajectory
% TODO: run a simulation of a rocket's flight trajectory


% Label the x, y, and z axes, and make the title
xlabel('X Distance from origin (m)');
ylabel('Y Distance from origin (m)');
zlabel('topography (in 100ft)');
title('Rocket Trajectory');

% ------------------------------------------------------------------------
% Graph 3: The Landing Sites
% TODO: plot the landing positions of the rocket


% Label the x, y, and z axes, and make the title
xlabel('X Distance from origin (m)');
ylabel('Y Distance from origin (m)');
zlabel('topography (in 100ft)');
title('Crash Sites');

% TODO: Set axes limits


% Save figure as lab5_wave.png
saveas(gcf,'lab5_wave.png');
