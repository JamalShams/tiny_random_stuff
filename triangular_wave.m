  %draw a triangle wave form
clc;
t=0:0.0002:10;
x=sawtooth(2*pi*0.5*t,0.5);
plot(t,x);
title 'Triangular';
xlabel 'Time';
ylabel 'Amplitude';