clear all
close all

[x,Fs]=audioread('recordingX.wav');

% Υπολογισμός του y(n)
b=[1 -1.9999 1];
a=[1 -1.8999 0.9025];
y = filter(b,a,x);


% Υπολογισμός DFT
X = abs(fft(x,Fs));
Y = abs(fft(y,Fs));

% Σχεδίαση σημάτων και φασμάτων
subplot(2,2,1),stem(x(1:80))
title('x(n)');
subplot(2,2,2),stem(y(1:80))
title('y(n)');
subplot(2,2,3),plot(X)
title('Spectrum of x(n)');
subplot(2,2,4),plot(Y)
title('Spectrum of y(n)');