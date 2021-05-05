# R003 Você esta fazendo uma pesquisa entre os habitantes de uma pequena vila. Escreva um
# algoritmo que colete os dados de idade, sexo (M/F) e salário de todos as pessoas que
# desejam participar da pesquisa (para encerrar a entrada de dados entre a idade menor ou
# igual a zero). Após coletar todos os dados informe:
#a. A média de salário do grupo
#b. Maior e menor idade do grupo
#c. A percentagem do total de mulheres com salário até R$ 900,00
#d. A quantidade de homens

pesquisa <- data.frame( "Idade"=as.integer(character(0)),
                        "Sexo"=character(0),
                        "Salario"=as.numeric(character(0)), 
                        stringsAsFactors = FALSE)

repeat {
  idade <- as.integer( readline(prompt="Qual é a sua idade? ") )
  if (idade <= 0.0) {
    break
  } 
  
  sexo <- toupper( readline(prompt="Qual o seu sexo (M/F)? ") )
  salario <- as.numeric( readline(prompt="Qual é o seu salário? ") )
  
  pesquisa[nrow(pesquisa)+1,] = list(Idade=idade, Sexo=sexo, Salario=salario)
}

print( paste("a. A média de salário do grupo é:", round(mean(pesquisa$Salario), 2)))
print( paste("b. Maior e menor idade do grupo é:", 
              "Maior ->", max(pesquisa$Idade), 
            "; Menor ->", min(pesquisa$Idade)))

library(dplyr)
perc_mulheres_sal_900 = nrow( filter(pesquisa, Sexo == "F" & Salario <= 900)) / 
                        nrow( filter(pesquisa, Sexo == "F") ) * 100
print( paste("c. A percentagem do total de mulheres com salário até R$ 900,00: ", 
             round(perc_mulheres_sal_900,2), "%", sep = ""))
print( paste("d. A quantidade de homens:", nrow(filter(pesquisa, Sexo == "M"))))
