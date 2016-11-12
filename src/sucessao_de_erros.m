%Sucesão de erros: Calcula a sucessão de erros para
% uma ordem de convergência p
%Parametros:
% lambda_n - iteradas geradas pelo metodo do ponto
% fix0
%p - ordem de convergência

function k = sucessao_de_erros(lambda_n, p)
    % Aproximação da raiz 
	z1 = lambda_n(end);
    erro = [];
   
    % Calcular as diferenças entre as iteradas
    % e a raiz
    for n = lambda_n(1:(end))
        erro = [erro abs(n - z1)];
    end

    k = [];
    j = 1;
    % Gerar as iteradas da sucesão de erros
    for i = erro(1:(end-2))
        k = [k (erro(j+1) / (erro(j)^p))];
        j = j + 1;
    end
    display(erro)
end

