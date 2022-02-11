clc;
clear;
close all;
xn=input('enter the input sequence');
N=input('enter the no. of points');
Xk=calcdft(xn,N); %calling a function named calcdft

disp('DFT X(k)=')
disp(Xk)
magXk=abs(Xk); %magnitude of dft
phaseXk=angle(Xk);
k=0:N-1;
subplot(2,1,1);
stem(k,magXk);
title('fft sequence');
xlabel('frequency');
ylabel('magnitude');
subplot(2,1,2);
stem(k,phaseXk);
title('Phase of fft sequence');
xlabel('frequency');
ylabel('phase');

function [Xk] = calcdft(xn,N) %definition of calcdft function
L=length(xn);
if(N<L)
    error('N must be >= L');
end
x1=[xn zeros(1,N-L)]; %appending zeroes to the left over places
for k=0:1:N-1 %to keep track of values taken by k
for n=0:1:N-1 %to keep track of values taken by n
p=exp(-1i*2*pi*n*k/N); % value of (wn)^kn
T(k+1,n+1)=p; %T is the transformation maatrix
end
end
disp('Transformation Matrix of DFT')
disp(T);
Xk=T*x1.'
end