#!/usr/bin/env python3

from math import *

def g7(x):
    a = -0.1
    try :
        res = x + a * (x + 15.5 - 2*cosh(0.8 * x))
        return res
    except OverflowError:
        print("Overflow: verifique a convergencia da sua função")
        exit()

def ponto_fixo(function, aprox, error):
    lambdas = [aprox]
    dif_lambdas = []
    #lambda_n = function(aprox)
    #dif_lambdas = [abs(lambda_n - lambdas[-1])]

    while True:
        lambda_n = function(lambdas[-1])
        dif_lambdas.append(abs(lambda_n - lambdas[-1]))
        lambdas.append(lambda_n)
        if not dif_lambdas[-1] > error:
            break

    return lambdas

#lambda_n+1 - lambda_n
def sucessao_erros(lambda_n, p):
    z1 = lambda_n[-1]
    erro = []
   
    for n in lambda_n[0:-1]:
        erro.append(abs(n - z1))

    k = []
    j = 1

    for i in erro[0:-2]:
        k.append((erro[j+1]) / (erro[j] ** p))
        j += 1

    return k

#function k = sucessao_de_erros(lambda_n, p)
#	z1 = lambda_n(end);
#    erro = [];
#    
#    for n = lambda_n(1:(end))
#        erro = [erro abs(n - z1)];
#    end
#
#    k = [];
#    j = 1;
#    for i = erro(1:(end-1))
#        k = [k (erro(j+1) / (erro(j)^p))];
#        j = j + 1;
#    end
#
#%     for i = erro(2:(end-1)), j = erro(3:(end))
#%         k = [k (j / i^p)];
#%     end
#end

print("p = 1/2:  ", sucessao_erros(ponto_fixo(g7, -3, 10**(-6)), 1/2))
print("p = 1:  ", sucessao_erros(ponto_fixo(g7, -3, 10**(-6)), 1))
print("p = 2:  ", sucessao_erros(ponto_fixo(g7, -3, 10**(-6)), 2))


