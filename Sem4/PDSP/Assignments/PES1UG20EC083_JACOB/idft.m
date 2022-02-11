clc;
clear;
close all;

Xk=input('enter the input sequence');
xn=calcidft(Xk);
N=length(xn);

disp('x[n]=');
disp(xn);
n=0:N-1;
stem(n,xn);
title('idft sequence');
xlabel('time');
ylabel('amplitude');

function [xn]=calcidft(Xk)
N=length(Xk);
for k=0:1:N-1
for n=0:1:N-1
p=exp(1i*2*pi*n*k/N); % value of (wn)^kn
IT(k+1,n+1)=p; %T is the transformation maatrix
end
end
disp('Transformation Matrix of IDFT')
disp(IT);
xn = (IT*(Xk.'))./N;
end