%defining signals picked up by microphones
[x1,x2] = AssignmentScenario(202135591);

%define sample frequency
fs = 8000;

%splice section where interference is dominant
interference_section = x1(1:250);

%defining time and scaling appropriately
time = (1:250)/fs;

%plotting the waveform
figure;
stem(time, interference_section);
xlabel("time (s)");
ylabel("amplitude");
title("Sinusoidal interference in Time Domain");