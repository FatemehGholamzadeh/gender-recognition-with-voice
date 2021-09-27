function[max1] = peakFinder(address)

% read audio file from an address
 [data , fs ] = audioread(address);
 
% getting length of data
 L = length (data) ;
 
 % determining horizontal axis
 omega = linspace(0 , fs , L);
 
 % calculating power of signal
 power = abs(fft(data)/L).^2;
 
%  finding maximun power
 max1 = 0;
 max2 = 0;
 for i=1:L
     if power(i,1) > max2
               max2 = power(i,1);
               max1 = omega(1,i);
     end 
 end
end