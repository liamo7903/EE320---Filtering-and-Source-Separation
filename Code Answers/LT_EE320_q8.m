%defining signals picked up by microphones
[x1,x2] = AssignmentScenario(202135591);

%define sample frequency
fs = 8000;  

%defining rho values
rho1 = 1/1.0934;      
rho2 = 1/1.3153;

y1 = filter(1,[1 0 0 0 -rho1*rho2],x2) + filter([0 0 0 -rho1],[1 0 0 0 -rho1*rho2],x1);
y2 = filter([0 -rho1],[1 0 0 0 -rho1*rho2],x2) + filter(1,[1 0 0 0 -rho1*rho2],x1);

sound(y1,fs);
%sound(y2,fs);
