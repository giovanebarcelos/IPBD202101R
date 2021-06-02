# Revisão R-Project 
setwd("/data/Seafile/GOBSeafile/2021-01/3N_5SEM_IntroduçãoAProgramaçãoEmBigData/WorkSpace/IPBD202101R/DataSets")
mlbPlayers = read.table(file = "mlbplayers.txt", header = T, sep = " ", stringsAsFactors = T)

# Dados para análise
data <- mlbPlayers[ , c("RBI", "AVG")]

# Criar um gráfico 
plot(x=data$RBI, y=data$AVG, xlab="RBI", ylab="AVG", main="RBI e AVG (Média)")

# Atribuição 
num <- 13
num = 13

# Tipos de dados -> verificar olhando a classe
print(class(8))
print(class(8L))
print(class(TRUE))
print(class("Dick Vigarista"))

# Operadores numéricos
sprintf("13 + 8 = %d", 13 + 8)
sprintf("13 - 8 = %d", 13 - 8)
sprintf("13 * 8 = %d", 13 * 8)
sprintf("13 / 8 = %1.4f", 13 / 8)

# Módulo/Resto 
sprintf("13 %% 8 = %d", 13 %% 8)

# Exponenciação 
sprintf("13 ^ 8 = %d", 13 ^ 8)

# Vetores 
numeros = c( 13, 8, 31, 73, 9)
numeros

# Dados dos vetores 
numeros[3] # índice
length(numeros) # tamanho
numeros[-3] # tudo menos o 3o elemento
numeros[3:5] # 3o ao 5o elementos
numeros[c(1,3)] = -1

# ordenar 
sort(numeros, decreasing = T)

# sequencia de numeros 
vintePrimeiros = 1:20

# seq com interlos
dezEmDez = seq(from=1, to=50, by=10)

# 10 pares começando em 22  4  6  8 10 12 14 16 18 20
pares = seq(from=2, by=2, length.out=10)

# repetição 
rep(x = 8, times=5)
rep(x = c(1,2,3), times=4, each=2)

# Relações
4 > 5 # FALSE
5 > 4 # TRUE
4 >= 3 # TRUE
4 <= 3 # FALSE
4 != 3 # TRUE

# Criando vetores de vetores por condição 
numeros = c(1:30)
pares <- (numeros %% 2 == 0)

# Decisões 
idade = 15

if (idade >= 18) {
  print("Dirigir e votar")
} else if (idade >= 16) { 
  print("Pode votar")
} else { 
  print("Pode andar na rua")
}

# SWITCH
nota = 'X'

switch( nota, 
        'A' = print('Excelente'),
        'B' = print('Bom'),
        'C' = print('OK'),
        'D' = print('Tá Ruim'),
        'E' = print('Péssimo'),
        print('Nota Inexistente!'))

# String 
saudacao <- paste("Olá", "Mundo", sep=" ")

# Extracao 
substr(x = saudacao, start = 5, stop = 9)

# Substituir 
sub(pattern = "Mundo", replacement = "Mundo!", x = saudacao)

# Repetições 

# Repeat
num <- 1
repeat { 
  print(num)
  num = num + 1
  if (num > 10){
    break
  }
}

# While
num <- 1
while (num <= 10) {
  print(num)
  num = num + 1
}

# For 
umAte10 = 1:10 
for (num in umAte10){
  print(num)
}

# Matrizes
# Unidimensional com apenas uma coluna
matriz1 = matrix(data = c(1,2,3,4,5,6))
# Bidimensional preenchimento por colunas
matriz2 = matrix(data = c(1,2,3,4,5,6), nrow = 3, ncol = 3)
# Bidimensional preenchimento por linhas
matriz3 = matrix(data = c(1,2,3,4,5,6), nrow = 3, ncol = 3, byrow = T)

# Dimensao
dim(matriz3)

# Partes 
matriz3[1,] # primeira linha e todas as colunas
matriz3[,c(2,3)] # todas as linhas e as colunas 2 e 3 

# combinação 
matriz4 = rbind(1:3, 4:6, 7:9)

# Funções 
soma <- function(num1=0, num2=0) {
  return(num1 + num2)
}

soma(8,13)
soma(,13)

# Função anônima / lambdas
mumeros <- 1:10
numerosX3 = (function(num) num * 3)(numeros)

# Closures
potencia <- function(expoente) {
  function(num){
    num ^ expoente
  }
}

cubo = potencia(3)
cubo(3)
cubo(1:4)

# Funções cumulativas 
cumsum(c(1,2,3,4,5))
cumprod(c(1,2,3,4,5))

# Regressão Linear - mlbPlayers
# Variável dependente = RBI 
# Variáveis indepentes = AVG, OBP, SLG, OPS

# Criando o modelo de relacionamento 
lmRBI = lm(mlbPlayers$RBI~mlbPlayers$AVG + mlbPlayers$OBP + mlbPlayers$SLG +
             mlbPlayers$OPS)

summary(lmRBI)

RBI = -60.643 + (-13.097 * AVG) + (45.651 * OBP) + (218.038 * SLG)