%Metodo de Newton: Aplica o Metodo de Newton a uma função func
% enquanto a diferença entre o último termo da sucessão e a 
% aproximação inicial, aprox, for maior que um erro e.
%Parametros:
% func - função à qual vai ser aplicado o metodo de Newton
% func_der - derivada da função func
% aprox - aproximação inicial
% e - erro
function [ans, dif_ans] = metodo_newton(func, func_der, aprox, e)
    format long 
    % primeiro termo da sucessão
    ans = aprox + func(aprox)/func_der(aprox);
    %dif_ans é lambda_n+1 - lambda_n
    dif_ans = abs(ans(end) - aprox);
    %Gerar membros da sucessão enquanto a difença entre o ultimo
    %termo e a aprox for maior que e.
    while dif_ans(end) > e
        %Gerar membro da sucessão
        ans = [ans (ans(end) - func(ans(end))/func_der(ans(end)))];
        %Calcular a diferença entre o membro anterior e a aprox
        dif_ans = [dif_ans abs(ans(end) - ans(end - 1))];
    end

end
