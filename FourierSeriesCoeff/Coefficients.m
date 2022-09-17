clc, clear;

syms t n

x= exp(j*2*t)/2 + exp(-j*2*t)/2 + 2*exp(j*4*t)/j -2*exp(-j*4*t)/j +1 ;
T=pi;
w0=2*pi/T
y= exp(-n*j*t*w0)

C0= double((1/T)* int(x,0,T))

y1=subs(y,n,1)
C1=double((1/T)*int(x*y1,t,0,T))
y2=subs(y,n,2)
C2=double((1/T)*int(x*y2,t,0,T))
y3=subs(y,n,3)
C3=double((1/T)*int(x*y3,t,0,T))
y01=subs(y,n,-1)
C01=double((1/T)*int(x*y01,t,0,T))
y02=subs(y,n,-2)
C02=double((1/T)*int(x*y02,t,0,T))
y03=subs(y,n,-3)
C03=double((1/T)*int(x*y03,t,0,T))