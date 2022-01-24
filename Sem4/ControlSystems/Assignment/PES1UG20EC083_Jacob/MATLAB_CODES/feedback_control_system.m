clear;
clc;
numg = 1;
deng = [1 1];
numh = 1;
denh = [1 1];
sysg = tf(numg, deng)
sysh = tf(numh, denh)
sys = feedback(sysg, sysh)