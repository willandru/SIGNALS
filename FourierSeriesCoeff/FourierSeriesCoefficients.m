%% Get Fouroier Series Coefficients of 'x'
clc, clear;

syms t
x=cos(2*t)+4*sin(4*t)+1

%plot(t,x)
%The period 'T' was calculated manually
T=pi
w0=2*pi/T


C0=(1/T)*int(x,t,0,T)

Cn=zeros(1,21)
a=1

for N=-10:1:10
    e=exp((-j*w0*N.*t))
    Cn(1,a)=double((1/T)*int(x*e,t,0,T))
    a=a+1;
end

%% Get Magnitud and Phase
C_mag=zeros(1,21);
C_phase=zeros(1,21);
b=1;

for i=1:1:21
    C_mag(1,b)=abs(Cn(1,i));
    C_phase(1,b)=angle(Cn(1,i));    b=b+1;
end

N=-10:1:10
figure(1)
subplot(1,2,1)
stem(N,C_mag)
subplot(1,2,2)
stem(N,C_phase)

%% Get mean Potency
potenciaInstantanea=(abs(x)).^2;
potenciaPromedio=double(int(potenciaInstantanea,t,0,T))
