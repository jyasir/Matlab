% Date: 11/3/2017
% Analyzing the Corrupt Signal in a word document
% Details on Filters

% Original Signal
% File Name is 'THEFORCE.WAV'

clc;
clear;

[y Fo] = audioread('THEFORCE.wav');
NFFT = 1024 % Number of FFT samples
Y = fft(y, NFFT);
freq_o = 0:NFFT-1; % Offsetting results to start from zero on the plot
freq_O = Fo * (0:(NFFT/2)-1)/NFFT; % Frequency in Hz for a Single-Sided Spectrum
plot(freq_O, abs(Y(1:NFFT/2)));
grid on;
xlabel('Freq in Hz');
ylabel('FFT Magnitude');

[x Fc] = audioread('corruptvoice.wav');
X = fft(x, NFFT);
freq_C = Fc * (0:(NFFT/2)-1)/NFFT;
plot(freq_C, abs(X(1:NFFT/2)));
grid on;
xlabel('Freq in Hz');
ylabel('FFT Magnitude');

%Designing Filter for Low Frequency Noise Element

Wp1 = [800/4000 1000/4000];
Ws1 = [810/4000 990/4000];
[N1, Wn1] = buttord(Wp1, Ws1, 3, 50);
[b, a] = butter(2, Wn1, 'stop');
xx = filter(b,a,x);
%sound(xx);
XX = fft(xx, NFFT);
plot(freq_C, abs(XX(1:NFFT/2)));
xlabel('Freq in Hz');
ylabel('FFT Magnitude');

%Designing Filter for High Frequency Noise Element

Wp2 = [2600/4000 2800/4000];
Ws2 = [2650/4000 2750/4000];
[N2, Wn2] = buttord(Wp2, Ws2, 3, 50);
[d, c] = butter(9, Wn2, 'stop');
% xx is the filtered noise from first Bandstop filter
zz = filter(d, c, xx);
%sound(zz);
ZZ = fft(zz, NFFT);
plot(freq_C, abs(ZZ(1:NFFT/2)));
xlabel('Freq in Hz');
ylabel('FFT Magnitude');
grid on;



