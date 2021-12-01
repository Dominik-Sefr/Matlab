%1 

hexagon = figure();
corners = 0:60:360;
xCoords = sind(corners);
yCoords = cosd(corners);
plot(xCoords, yCoords);

%2 func.m

%3

x = -5:0.05:5;
fx = func(x);
fx1 = func(x, 1);
fx2 = func(x, 2);


%3
%a
all_in_one = figure();
plot(x, fx, x, fx1, x, fx2);
title('f(x)');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'f(x, 1)', 'f(x, 2)');

saveas(all_in_one, "3a.bmp");
saveas(all_in_one, "3a.jpg");
saveas(all_in_one, "3a.pdf");

%b

subplots = figure();
subplot(3, 1, 1);
plot(x, fx, col="red");
title('f(x)');
xlabel('x');
ylabel('f(x)');
legend('f(x)');

subplot(3, 1, 2);
plot(x, fx1, col="blue");
title('f(x, 1)');
xlabel('x');
ylabel('f(x, 1)');
legend('f(x, 1)');

subplot(3, 1, 3);
plot(x, fx2, col="green");
title('f(x, 2)');
xlabel('x');
ylabel('f(x, 2)');
legend('f(x, 2)');

saveas(subplots, "3b.fig");
%4

three_d = figure();
x4 = -5:0.1:5;
y4 = -6:0.2:6;
z4 = func(x4, y4);
surf(z4);



