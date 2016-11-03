function k = sucessao_de_erros(lambda_n, p)
	z1 = lambda_n(end);
    erro = [];
    
    for n = lambda_n(1:(end))
        erro = [erro abs(n - z1)];
    end
    erro

    k = [];
    j = 1;
    for i = erro(1:(end-1))
        k = [k (erro(j+1) / (erro(j)^p))];
        j = j + 1;
    end

%     for i = erro(2:(end-1)), j = erro(3:(end))
%         k = [k (j / i^p)];
%     end
end
