%  MAHIMA M NAIK
%  CS Q4
clc;
clear all;
close all;

num=[1];
den=[1 5 6];
sysg = tf(num,den);
t=[0:0.1:15];
sys1 = sysg;
rlocus(sys1), grid
hold on
plot([-0.4 -0.4],[-6 6],'--',...
[0 -6*tan(36.2*pi/180)],[0 6],'--',...
[0 -6*tan(36.2*pi/180)],[0 -6],'--')
hold off
[k,poles] = rlocfind(sys1)
figure
sys1_o = k*sys1;
sys1_cl = feedback(sys1_o,[1]);
[y1,t]=step(sys1_cl,t);
plot(t,y1),grid
xlabel('time [sec]'),ylabel('y(t)')
title('Unit step input')