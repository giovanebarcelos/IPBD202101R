# Quiz 
dobro <- function(x){ # d
  if (is.numeric(x)==FALSE){ # a
    stop("Argumento deve ser numérico") # f
  } # c ou e
  return (2*x) # b
} # c ou e

dobro(5)
dobro(7)

# Estatistica descritiva 
x <- c(3,7,9,1,8,13,23)

#Média de x
mean(x) 

# Mediana de x
median(x) 

# Variância de x
var(x) 

# Desvio padrão de x
sd(x) 

y <- c(13, 90, 15, 37, 80, 12, 1)
# Covariância de x e y
cov(x, y)

# Correlação de x e y
cor(x, y) 

# Moda 
?

# Mínimo de x
min(x)

# Máximo de x
max(x) 

# Limite de x
range(x) 

#Quantilis de x para as probabilidades dadas
quantile(x) 

# sapply 
setwd("/data/Seafile/GOBSeafile/2021-01/3N_5SEM_IntroduçãoAProgramaçãoEmBigData/WorkSpace/IPBD202101R/Aula13")
source("conteudoGC.R")
sapply(c("AACGTGGCTA", "AATATATTAT"), conteudoGC)

# plotagem da distribuiçãso normal 
plot(dnorm, from = -3, to = 3)

# Diagrama de caixa
boxplot(rnorm(10000))

# Histograma
hist(rnorm(10000))

# sequencia para o eixo horizontal
x <- seq(from = 95, to = 115, length = 500)

# avaliar x na fdp (função de densidade de probabilidade)
y <- dnorm(x, mean=100, sd=1)

# plotar a função de densidade de probabilidade
plot(x, y, type = 'l', ylab = "densidade")

# Gerando amostra aleatoria da distribuição normal 
amostra <- rnorm(1000, mean=100, sd=1)
hist(amostra)

# Número aleatórios da probabilidade de distribuição normal 
rnorm(5)
# com semente
set.seed(7)
rnorm(5)
set.seed(7)
rnorm(5)

#### T-Test não pareado ####
#### Análise de tratamentos para Heartbeats
setwd("/data/Seafile/GOBSeafile/2021-01/3N_5SEM_IntroduçãoAProgramaçãoEmBigData/WorkSpace/IPBD202101R/DataSets")
heartbeats <- read.table("heartbeats.txt",
                         header = TRUE)
str(heartbeats)

# Subset dos dados
com_tratamento <- subset(heartbeats,
                         heartbeats$treatment == 1)
sem_tratamento <- subset(heartbeats,
                         heartbeats$treatment == 0)

# Plotagem de um histograma de ambos os grupos
# Versão 1 - hist() com valores padrões
# Definição do leiaute dos gráficos
png(file = "heartbeats_1.png")
par(mfrow = c(2, 1))
# Histogramas com os valores padrões
hist(com_tratamento$wghtincr)
hist(sem_tratamento$wghtincr)
dev.off()

# Definição do leiaute dos gráficos
png(file = "heartbeats_2.png")
par(mfrow = c(2, 1))
# Histogramas com eixos X ajustados e rótulos do X
hist( com_tratamento$wghtincr,
      col = "grey80",
      main = "",
      xlab = "Com tratamento",
      xlim = c(-300, 200)
)
hist( sem_tratamento$wghtincr,
      main = "",
      col = "grey40",
      xlab = "Sem tratamento",
      xlim = c(-300, 200)
)
dev.off()

# t-test não pareado (Explicação t-test)
t_test <- t.test(sem_tratamento$wghtincr, com_tratamento$wghtincr)
t_test