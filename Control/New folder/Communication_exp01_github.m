
clc;

nums = ['1' '2' '3';'4' '5' '6'; '7' '8' '9'; '*' '0' '#'];

FREl = [697,770,852,941];
FREu = [1209,1336,1477];

rec = audiorecorder;
display('Press your key...');
recordblocking(rec,5);
display('Processing...');
wave = getaudiodata(rec);
fs = 8000;
t = 0:1/fs:(length(wave)-1)/fs;

figure(1);
plot(t,wave);
title('Wave File');
ylabel('Amplitude');
xlabel('Length (in seconds)');

n=length(wave)-1;
incr = fs/n;
f=0:incr:1700;

wavefft=abs(fft(wave));

wavetmp = wavefft(1:length(f));

smLL = round(650/incr);
smUL = round(950/incr);
upLL = round(1150/incr);
upUL = round(1650/incr);

fl = 650:incr:950;
wavelow = wavetmp(smLL:smUL);
figure(3);
plot(fl,wavelow(1:length(fl)));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('The Wave FFT');

fu = 1150:incr:1650;
waveup = wavetmp(upLL:upUL);
figure(4);
plot(fu,waveup(1:length(fu)));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('The Wave FFT');

[maxL,indexL] = max(wavelow);
[maxU,indexU] = max(wavetmp(upLL:upUL));

lowerFreq = round(fl(indexL))
upperFreq = round(fu(indexU))

lowDiff = abs(FREl - lowerFreq);
upDiff = abs(FREu - upperFreq);

[val,inL] = min(lowDiff);
[valU, inU] = min(upDiff);

display('You pressed: ');
display(nums(inL,inU));
keypad = tones(:,5),Fs,16; % 5 is button pressed on keypad
sound(keypad)