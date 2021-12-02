clear all; close all;
syms x y n a ;
%1
krok = 0.01
roz1 = 0:krok:(2*pi-krok);

f(x)=1./(2+cos(x));
int1 = vpa(int(f, x, 0, 2*pi))
rec1 = vpa(sum(f(roz1 + krok/2)*krok))
com1 = int1/rec1

roz2 = 0:krok:(sqrt(3)-krok);
g(x) = x*atan(x);
int2 = vpa(int(g,x,0,sqrt(3)))
rec2 = vpa(sum(g(roz2 + krok/2)*krok))
com2 = int2/rec2

roz3 = 0:krok:(2*pi)-krok;
h(x) = sqrt(1-sin(2*x));
int3 = vpa(int(h, x, 0, 2*pi))
rec3 = vpa(sum(h(roz3 + krok/2)*krok))
com3 = int3/rec3

roz4 = -10:krok:5-krok;
j(x) = exp(1).^(-x.^2);
int4 = vpa(int(j, x, -10, 5))
rec4 = vpa(sum(j(roz4 + krok/2)*krok))
com4 = int4/rec4

%provádí se velmi dlouho ale výsledek je správný
% roz5 = -50:krok:(50)-krok;
% int5 = vpa(int(j,x, -Inf, Inf))
% rec5 = vpa(sum(j(roz5 + krok/2)*krok))
% com5 = int5/rec5

%2
af(n) = ((-1).^n)*(1/(2.^(n-1)));
sum1 = symsum(af,n,1, Inf)
num1 = sum(af(1:100))
comsum1 = vpa(sum1/num1)

ag(n) = 1/(n.*(n+1));
sum2 = symsum(ag, n, 1, Inf)
num2 = sum(ag(1:100))
comsum2 = vpa(sum1/num1)

ah(n) = ((-1).^n)*(1./n);
sum3 = symsum(ah, n, 1, Inf)
num3 = sum(ah(1:100))
comsum3 = vpa(sum3/num3)

aj(n) = (2.*n-1)/(2.^n);
sum4 = symsum(aj, n, 1, Inf)
num4 = sum(aj(1:100))
comsum4 = vpa(sum4/num4)

%3

A = [1 7 a ; a^2 3 1-a ; 0 5 6];
B = [a 8 -3*a ; 1 (1-a)^2 a ; 3 -1 4];
detA = det(A);
detB = det(B);
figure
fplot(detA, [-10 10]);
figure
fplot(detB, [-10 10]);

minA = findpeaks(A);

