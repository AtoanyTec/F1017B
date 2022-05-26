% Interpolación

clc
clear all
close all

x = 0:pi/4:2*pi; 
v = sin(x);

figure
plot(x,v,'o-');
xlim([0 2*pi]);
title('Original data');

%Query interpolation
xq = 0:pi/16:2*pi;


%Interpolación lineal
figure
vq1 = interp1(x,v,xq);
plot(x,v,'o',xq,vq1,':.');
xlim([0 2*pi]);
title('(Default) Linear Interpolation');


%Interpolación spline
figure
vq2 = interp1(x,v,xq,'spline');
plot(x,v,'o',xq,vq2,':.');
xlim([0 2*pi]);
title('Spline Interpolation');
