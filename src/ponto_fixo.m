%Metodo do Ponto Fixo: Aplica o Metodo do Ponto Fixo 
% a uma função func enquanto a diferença entre os dois
% ultimos membros da sucessão for maior que o erro e.
%Parametros:
% func - função à qual vai ser aplicado o metodo do
%        Ponto Fixo
% lambda_0 - aproximação inicial
% e - erro

function [lambda_n, dif_lambda_n] = ponto_fixo(func, lambda_0, e)
    format long;
    % Inicializar a sucessão com a aproximação inicial
    lambda_n = lambda_0;
    dif_lambda_n = []
    % Enquanto a diferença entre o último e o penúltimo membros
    % da sucessão for memnor que o erro e
    while 1
       %Calcular proximo elemento da sucessão
       lambda_n = [lambda_n func(lambda_n(end))];
       % Calcular a diferença entre o ultimo e penultimo membros da
       % sucessão
       dif_lambda_n = [dif_lambda_n abs(lambda_n(end) - lambda_n(end-1))];
       if dif_lambda_n(end) < e
           break
    end
    
end
