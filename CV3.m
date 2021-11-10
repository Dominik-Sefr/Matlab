clear
%1
A = randn(1000,2000);
%2
B = round(A);
B2 = B;
%3
for i = 1:size(B,2)
    for j = 1:size(B,2)-i
        for c = 1:size(B,1)
            if(B(c,j) ~= B(c, j+1))
                if(B(c,j)<B(c,j+1))
                    temp = B(:, j+1);
                    B(:, j+1) = B(:, j);
                    B(:, j) = temp;
                    break
                else
                    break
                end

            end
        end
    end
end
B2
B

mean(B == sortrows(B2.','descend').', 'all')