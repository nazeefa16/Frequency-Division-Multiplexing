[y,Fs] = audioread('Mariam.mp3'); % y samples from audio with Fs sampling frequency in [Hz].
y = y(:,1); % Converting dual channel audio to single channel
string = ['Sampling Frequency (Fs): ',num2str(Fs)];
disp(string)
 
N = length(y); % sample length
span = N/Fs; % total time span of audio signal
t = linspace(0, N/Fs, N);
string2 = ['Length of the Audio: ', num2str(span), ' sec'];
disp(string2);
subplot(5,1,1);
plot(t,y); % plots the audio
title('Time domain Plot of sound signal');
xlabel('Time in seconds');
 
 
L = N;
Yshifted = fftshift(fft(y)/L) ; %This shifted version is only used for plotting
Y = fft(y,N);%This is used for compresssion
F = ((0:1/N:1-1/N)*Fs).';
mag = abs(Yshifted);
fvals = Fs*(-L/2:L/2-1)/L ;
 
%Plotting Frequency domain of signal
subplot(5,1,2);
plot(fvals,mag,'r');
title('Frequency spectrum of x(t)');
xlabel('f(Hz)');
ylabel('|F|')
 
%Selecting first L frequencies
l = 4000; %Lowercase 'l' is used for significant frequency components
l = l/2;
Ys = Y;
Ys(F>=l & F<=Fs-l) = 0;
newAudio = ifft(Ys,'symmetric');
Ys = fftshift(Ys/L);
disp('Playing compressed Audio'); 
sound(newAudio,Fs);
subplot(5,1,3);
 
plot(fvals,abs(Ys),'r'); % plot of compressed frequency spectrum
 
xlabel('f(Hz) ');
title('Compressed Freq spectrum');
ylabel('|Compressed F|');
audiowrite('compressed_Mariam.wav',newAudio,Fs);
 
%plotting the Audio
subplot(5,1,4)
plot(t,newAudio);
title('Compressed Audio');
xlabel('Time');
 
%Compression ratio
N1=l*2;
N2= 451056;
Cr=100-((N1/N2)*100);
string = ['Compression ratio (Cr): ',num2str(Cr)];
disp(string)
 
%signal distortion according to Harmonic Distortion
r=thd(newAudio); %total harmonic distortion
string = ['Signal Distortion (r): ',num2str(r)];
disp(string)

%Signal Distortion as Difference between compressed signal and orignal
distortion = y - newAudio; 
subplot(5,1,5);
plot(t,distortion);
xlabel('Time');
title('Signal Distortion Plot');


