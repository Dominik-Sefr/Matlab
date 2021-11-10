clear;
%1
a = 1:50;
disp(a);
%2
b= 1:0.2:10;
disp(b);
%3
A = ones(3,3);
disp(A);
B = zeros(3,3);
D = eye(3,3);
disp(D);
%4
M = [ A B D];
disp(M);
%5
C = [ 1 -1 1; 1 -1 0; -1 0 1];
disp(C);
%6
B1 = inv(C);
disp(B1);
%7
%a
CB = C*B1;
disp(CB);
%b
CB1= C.*B1;
disp(CB1);
%8
MC = M'*C;
disp(MC);
%9
for j = 1:3 
    C(j,2) = randi([-10^5 10^5],1);
end
disp(C);
%10
C(1,1) = 21;
C(1,2) = 12;
C(1,3) = 13;
disp(C);
%11
C1 = C(1,end-1:end);
disp(C1);
%12
for j = 1:3
    for i = 1:3
        if C(j,i) < 0
            randi([-10^5 10^5],1);
        elseif C(j,i) >= 0
            C(j,i) = 1;
        end
    end
end
disp(C);