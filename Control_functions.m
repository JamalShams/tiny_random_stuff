close all
clear all
%This program is used to generaete different Control Functions
max_width = 20;
n=-max_width:1:max_width;
l=length(n);
for i=1:l;
    if n(i)==0;
        impulse(i)=1;
    else
        impulse(i)=0;
    end
    if n(i)>=0;
        step(i)=1;
        ramp(i)=n(i);
    else
        step(i)=0;
        ramp(i)=0;
    end
end
a=0.85;
expo=a.^n;
f=0.05;
sine=sin(2*pi*f*n);
subplot(3,3,1)
stem(n,impulse); title("Impulse")
subplot(3,3,2)
stem(n,step); title("Step")
subplot(3,3,3)
stem(n,ramp); title("Ramp")
subplot(3,3,4)
stem(n,expo); title("Exponential")
subplot(2,3,5)
stem(n,sine); title("Sine")