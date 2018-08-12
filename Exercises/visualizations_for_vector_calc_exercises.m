%% Visualizations for summer school vector calculus exercises 2018
%% b)

f = @(x, y) x.^2 + y.^2;
%gradf = @(x, y) [2*x, 2*y];

x = linspace(-3, 3, 20);
y = linspace(-3, 3, 20);

[X, Y] = meshgrid(x, y);

Z = f(X, Y);

contour(X, Y, Z)

hold on
quiver(X, Y, 2*X, 2*Y)
hold off

title 'Task b)  f(x, y) = x^2 + y^2'

axis equal

%% c)

figure;
quiver(X, Y, X, Y)
axis equal
title 'Task c)  v_1 = (x, y, 0)'

figure;
quiver(X, Y, Y, X)
axis equal
title 'Task c)  v_2 = (y, x, 0)'
%% d)

omega = 2;
%v3 = @(x, y, z) [-omega*y, omega*x, 0];

figure;
quiver(X, Y, -omega*Y, omega*X)
axis equal
title(['Task d)  v_3 = (-\Omega y, \Omega x, 0), \Omega = ', num2str(omega)])

%% e)

f = @(x) exp(-x.^2);
gradf = @(x) (4*x.^2 -2) .* exp(-x.^2);

x = linspace(-5, 5);

figure;
plot(x, f(x))
hold on
plot(x, gradf(x))

plot([1/sqrt(2), 1/sqrt(2)], [-2, 1], 'k--', [-1/sqrt(2), -1/sqrt(2)], [-2, 1], 'k--')

t1 = annotation('textbox');
t1.String = '{\partial}c/{\partial}t>0';
t1.EdgeColor = [1, 1, 1];
t1.Position = [0.3 0.4 0.05 0.05];

t2 = annotation('textbox');
t2.String = '{\partial}c/{\partial}t<0';
t2.EdgeColor = [1, 1, 1];
t2.Position = [0.476 0.4 0.05 0.05];

t3 = annotation('textbox');
t3.String = '{\partial}c/{\partial}t>0';
t3.EdgeColor = [1, 1, 1];
t3.Position = [0.7 0.4 0.05 0.05];


hold off

title 'Task e)'

legend({'c(x) = e^{-x^2}', '{\Delta}c(x) = (4x^2-2)e^{-x^2}'})

