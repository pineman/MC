function k = sucessao_de_erros(lambda_n, p)
	z = lambda_n(end)
    erro = abs(lambda_n(1) - z);

    for n = lambda_n(2:(end-1))
        erro = [erro abs(n - z)];
    end

    k = erro(2) / (erro(1)^p);
    j = 0;
    for i = erro(2:(end-1))
        j = j + 1;
        k = [k (erro(j+1) / (erro(j)^p))];
    end
	display(erro)
end
