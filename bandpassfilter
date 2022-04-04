function [filtered3,filtered9,filtered15,filtered21] = bandpass(sumSignal)
q=figure;
load('bandPass3k.mat'); 
load('bandPass9k.mat');
load('bandPass15k.mat');
load('bandPass21k.mat');
filtered3=filter(bandPass3k,sumSignal); 
plotBandpass(48000,filtered3,221)
filtered9=filter(bandPass9k,sumSignal);
plotBandpass(48000,filtered9,222)
filtered15=filter(bandPass15k,sumSignal);
plotBandpass(48000,filtered15,223)
filtered21=filter(bandPass21k,sumSignal);
plotBandpass(48000,filtered21,224)
end

