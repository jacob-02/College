
clc;
clear ;
close all;

x=input('enter x[n]');
h=input('enter h[n]');
N=input('enter N:');
l1=length(x);
l2=length(h);

x=[x zeros(1,(N-l1))];
h=[h zeros(1,(N-l2))];


%inbuilt function
%y=cconv(x,h,N);

%---------------------------------------------------
 for n=1:1:N
     y(n)=0;
     for k=1:1:N
         y(n)=y(n)+x(k)*h(mod((n-k),N)+1);
     end
 end
 %end%
 %-----------------------------------------------------
 disp('the circular convulation of the two given sequence')

 n=0:N-1;
 figure;
subplot(3,1,1);
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('1st sequence');
subplot(3,1,2);
stem(n,h);
xlabel('Time');
ylabel('Amplitude');
title('2nd sequence');
subplot(3,1,3);
stem(n,y);
xlabel('Time');
ylabel('Amplitude');
title('circular Convolution');
disp(y)
disp(n)