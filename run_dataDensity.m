
%% run_dataDensity
% Example of how to visualize real dense 2d data in a more easier way
%
%% Andreas Bernatzky 09.01.2020
clear all;
close all;
pointAmount = 10000;
x = rand(1,pointAmount);
y = rand(1,pointAmount);
% create a hotspot
x1Hot = rand(1,pointAmount) * 0.5 + 0.25; 
y1Hot = rand(1,pointAmount) * 0.5 + 0.25;
x = [x,x1Hot];
y = [y,y1Hot];
plot(x,y,'.');

density3D(x,y);