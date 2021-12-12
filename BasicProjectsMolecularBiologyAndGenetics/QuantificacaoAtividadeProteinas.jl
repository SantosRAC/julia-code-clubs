#= 14 de Dezembro de 2021 (Renato)

# Números em Julia
O objetivo dessa semana seria se familiarizar com as representações básicas de
números em Julia, aplicando um pouco do conhecimento em alguns exemplos em bio-
logia molecular

# Conteúdo
  1. Cálculo do peso molecular de peptídeos
  2. Usando estruturas condicionais para comparar nossos pesos calculados

# Fontes:
  * Stephenson, Frank H. Calculations for molecular biology and biotechnology. Academic press, 2010.

=#

# Primeiramente, vamos calcular o peso molecular de peptídeos com base em suas sequências
# Usaremos o fragmento "QSINYVQNYNGNLANFK"

# Atribuindo os valores para cada aminoácido (espécies não ionizadas, menos H2O)
Ala = 71.09
Arg = 156.19
Asn = 114.11
Asp = 115.09
Cys = 103.15
Glu = 129.12
Gln = 128.14
Gly = 57.05
His = 137.14
Ile = 113.16
Leu = 113.16
Lys = 128.17
Met = 131.19
Phe = 147.18
Pro = 97.12
Ser = 87.08
Thr = 101.11
Trp = 186.21
Tyr = 163.18
Val = 99.14

# Lembrando que todas essas variáveis poderiam ter sido declaradas em uma única linha
Ala,Arg,Asn,Asp,Cys,Glu,Gln,Gly,His,Ile,Leu,Lys,Met,Phe,Pro,Ser,Thr,Trp,Tyr,Val = 71.09,156.19,114.11,115.09,103.15,129.12,128.14,57.05,137.14,113.16,113.16,128.17,131.19,147.18,97.12,87.08,101.11,186.21,163.18,99.14

# Os aminoácidos no peptídeo apresentam uma notação simplificada (apenas uma letra por aminoácido)
Q = Gln
S = Ser
I = Ile
N = Asn
Y = Tyr
V = Val
G = Gly
L = Leu
A = Ala
F = Phe
K = Lys

# Declaração em uma única linha
Q,S,I,N,Y,V,G,L,A,F,K = Gln,Ser,Ile,Asn,Tyr,Val,Gly,Leu,Ala,Phe,Lys

# Para o cálculo do peso molecular do peptídeo, soma-se o peso de cada aminoácido acima, adicionando-se o peso molecular de uma água (um Hidrogênio extra na porção amino terminal + uma hidroxila na extremidade carboxila)

pMW_pep = (Q*2 + S + I + N*5 + Y*2 + V + G + L + A + F + K + 18.02)

# Vamos calcular o peso para uma proteína completa
# MKFSTILAFVGAAGAVAASPIAAPSGESAGLEKRQSINYVQNYNGNLANFKYNEGAGTYSGNWNNPSDFV
# IGLGWSTGTSNRVINFNGNYQSNQGSYYAVYGWLNNPLTEYYVVENYSYDPCSVSNTQVVGSVYSDGASY
# KICKHTQVNQPSIQGTKTFGQYFSVRSSKRSSGSVTLANHFNAWKKYGFANGATNPDFNYQVFATEAFSG
# QGSVSTTISG

Q = Gln
S = Ser
I = Ile
N = Asn
Y = Tyr
V = Val
G = Gly
L = Leu
A = Ala
F = Phe
K = Lys
M = Met
T = Thr
P = Pro
E = Glu
R = Arg
W = Trp
D = Asp
C = Cys
H = His

# Calculando o peso molecular deste novo peptídeo (agora uma proteína completa, uma cadeia mais longa de resíduos de aminoácidos)
pMW_prot = (M*1 + K*9 + F*12 + S*28 + T*14 + I*8 + L*7 + A*19 + V*17 + G*24 + P*7 + E*6 + R*4 + Q*11 + N*24 + Y*17 + W*4 + D*4 + C*2 + H*2 + 18.02)

# Avaliando uma expressão
# Vamos testar se nossa proteína tem um peso molecular igual ou diferente de outros valores ou do peso de outros peptídeos
pMW_prot > 20000
pMW_prot < pMW_pep
pMW_prot == pMW_pep
pMW_prot > pMW_pep

# Usando uma estrutura condicional para verificar se nossa proteína é "grande" 
if pMW_prot > 20000
 println("Você tem uma proteína grande!")
end

# Usando uma estrutura condicional para verificar se nossa proteína é "grande"
if pMW_prot > pMW_pep
 println("prot é maior que pep!")
end
