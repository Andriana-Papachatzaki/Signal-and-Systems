n = 0:40;

% Ορισμός των σημάτων
x1 = cos((6*pi/7)*n + 1);
x2 = cos(pi/8 * n).^2;
x3 = cos(pi/2 * n) .* cos(pi/4 * n);

% Σχεδίαση των σημάτων
figure;

subplot(3,1,1);
stem(n, x1, 'filled');
title('x_1(n) = cos((5π/7)n + 1)');
xlabel('n'); ylabel('x_1(n)');
grid on;

subplot(3,1,2);
stem(n, x2, 'filled');
title('x_2(n) = cos^2((π/8)n)');
xlabel('n'); ylabel('x_2(n)');
grid on;

subplot(3,1,3);
stem(n, x3, 'filled');
title('x_3(n) = cos((π/2)n) * cos((π/4)n)');
xlabel('n'); ylabel('x_3(n)');
grid on;