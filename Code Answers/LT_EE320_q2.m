%defining signals picked up by microphones
[x1,x2] = AssignmentScenario(202135591);

fs = 8000; % sampling frequency in Hertz
f = (0:length(x2)-1)/length(x2)*fs; % frequency scale
plot(f,abs(fft(x2))); % discrete Fourier transform of x
xlabel("frequency f / [Hz]"); % label axes
ylabel("magnitude");
title('Discrete time fourier transform of interference')