% PES1UG20EC111 MAHIMA M NAIK
% CS 3

clear ;
close all;
clc;

% Plotting root locus for p = 15, 12, 11.5
% k = 15

n = [1 4/3];
d = conv([1 0 0], [0 1 15]);
tf_locus = tf(n,d);
subplot(2,2,1)
rlocus(tf_locus);
stable = rlocfind(tf_locus);
marginally_stable = rlocfind(tf_locus);
unstable = rlocfind(tf_locus);

disp("for k=15")
disp("Stable: "+ stable + newline() + "Marginally Stable:" + marginally_stable + newline() + "Unstable: " + unstable)

% k = 12

n = [1 4/3];
d = conv([1 0 0], [0 1 12]);
tf_locus = tf(n,d);
subplot(2,2,2)
rlocus(tf_locus);
stable = rlocfind(tf_locus);
marginally_stable = rlocfind(tf_locus);
unstable = rlocfind(tf_locus);

disp("For k=12")
disp("Stable: "+ stable + newline() + "Marginally Stable:" + marginally_stable + newline() + "Unstable: " + unstable)

% p = 11.5

n = [1 4/3];
d = conv([1 0 0], [0 1 11.5]);
tf_locus = tf(n,d);
subplot(2,2,3)
rlocus(tf_locus);
stable = rlocfind(tf_locus);
marginally_stable = rlocfind(tf_locus);
unstable = rlocfind(tf_locus);

disp("For k=12")
disp("Stable: "+ stable + newline() + "Marginally Stable:" + marginally_stable + newline() + "Unstable: " + unstable)