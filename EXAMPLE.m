%% Copyright (c) 2021 Tamas Kis

% Example for using the slope_field function.

% AUTHOR: Tamas Kis
% LAST MODIFIED: January 9, 2021



%% SCRIPT SETUP

% clears variables and command window, closes all figures
clear;
clc;
close all;



%% EXAMPLE

% defines the differential equation dy/dx = f(x,y) = y/(3-x)
f = @(x,y) y/(3-x);

% plots the slope field for dy/dx = y/(3-x) for x between 0 and 10, y
% between -5 and 5, 25 line density, red line color, and 1 line width
slope_field(f,[0,10],[-5,5],25,'r',1);
xlabel("$x$",'interpreter','latex','fontsize',18);
ylabel("$y$",'interpreter','latex','fontsize',18);
title("Slope Field for $\displaystyle\frac{dy}{dx}=\frac{y}{3-x}$",...
    'interpreter','latex','fontsize',20);

% plots same slope field but with the default settings
slope_field(f,[0,10],[-5,5]);
xlabel("$x$",'interpreter','latex','fontsize',18);
ylabel("$y$",'interpreter','latex','fontsize',18);
title("Slope Field for $\displaystyle\frac{dy}{dx}=\frac{y}{3-x}$",...
    'interpreter','latex','fontsize',20);