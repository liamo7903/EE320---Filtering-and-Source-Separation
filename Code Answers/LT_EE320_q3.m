%defining signals picked up by microphones
[x1,x2] = AssignmentScenario(202135591);

%define sample frequency
fs = 8000;

%defining upper and lower limit
lower_lim = 19500;
upper_lim = 21548;

%splice section where interference is dominant
interference_section = x1(lower_lim:upper_lim);

%defining time and scaling appropriately
time = (lower_lim:upper_lim)/fs;
    
%plot(time, interference_section);
plot(time,x1(lower_lim:upper_lim));
xlabel("time (s)");
ylabel("amplitude");
title("delay in Time Domain");
hold on
plot(time,x2(lower_lim:upper_lim));
legend('x1[n]','x2[n]');

