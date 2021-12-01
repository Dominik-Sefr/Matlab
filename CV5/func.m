function out = func(x, y)
    if (nargin == 1)    
        y = 0;
    end
    out = reshape(cell2mat(arrayfun(@(y) x.*exp(-x.^2-y.^2)+tanh(x.*y), y, "UniformOutput", false)), length(x), length(y));