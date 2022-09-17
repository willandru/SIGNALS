clc, clear;
syms t
x1 = cos(2*t)+4*sin(4*t)+1;
x2= exp(j*2*t)/2 + exp(-j*2*t)/2 + 2*exp(j*4*t)/j -2*exp(-j*4*t)/j +1 ;

w0=2;
T=pi;

syms n 

y=exp(-j*n*w0*t);

C_n=(x2.*y);


impar=-9:2:9
par= -10:2:10

C=zeros(1,20)
CC=zeros(1,20)
for i=impar
    i
for k=0:0.1:pi
    for z=1:10
        p=subs(C_n,n,i);
        p=subs(p,t,k);
        p=complex(double(p));
        C(z)=p;
    end
CC=CC+C;
end
end
