function ans = metodo_newton(func, func_der, aprox, e)
    
    ans = aprox + func(aprox)/func_der(aprox);
    %dif_ans é lambda_n+1 - lambda_n
    dif_ans = ans(end)
    while 
        ans = [ans ans(end) + func(ans(end))/func_der(ans(end))];
        

end