#= 7 de Novembro de 2021 (Pedro)

# Números em Julia
O objetivo dessa semana seria se familiarizar com as representações básicas de
números em Julia (inteiros e floats) e ser capaz de efetuar operações aritméti-
cas simples. Julia se torna uma calculadora científica. 

# Conteúdo
  1. Inteiros
  2. Números decimais (floats)
  3. Operações aritméticas (+, -, *, /, ^, \, %, ÷)
  4. Floats especiais
  5. Atualizando variáveis
  6. Algumas funções matemáticas

# Fontes:
  * [https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/]
  * [https://docs.julialang.org/en/v1/manual/mathematical-operations/]
=#

# Números inteiros em Julia são representados da forma mais simples possível:
1
42
1234
392

# Podemos usar o caractere de sublinhado (_) para separar números grandes e melhorar a legibilidade.
1_000_000  # Um milhão.
10_2_030_04  # Não sei para que se usaria, mas funciona.

#= Nas linguagens de programação, os números decimais são muitas vezes chamados
de "floats", que vem de "floating-point numbers". Não precisaremos nos preocupar
com isso, mas, a título de curiosidade, esse nome surge por esses números serem
armazenados na memória do computador em duas partes, uma com o valor numérico,
digamos 4237819592, e outra com a posição do ponto, o separador decimal. Ou se-
ja, o ponto "flutua" dependendo da posição que escolhemos para ele: 

    4.237819592
    42.37819592
    423.7819592
    4237.819592
    etc.
=#

# Exemplos de floats em Julia são:
1.5
3.14159
1.618
-1.23
-987.65

# Nos casos que veremos isso não faz diferença, mas podemos escrever um número
# inteiro como um float:
1.0  # Quase a mesma coisa que escrever 1
1.  # Podemos ignorar o zero depois depois do ponto...
.5  # ...e antes também (isso é igual a 0.5).

# Pode-se usar a notação científica quando conveniente.
4.67e12  # Significa 4.67×10¹².
1e10  # Ainda é um float.
1.00e10  # A mesma coisa que o anterior.
6.022_140_76e23  # Número de Avogadro, veja que o _ também funciona aqui.
2.5e-4  # A mesma coisa que 0.00025.

# Mas representar números não seria tão útil se a gente não pudesse usá-los em
# contas. Existem então diversos operadores aritméticos em Julia. Comecemos de-
# finindo duas variáveis x e y como 12 e 4, respectivamente.
x, y = 12, 4

# A matemática então funciona como esperado:
+x  # 12 (pois é, não faz nada)
-x  # -12 (inverte o sinal do número)
x + y  # 16 (soma)
x - y  # 8 (subtração)
x * y  # 48 (multiplicação)
x / y  # 3 (divisão)
x ^ y  # 20736 (exponenciação, x elevado a y)

# Já esses três operadores a seguir (\, % e ÷) têm significados um pouco mais
# sutis.

# A barra invertida (\) representa o inverso da divisão, a mesma coisa que y / x:
x \ y  # 0.3333333333333333
y / x  # 0.3333333333333333

# Para diferenciar / de \, uma mnemônica que pensei seria imaginar a barra como
# uma rampa. Um dos números, o da direita ou o da esquerda, consegue facilmente
# subir e se tornar o numerador da fração. 

# O operador % calcula o resto da divisão entre dois números.
x % y  # 0
12 % 5  # 2
234 % 34  # 30

# Ele é surpreendentemente útil em alguns casos, como por exemplo, testar se um
# número é par ou ímpar pelo resto da divisão por 2:
23 % 2  # Ímpares como 23 retornam 1.
456 % 2  # Pares retornam 0.

# Ou ainda, testar se um número é divisível por outro, caso em que o resto é 0:
391 % 17  # 0

# Já o operador ÷ representa a "divisão inteira". Ele é como se fosse a barra
# (/) da divisão comum, mas joga fora toda a parte decimal depois de dividir,
# retornando sempre um inteiro. Dá para digitar ÷ digitando \div e apertando
# TAB. 
# Nota: Uma peculiaridade é que esse inteiro será representado como um float
# (tendo um ".0" no final), se um dos operandos for um float. Exemplos devem
# ajudar bastante:
y ÷ x  # 0
3433 / 42  # 81.73809523809524
3433 ÷ 42  # 81
3433 ÷ 42.0  # 81.0
3433 ÷ 42.  # 81.0
3 / .23  # 13.043478260869565
3 ÷ .23  # 13.0
10 / 2  # 5.0
10 ÷ 2  # 5
10. ÷ 2  # 5.0

# Outra nota: alguns resultados parecem estranhos, talvez por questões de preci-
# são numérica (entender melhor).
6 / .2  # 30.0
6 ÷ .2  # 29.0

#= Seguem mais exemplos de aritmética em Julia. Note que as operações serão rea-
lizadas na ordem de costume, com o operador de potenciação (^) sendo executado
primeiro, seguido pelos de multiplicação/divisão (*, /, \, %, ÷) e os de soma/
/subtração (+, -) por último. A ordem pode ser explicitada ou alterada com o
uso de parênteses.=#
(1/7 + 3*2/7) * 5  # 5.0
(2^5 + 2 - 6%4) / 32  # 1.0

#= Nota: Por convenção, tende-se a usar os espaços para indicar a ordem de ope-
ração, com as operações espaçadas sendo as posteriores. Por isso nos casos aci-
ma, escrevi alguns operadores com espaços em volta e outros não.=#

# Existem também alguns valores especiais de floats, que representam conceitos
# mais abstratos:
Inf   # Infinito positivo: um valor maior que todos os outros (exceto NaN).
-Inf  # Infinito negativo: um valor menor que todos os outros (exceto NaN).
NaN   # Não é um número (Not a Number): Um valor diferente de todos os outros
# (até dele mesmo).

#= Podemos usar or operadores a seguir para comparar e testar esses valores es-
# peciais, mas deixemos para ver comparações com mais detalhes numa outra semana.

  > (menor que)
  < (maior que)
  == (igual a)

Nota: Um erro comum é confundir o comparador == (igualdade) com o = (atribuição
de variável). Isso ainda brota nos meus códigos mesmo depois de alguns anos pro-
gramando. =#

Inf > 9999999999999  # true
Inf > NaN  # false
-Inf < -91837491827349491837491  # true
-Inf < NaN  # false
NaN == 42  # false
NaN == 0  # false
NaN == NaN  # false

# Esses valores surgem em algumas operações:
1/0  # Inf
1/Inf  # 0.0
-5/0  # -Inf
0.000001/0  # Inf
0/0  # NaN
500 + Inf  # Inf
500 - Inf  # -Inf
Inf + Inf  # Inf
Inf - Inf  # NaN
Inf * Inf  # Inf
Inf / Inf  # NaN
0 * Inf  # NaN

# Uma notação interessante existe para combinar os operadores com a atribuição
# de variáveis:
x = 4
x *= 2  # Significa "multiplique o valor de x por 2 e guarde novamente em x".
# x agora guarda um 8.

# É exatamente o mesmo que:
x = 4
x = x * 2

# Mais um exemplo:
contador = 0
contador += 1  # O valor de contador agora é 1.
contador += 1  # O valor de contador agora é 2.
contador += 1  # O valor de contador agora é 3.

# Que é o mesmo que:
contador = 0
contador = contador + 1  # O valor de contador agora é 1.
contador = contador + 1  # O valor de contador agora é 2.
contador = contador + 1  # O valor de contador agora é 3.

# Por fim, a Julia também vem com algumas funções matemáticas úteis:
abs(x)  # Valor absoluto (módulo) de x.
sqrt(x)  # Raiz quadrada (square root) de x. Escrever √x também funciona.
cbrt(x)  # Raiz cúbica (cube root) de x. Escrever ∛x também funciona.
hypot(x, y)	# Hipotenusa quando os catetos têm comprimentos x e y.
log(x)	# Logaritmo natural de x (base e).
log2(x)  # Logaritmo na base 2 de x.
log10(x)  # Logaritmo na base 10 de x.
log(b, x)  # Logaritmo na base b de x.

#= Entre outras, inclusive diversas funções trigonométricas:
    sin    cos    tan    cot    sec    csc
    sinh   cosh   tanh   coth   sech   csch
    asin   acos   atan   acot   asec   acsc
    asinh  acosh  atanh  acoth  asech  acsch
    sinc   cosc
=#

# Como a variável pi (ou π) já é definida por padrão, como um último exemplo
# podemos fazer:
cos(π/3) / log2(√2)  # 1.0
