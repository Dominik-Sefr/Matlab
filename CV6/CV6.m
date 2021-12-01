clear
x = -10:0.01:10;
F = atan((x+1)./(x-1));
figure();
f = plot(x, F);
G = x./(sqrt(((x.^2)-1)));
figure();
g = plot(x, G);
    
H = x.^x;
figure();
h = plot(x, H);

syms x;
F = atan((x+1)/(x-1));
H = x.^x;
G = x./(sqrt(((x.^2)-1)));
F = limit(F,x, inf)
G = limit(G,x, 1, "right")
H = limit(H,x, 1, "right")
