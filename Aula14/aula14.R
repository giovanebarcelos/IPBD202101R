altura <- c( 151, 174, 138, 186, 128, 136, 179, 
             163, 152, 131)
peso <- c( 63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Aplique a função lm()
relacao <- lm(peso~altura)
print(relacao)

print(summary(relacao))

# Fórmula de regressão linear onde
# intercept = -38.4551 e b da altura é 0.6746 -> 
# peso = -38.4551 + 0.6746 * altura

# Exemplo: uma pessoa com altura de 180 cm 
# peso = -38.4551 + 0.6746 * 180 
# peso = 82.9729 kg

alturas <- data.frame(altura = 180)
predicao <- predict(relacao, alturas)
print(predicao)

#Gerando o gráfico
# Dê um nome ao arquivo de gráfico.
png(file = "regressaolinear.png")
# Gere o gráfico.
plot( y,x,col = "blue",
      main = "Regressão de altura e peso",
      abline(lm(x~y)),
      cex = 1.3,pch = 16,
      xlab = "Peso em Kg",
      ylab = "Altura em cm")
# Salve o a
dev.off()

##### Regressão multipla 
carros <- mtcars[,c("mpg","disp","hp","wt")]
print(head(carros))

# Crie o modelo de relacionamento.
modelo <- lm(mpg~disp+hp+wt, data = carros)

# Mostre o modelo.
print(modelo)

# Fórmula utilizando os coeficientes
# mpg <- 37.105505 + (-0.000937 * disp) + 
#                    (-0.031157 * hp ) +
#                    (-3.800891 * wt)
# exemplo de uso 
# disp = 221, hp = 102 e wt = 2,91, a quilometragem
# prevista é:
#  mpg <- 37.15+(-0.000937)*221+(-0.0311)*102+(-3.8008)*2.91 
#  mpg = 22.7104

# Obtenha a interceptação e os coeficientes como elementos do vetor.
cat("# # # # Valores do coeficiente # # # ","\n")
intercepcao <- coef(modelo)[1]
print(intercepcao)
Xdisp <- coef(modelo)[2]
Xhp <- coef(modelo)[3]
Xwt <- coef(modelo)[4]
print(paste(Xdisp, Xhp, Xwt))

# Regressão Logística 
carros <- mtcars[,c("am","cyl","hp","wt")]
print(head(carros))

am.data = glm(formula = am ~ cyl + hp + wt, data = carros, family = binomial)
print(summary(am.data))

# Fórmula com regressão logística
# y = 1/(1+e^(a+b1x1+b2x2+b3x3+...))
# am <- 1 / (1 + exp( 
#                ( 19.70288 + 0.48760 * cyl 
#                            + 0.03259 * hp
#                            + -9.14947 * wt )))
# Supondo -> cyl = 6, hp = 110, wt = 2620
am <- 1 / (1 + exp(( 19.70288 
                      + 0.48760 * 6
                      + 0.03259 * 110
                      + -9.14947 * 2620 )))
am

# Chi-quadrado 
# Carregue a biblioteca
library("MASS")

# Crie um quadro de dados a partir do conjunto de dados principais
dadosCarro <- data.frame(Cars93$AirBags, Cars93$Type)
print(dadosCarro)

# Crie uma tabela com as variáveis necessárias
dadosCarro = table(Cars93$AirBags, Cars93$Type)
print(dadosCarro)

# Faça o teste Qui-quadrado.
print(chisq.test(dadosCarro))

str(warpbreaks)