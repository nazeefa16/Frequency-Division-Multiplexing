function [t, filteredz] = audioLowpass3k(signal, fs)
fw = figure
L = length(signal);
t = linspace(0,L/fs,L);
subplot(221), plot(t,signal) %plot time domain signal
title('Audio Signal - Time Domain')

fy = fftshift(fft(signal)/L);   %Fourier Transform of Signal
m_fy = abs(fy);
fval = (-L/2:L/2-1)*fs/L;
subplot(222), plot(fval,m_fy)
title('Audio Signal - Frequency Domain')

load('Lpass3k.mat');            %Load low pass filter

filteredz=filter(LPass3k,signal);   %filter and plot time domain signal
subplot(223), plot(t,filteredz)
title('Filtered Audio Signal - Time Domain')

ffilteredz = fftshift(fft(filteredz)/L); %filtered plot fourier transform
m_ffilteredz = abs(ffilteredz);
subplot(224), plot(fval,m_ffilteredz)
title('Filtered Audio Signal - Frequency Domain')

end

