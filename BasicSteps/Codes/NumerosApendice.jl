#= 7 de Novembro de 2021 (Pedro)

# Números em Julia - Apêndice.
Casos que achei interessantes mas desnecessários para um primeiro contato com
programação. Deixei separados para evitar complicação e confusão, leia sem com-
promisso e só caso esteja realmente interessada(o).

# Conteúdo
  A1. Números racionais
  A2. Notação de coeficientes
  A3. Números complexos

# Fontes:
  * [https://docs.julialang.org/en/v1/manual/mathematical-operations/]
  * [https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/]
=#

# Uma outra coisa interessante é uma notação de frações, ou seja, números racio-
# nais, que Julia tem, usando o operador //:
2//3
# Isso possibilita a representação de dízimas periódicas sem perda de precisão.

# Se houverem fatores comuns, a fração será reduzida:
6//9   # 2//3
-4//8  # -1//2
5//-15  # -1//3
-4//-12  # 1//3

# Pode-se obter o numerador e denominador da forma reduzida com:
numerator(2//3)  # 2
denominator(2//3)  # 3

# Racionais podem ser facilmente convertidos a floats:
float(3//4)  # 0.75

# Valores "infinitos" também funcionam:
5//0  # 1//0
-3//0  # -1//0

# A Julia não tem problema em lidar com operações entre tipos diferentes de números: 
3//5 + 1  # 8//5
3//5 - 0.5  # 0.09999999999999998
0.5 == 1//2  # true
0.33 == 1//3  # false
1//3 - 0.33  # 0.0033333333333332993
2//3 == 6//9  # true
2//3 == 9//27  # false
2//4 + 1//6  # 2//3
5//12 - 1//4  # 1//6
5//8 * 3//12  # 5//32
6//5 / 10//7  # 21//25

# Como acabamos descobrindo por acaso na semana passada, a Julia permite que a
# gente coloque um coeficiente imediatamente antes da variável para multiplicá-
# -la. Isso deixa a sintaxe de algumas expressões mais limpa:
x = 3
2x^2 - 3x + 1  # 10
1.5x^2 - .5x + 1  # 13.0
2^2x  # 64

#= Note que a multiplicação pelo coeficiente nessa notação é executada antes das
somas/subtrações e multiplicações/divisões explícitas, e o comportamento com a
exponenciação depende se o coeficiente multiplica o valor da direita ou esquer-
da. =#

# Seguem mais alguns exemplos:
-2x == (-2) * x
√2x == (√2) * x
2^3x == 2^(3 * x)
2x^3 == 2*(x^3)
6 // 2(2 + 1) == 1 // 1

# Essa notação também funciona com expressões em parênteses:
2(x-1)^2 - 3(x-1) + 1  # 3
(x-1)x  # 6

# Mas não quando as duas expressões têm parênteses ao mesmo tempo, ou quando há
# uma variável logo antes do parêntese:
(x-1)(x+1)  # ERROR: MethodError: objects of type Int64 are not callable
x(x+1)  # ERROR: MethodError: objects of type Int64 are not callable

# Quando combinada com a constante im definida em Julia como a unidade imaginá-
# ria, a notação também permite que números complexos sejam escritos de forma
# usual:
(2 + 3im) - 1  # 1 + 3im
(2 + 3im) - 0.5im  # 2.0 + 2.5im
0.75(1 + 2im)  # 0.75 + 1.5im
(1 - 3im) / (2 + 2im)  # -0.5 - 1.0im
2im^2  # -2 + 0im

# E há também, naturalmente, algumas funções úteis nesses casos.
z = 1 + 2im
real(z)  # 1 (parte real de z)
imag(z)  # 2 (parte imaginária de z)
conj(z)  # 1 - 2im (complexo conjugado de z)
abs(z)   # 2.23606797749979 (módulo de z)
abs2(z)  # 5 (módulo ao quadrado de z)
angle(z) # 1.1071487177940904 (fase de z em radianos)
