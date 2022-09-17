clc, clear;

syms t
x=cos(2*t)+4*sin(4*t)+1

%plot(t,x)

T=pi
w0=2*pi/T


C0=(1/T)*int(x,t,0,T)

Cn=zeros(1,21)
a=1

for i=-10:1:10
    e=exp((-j*w0*i.*t))
    Cn(1,a)=double((1/T)*int(x*e,t,0,T))
    a=a+1;
end
