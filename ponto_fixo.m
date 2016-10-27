function lambda_n = ponto_fixo(func, lambda_0, e)
    lambda_n = lambda_0;
    while abs(func(lambda_n(end)) - lambda_n(end)) > e
        lambda_n = [lambda_n func(lambda_n(end))];
        %print(lambda_n(end))
    end

end
