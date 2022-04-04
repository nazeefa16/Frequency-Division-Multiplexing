function [] = plotBandpass(f,sig,num)
L = length(sig)
fy = fftshift(fft(sig)/L);   %Fourier Transform of Signal
m_fy = abs(fy);
fval = (-L/2:L/2-1)*f/L;
subplot(num), plot(fval,m_fy)
title('BandPass Filtered - Frequency Domain')
end

