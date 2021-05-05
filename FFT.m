clc; clear all; close all;
k=0:10; %Editable
x=[0 3 0 1 3 8 1 8 4 8 7]; %Values Changeable
X=fft(x,11); %12 point fft of x
%%Plotting the amplitude and angle of X
figure("Name","Fast Fourier Transform");
subplot(2,1,1);
stem(k,abs(X),'filled');
xlabel('k');
ylabel('Amplitude|X[k]|');
grid on;
title('FFT');
subplot(2,1,2);
stem(k,angle(X),'filled','r');
xlabel('k');
ylabel('Phase/Theeta');
grid on;