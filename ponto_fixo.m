function [lambda_n, dif_lambda_n] = ponto_fixo(func, lambda_0, e)
    format long;
    lambda_n = lambda_0;
    dif_lambda_n = abs(func(lambda_n(end)) - lambda_n(end));
    while dif_lambda_n > e
       dif_lambda_n = [dif_lambda_n abs(func(lambda_n(end)) - lambda_n(end))];
       lambda_n = [lambda_n func(lambda_n(end))];
    end
    
end
