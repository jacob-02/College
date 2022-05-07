
% PES1UG20EC111 MAHIMA M NAIK
% CS Q.1
clc;
clear ;
close all;

ng11= [1 -1 2];
dg11= [1 2 1];
%k=1
nf=[0 0 1];
df=[0 0 1];
[num11,den11]=feedback(ng11,dg11,nf,df);
figure
subplot(221)
step(num11,den11)
title('Step response of G1(s)')
xlabel('t')
ylabel('y1(t)')

G1=tf(num11,den11)
pole(G1)
%zero(G1)

%k=2
ng12= [2 -2 4];
dg12= [1 2 1];

[num12,den12]=feedback(ng12,dg12,nf,df);

subplot(222)
step(num12,den12)
title('Step response of G1(s)')
xlabel('t')
ylabel('y2(t)')

G2=tf(num12,den12)
pole(G2)
%zero(G2)

%k=5
ng13= [5 -5 10];
dg13= [1 2 1];

nf=[0 0 1];
df=[0 0 1];
[num13,den13]=feedback(ng13,dg13,nf,df);

subplot(223)
step(num13,den13)
title('Step response of G1(s)')
xlabel('t')
ylabel('y3(t)')

G3=tf(num13,den13)
pole(G3)
%zero(G3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ng21= [0 0 0 1];
dg21= [1 2 4 0];

nf=[0 0 1];
df=[0 0 1];
[num21,den21]=feedback(ng21,dg21,nf,df);
figure
subplot(221)
step(num21,den21)
title('Step response of G2(s)')
xlabel('t')
ylabel('y1(t)')

G4=tf(num21,den21)
pole(G4)
%zero(G4)

ng22= [0 0 0 4];
dg22= [1 2 4 0];

nf=[0 0 1];
df=[0 0 1];
[num22,den22]=feedback(ng22,dg22,nf,df);

subplot(222)
step(num22,den22)
title('Step response of G2(s)')
xlabel('t')
ylabel('y2(t)')

G5=tf(num22,den22)
pole(G5)
%zero(G5)

ng23= [0 0 0 8];
dg23= [1 2 4 0];

nf=[0 0 1];
df=[0 0 1];
[num23,den23]=feedback(ng23,dg23,nf,df);

subplot(223)
step(num23,den23)
title('Step response of G2(s)')
xlabel('t')
ylabel('y3(t)')

G6=tf(num23,den23)
pole(G6)
%zero(G6)