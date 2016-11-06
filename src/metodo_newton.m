function [ans, dif_ans] = metodo_newton(func, func_der, aprox, e)
    
    ans = aprox + func(aprox)/func_der(aprox);
    %dif_ans e lambda_n+1 - lambda_n
    dif_ans = abs(ans(end) - aprox);
    while dif_ans(end) > e
        ans = [ans (ans(end) - func(ans(end))/func_der(ans(end)))];
        dif_ans = [dif_ans abs(ans(end) - ans(end - 1))];
    end

end
