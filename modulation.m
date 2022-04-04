function [modulatedSignal] = modulation(freq, t, filteredz)
z = figure
L = length(filteredz);
f = 48000;

funCos = cos(2*pi*freq*t);       
modulatedSignal = funCos(:) .* filteredz(:);

t = linspace(0,L/f,L);
subplot(211), plot(t,modulatedSignal)
title('Modulated Signal - Time Domain')

fy = fftshift(fft(modulatedSignal)/L);   %Fourier Transform of Signal
m_fy = abs(fy);
fval = (-L/2:L/2-1)*f/L;
subplot(212), plot(fval,m_fy)
title('Modulated Signal - Frequency Domain')
end

