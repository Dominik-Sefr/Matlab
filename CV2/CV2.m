clear
r1 = ceil(30*rand(1, 3)+10);
C = randn(r1);
%2
%A
by = r1(1,1)*r1(1,2)*r1(1,3);
summ = 0;
for i = 1:r1(1,1)
    for j = 1:r1(1,2)
        for k = 1:r1(1,3)
            summ = summ + C(i,j,k);            
        end
    end
end
vysledek = summ/by;
%B
summ1 = sum(C, "all");
vysledek1 = summ1/by;
%3
C1 = squeeze(C(1,:,:));
C1 = C1 - mean(C1,2);
%4
vypocet(1);

