clear;
clc;

% Finding the transfer function of 2 systems connected in Parallel
% First system
Num1 = input('Enter the coefficents of the 1st system numerator polynomial');
den1 = input('Enter the coefficents of the 1st system denominator polynomial');

%Second System
Num2 = input('Enter the coefficents of the 2nd system numerator polynomial');
den2 = input('Enter the coefficents of the 2nd system denominator polynomial');

% To obtain the transfer function
sys1 = tf(Num1, den1)
sys2 = tf(Num2, den2)
sys = parallel(sys1, sys2)