clc;

x = input('Enter the 1st sequence: ');
nx = input('Enter the time index sequence: ');
h = input('Enter the 2nd sequence: ');
nh = input('Enter the time index sequence: ');
[y, ny] = findcov(x, nx, h, nh);
figure;
subplot(3, 1, 1);
stem(nx, x);
xlabel('Time');
ylabel('Amplitude');
title('1st sequence');
subplot(3, 1, 2);
stem(nh, h);
xlabel('Time');
ylabel('Amplitude');
title('2nd sequence');
subplot(3, 1, 3);
stem(ny, y)
xlabel('Time');
ylabel('Amplitude');
title('Output');
disp(y);
disp(ny);

function [y, ny] = findcov(x, nx, h, nh)
nybegin = nx(1) + nh(1);
nyend = nx(length(nx)) + nh(length(nh));
ny = nybegin:nyend;
% y = conv(x, h);
y = calcconv(x, h);
end

function [y] = calcconv(x, h)
l1 = length(x);
l2 = length(h);
N = l1 + l2 - 1;
for n = 1: 1: N
    y(n) = 0;
    for k = 1:1:l1
        if((n - k +1 >= 1) && (n - k +1 <= l2))
            y(n) = y(n) + x(k)*(h(n - k + 1));
        end
    end
end
end