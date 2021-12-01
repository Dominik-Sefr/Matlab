clear
digits(32)
%1
a = sym(((12/63) + (21/51))*(7/5)-(22/7))

%2
syms x y k n
f(x,y) = log(abs(cos(x))) + y * x * exp(1)^(-(x)^2)

%3
g(y) = subs(f(x,y), x, (1/y))

%4
h = subs(g(y), y,  sym(3))
vpa(h, 101)

%5
integral = vpa(int(g(y), y, 1, 2),7)

%6
integraltwo = vpa(int(f(x,y), x))

%7
suma = symsum((2*pi)/(3)*k, k, 1, n)
suman = subs(suma, n, 40)

%8
limita = limit(f(x,y), x, pi/2)

%9
urcityintegral = int(diff(f(x,y), x), x, 0, inf)

%10
[x, y, z] = solve(str2sym('x - 3*y + a*z = 1'), str2sym('2*x-6*y + 9*z = 5'), str2sym('-a*x + 3*y = 0'))
x = simplify(x)
y = simplify(y)
z = simplify(z)

A = [1 -3 1; 2 -6 9; -1 3 0];
b = [1 5 0]';
matice = A\b
%11
rozvoj = taylor((cos(3*x)-sin(3*x)))

%12
dvanact = solve(str2sym('exp(1)^(-((x)^2)+4*x-9)=1'))



