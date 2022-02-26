clc;

p1 = 0.5;
p2 = 1;
p3 = 2;
p4 = 10;

G1 = tf([0 1], [1 p1]);
G2 = tf([0 1], [1 p2]);
G3 = tf([0 1], [1 p3]);
G4 = tf([0 1], [1 p4]);

%plot the step response

xlabel('t');
ylabel('y1(t)')
subplot(2, 2, 1)
step(G1);
title('System G1');


xlabel('t');
ylabel('y2(t)')
subplot(2, 2, 2)
step(G2);
title('System G2');

xlabel('t');
ylabel('y3(t)')
subplot(2, 2, 3)
step(G3);
title('System G3');

xlabel('t');
ylabel('y4(t)')
subplot(2, 2, 4)
step(G4);
title('System G4');
