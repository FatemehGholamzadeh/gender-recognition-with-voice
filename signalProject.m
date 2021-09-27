clear workspace;

% read audio file
[data , fs] = audioread('D:\matlabCodes\voices\v11.mp3');

% getting length of data
N = length(data);

% calculating power of signal
pow = abs(fft(data)/N).^2;

% determining x axis
hz = linspace(0,fs,N);

% finding peak frequency of voice
[y,x] = findpeaks(pow , 'sortstr' , 'descend');
bound = y(1);

% plotting power spectrum
plot(hz,pow,'color',[0 0.5 0],'markerfacecolor','m','linew',1);
title('power spectrum')
xlabel('frequency')
ylabel('power')
axis([0 1000 0 bound]);
