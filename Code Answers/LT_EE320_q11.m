%Determine the denominator and numerator coefficients ai and bi i=1,2,3 and
%plot the magnitude response in matlab

%note: q8 needs to be run before running this

fs = 8000;

%implementation using gamma=0.9

%define cutoff and sampling frequency and gamma value
Omega0 = 2*pi*500/8000; gamma1 = 0.9;

%define the coefficients of the denominator and numerator polynomials
a = [1 -2*gamma1*cos(Omega0) gamma1^2];
b = [1 -2*cos(Omega0) 1];

%define frequency scale
Omega = (0:1000)/1000*2*pi; 

%initialise loop that covers all points on the frequency scale
for k = 1:length(Omega)
Q(k) = (b(1) + b(2)*exp(-1i*Omega(k)) + b(3)*exp(-1i*2*Omega(k))) /...
(a(1) + a(2)*exp(-1i*Omega(k)) + a(3)*exp(-1i*2*Omega(k)));
end

%plot results
figure;
subplot(2,1,1);
plot(Omega/(2*pi)*8000,abs(Q));
xlabel("freq. f/[Hz]"); 
ylabel("magnitude");
title('q10 magnitude response y=0.9')
hold on; 

%implementation using gamma=0.99

%define cutoff and sampling frequency and gamma value
Omega0 = 2*pi*500/8000; gamma1 = 0.99;

%define the coefficients of the denominator and numerator polynomials
c = [1 -2*gamma1*cos(Omega0) gamma1^2];
d = [1 -2*cos(Omega0) 1];

%define frequency scale
Omega = (0:1000)/1000*2*pi; 

%initialise loop that covers all points on the frequency scale
for k = 1:length(Omega)
Q(k) = (d(1) + d(2)*exp(-1i*Omega(k)) + d(3)*exp(-1i*2*Omega(k))) /...
(c(1) + c(2)*exp(-1i*Omega(k)) + c(3)*exp(-1i*2*Omega(k)));
end

%plot results
subplot(2,1,2);
plot(Omega/(2*pi)*8000,abs(Q));
xlabel("freq. f/[Hz]"); 
ylabel("magnitude");
title('q10 magnitude response y=0.99')


