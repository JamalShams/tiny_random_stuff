clear all
close all
%finding the z transform and inverse z transforms
%lecture 18....
%example 3
syms z n
exp3=2*(2^n)+4*(1/2)^n %Question
answer_exp3=ztrans(exp3)    %Taking z transform
%example 4
x1=((1/4)^n)-1      %Question
x2=(1+(1/2)^n)      %Question
y1=ztrans(x1);      %Taking z transform
y2=ztrans(x2);      %Taking z transform
w=y1*y2;            %Finding Convolution
answer_exp4=iztrans(w)  %Taking inverse z transform

%example 5
%finding the inverse z transform
a=(6-9*z^-1)/(1-(2.5*z^-1)+(z^-2))
X_inverse_of_a=iztrans(a) %Taking inverse z transform
b=1/((1+z^-1)*(1-z^-1)^2)
Y_inverse_of_b=iztrans(b) %Taking inverse z transforms