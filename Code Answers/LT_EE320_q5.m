%defining signals picked up by microphones
[x1,x2] = AssignmentScenario(202135591);

% window of samples to investigate
Range = (19501:21548); 
X1 = fft(x1(Range)); 
X2 = fft(x2(Range));

%calculating intermediate variable 
X3 = X2./X1;

%calculating gain vector
gain = abs(X3);

%getting delay vector
delay = angle(X3);

%getting single gain value
avg_gain = mean(gain);   

%phase plot of delay vector
figure;
fs = 8000; % sampling frequency in Hertz
N = length(Range); % number of samples
f = (0:(N-1))/N*fs; % frequency scale
plot(f,delay); % plot magnitude of coefficient
xlabel("frequency f / [Hz]"); % label axes
ylabel("magnitude");
title('q5 phase response of delay')
hold on
plot([0 8000], [0 -6*pi], "r--") % line of best fit

