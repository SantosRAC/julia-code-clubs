# Definindo variáveis em Julia
# Usando variáveis
# Operações numéricas e sintaxe
# Tipos de variáveis
# Conversão de variáveis

# Imprimindo o que todo programador imprime quando aprende uma nova linguagem de programação
# Strings, que veremos mais adiante, devem ser declaradas usando aspas duplas
println("Hello, World!")

#
println(4)

# Este código não vai funcionar:
println('Hello, World!')

# ?????
println("Hello, World!')

# Regras para definição de variáveis
# Elas DEVEM começar com letras
numero = 4
# Atribuindo um novo valor à mesma variável
numero = 5
# Podem ter números, mas NÃO PODEM começar com número
1numero = 4
# O underscore pode ser usado para começar o nome da variável
_1numero = 4
# Podem apresentar acentos, mas eu NÃO recomendo
número = 4

# Ver convenção sobre o uso de underline em Julia
# ??????

# Não é possível atribuir variáveis com espaço
numero 1 = 4
# É possível, no entanto, usar "underscore" ("underline") para suprir a necessidade de um espaço
numero_1 = 4
# Outra forma de definir as variáveis, quando houver números
numero1 = 4
# Sugestões de definição de variáveis quando houver duas palavras compondo o nome
nomeSujeito = "Renato"
nomeDoSujeito = "Renato"
nome_sujeito = "Renato"

# Caracteres especiais
# Neste caso, a convenção é semelhante ao LaTeX, usando a barra invertida e o nome do caractere (abaixo, uma letra grega como exemplo)
\beta = 5
\omega = 5
