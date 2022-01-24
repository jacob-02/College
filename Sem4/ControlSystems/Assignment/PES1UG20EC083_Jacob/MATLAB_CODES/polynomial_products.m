 %PES1UG20EC083
 clc;
P1 = [1 2 1];
P2 = [0 1 1];
P = conv(P1, P2);
disp(P)

r = roots(P);
P3 = poly(r);
disp(polyval(P3, 2));
disp(polyder(P3));
