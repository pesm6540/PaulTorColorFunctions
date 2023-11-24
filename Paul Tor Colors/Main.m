close all
clear 

% Example Datasets
load("O1H1.mat");
load("O3H1.mat");
load("O4H1.mat");
load("O5H1.mat");
load("O6H1.mat");

% Datapoint Size
sz = 10;

%% Qualitative Example PaulTor_Qual
% Input Options - All Greys & B/W are Last Indices:
%   "Bright": 6 Colors & 1 Grey
%   "High-Contrast": 3 Colors & Both Black/White
%   "Vibrant": 6 Colors & 1 Grey
%   "Muted": 9 Colors & 1 Grey
%   "Medium-Contrast": 6 Colors & Both Black/White
%   "Pale-Dark": 10 Colors & 2 Greys
%   "Light": 8 Colors & 1 Grey
Colors = PaulTor_Qual("Bright");

figure(1);
hold on;
title("Harmonization 1, Figaro 1");
    scatter(O1H1.DateTime, O1H1.Fig1, sz, Colors(1,:), 'filled');
    scatter(O3H1.DateTime, O3H1.Fig1, sz, Colors(2,:), 'filled');
    scatter(O4H1.DateTime, O4H1.Fig1, sz, Colors(3,:), 'filled');
    scatter(O5H1.DateTime, O5H1.Fig1, sz, Colors(4,:), 'filled');
    scatter(O6H1.DateTime, O6H1.Fig1, sz, Colors(5,:), 'filled');
    xlim([O1H1.DateTime(1) O1H1.DateTime(end)]);
    legend({"OPOD1", "OPOD3", "OPOD4", "OPOD5", "OPOD6"});

%% Diverging Colormap Examples PaulTor_Div
% Input Options - Also Returns Error Color (2 Matrices):
%   "Sunset": Red --> Orange --> Yellow --> Blue
%   "BuRd": Blue --> Red
%   "PrGn": Purple --> Green
%   "YlOrBr": Yellow --> Orange --> Brown
%   "Iridescent": Yellow, Purple, Blue, etc.
%   "Ground-Cover": Meant for Mapping Terrain
[CM, NA]= PaulTor_Div("Sunset");

figure(2);
hold on;
title("Harmonization 1 OPOD6, MiCS-2611 with Temp Overlay");
    scatter(O6H1.DateTime, O6H1.Fig2, sz, O6H1.T, 'filled');
    xlim([O1H1.DateTime(1) O1H1.DateTime(end)]);
    colormap(CM);
    cb = colorbar;
    ylabel(cb,"Temperature [C]");

%% Rainbow Example PaulTor_Rainbow
% Input Options: Any Number 1 - 23 will return that many rainbow colors
Rainbow = PaulTor_Rainbow(5);

figure(3);
hold on;
title("Harmonization 1, Figaro 2");
    scatter(O1H1.DateTime, O1H1.Fig2, sz, Rainbow(1,:), 'filled');
    scatter(O3H1.DateTime, O3H1.Fig2, sz, Rainbow(2,:), 'filled');
    scatter(O4H1.DateTime, O4H1.Fig2, sz, Rainbow(3,:), 'filled');
    scatter(O5H1.DateTime, O5H1.Fig2, sz, Rainbow(4,:), 'filled');
    scatter(O6H1.DateTime, O6H1.Fig2, sz, Rainbow(5,:), 'filled');
    xlim([O1H1.DateTime(1) O1H1.DateTime(end)]);
    legend({"OPOD1", "OPOD3", "OPOD4", "OPOD5", "OPOD6"});
