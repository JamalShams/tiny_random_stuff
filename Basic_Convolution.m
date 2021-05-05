%Clearing the past
clc;
clear all;
close all;
n=0:8; %Number of elements
x=[5 6 1 -2 4 0 7 -4 0]; %Elements
h=[1 2 3 4 5 6 0 0 0]; %Elements
y=conv(x,h); %Built-in convolution function
subplot(3,1,1);
stem(n,x,'k','filled'); title("input")
grid;
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
stem(n,h,'r','filled'); title("h[x]")
grid;
xlabel('n');
ylabel('h[n]');
subplot(3,1,3);
stem(n,y(1:length(n)),'r','filled'); title("Convolved")
grid;
xlabel('n');
ylabel('y[n]=x[n]*h[n]');