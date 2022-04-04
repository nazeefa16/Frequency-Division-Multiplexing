function [sig, t] = add4Signals(x1,x2,x3, x4)
z = figure;
f = 48000;
l1=length(x1);
l2=length(x2);
l3=length(x3);
l4=length(x4);
L = min([l1 l2 l3 l4]);

sig=zeros(1,L);
    for i=1:L
        sig(i) = x1(i) + x2(i) + x3(i) + x4(i); 
    end

t = linspace(0,L/f,L);
subplot(211), plot(t,sig)
title('4 Signals Added - Time Domain')

fy = fftshift(fft(sig)/L);   %Fourier Transform of Signal
m_fy = abs(fy);
fval = (-L/2:L/2-1)*f/L;
subplot(212), plot(fval,m_fy)
title('4 Signals Added - Frequency Domain')

end
