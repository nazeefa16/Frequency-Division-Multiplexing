function [] = main()

[signal3, fs3 ] = audioread( 'mariam.mp3' );
[x1t, x1filteredz] = audioLowpass3k(signal3, fs3);
x1 = modulation(3000, x1t, x1filteredz);

[signal9, fs9 ] = audioread( 'ibtsam.mp3' );
[x2t, x2filteredz] = audioLowpass3k(signal9, fs9);
x2 = modulation(9000, x2t, x2filteredz);

[signal15, fs15 ] = audioread( 'adeel.mp3' );
[x3t, x3filteredz] = audioLowpass3k(signal15, fs15);
x3 = modulation(15000, x3t, x3filteredz);

[signal21, fs21 ] = audioread( 'nazeefa.mp3' );
[x4t, x4filteredz] = audioLowpass3k(signal21, fs21);
x4 = modulation(21000, x4t, x4filteredz);

[sumSignal, t] = add4Signals(x1,x2,x3, x4);

[filtered3,filtered9,filtered15,filtered21] = bandpass(sumSignal);

x11 = modulation(3000, t, filtered3);
x22 = modulation(9000, t, filtered9);
x33 = modulation(15000, t, filtered15);
x44 = modulation(21000, t, filtered21);

[x1t, x1filteredz] = audioLowpass3k(x11, fs3);
[x2t, x2filteredz] = audioLowpass3k(x22, fs9);
[x3t, x3filteredz] = audioLowpass3k(x33, fs15);
[x4t, x4filteredz] = audioLowpass3k(x44, fs21);

audiowrite('1mariam.wav',x1filteredz,48000);
audiowrite('2ibtsam.wav',x2filteredz,48000);
audiowrite('3adeel.wav',x3filteredz,48000);
audiowrite('4nazeefa.wav',x4filteredz,48000);
end

