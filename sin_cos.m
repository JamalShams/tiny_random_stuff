clc; clear all;
%
x=0:pi/10:2*pi;
xaxis=sin(x);
yaxis=cos(x);
plot(xaxis,yaxis,'g+')
hold on
plot(xaxis,yaxis,'r')