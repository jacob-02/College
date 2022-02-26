G1 = tf([0 0 10], [1 0.1 10]);
G2 = tf([0 0 10], [1 2.5 10]);
G3 = tf([0 0 10], [1 5 10]);
G4 = tf([0 0 10], [1 7.5 10]);
G5 = tf([0 0 10], [1 10 10]);

%plot the step response

xlabel('t');
ylabel('y1(t)')
subplot(3, 2, 1)
step(G1);
title('System G1');


xlabel('t');
ylabel('y2(t)')
subplot(3, 2, 2)
step(G2);
title('System G2');

xlabel('t');
ylabel('y3(t)')
subplot(3, 2, 3)
step(G3);
title('System G3');

xlabel('t');
ylabel('y4(t)')
subplot(3, 2, 4)
step(G4);
title('System G4');

xlabel('t');
ylabel('y5(t)')
subplot(3, 2, 5)
step(G5);
title('System G5');

