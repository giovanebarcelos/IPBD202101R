# SR002 Faça uma sub-rotina que calcule e retorne a soma de todos números 
# impares de um intervalo de números inteiros recebidos como parâmetros. 

# Implementação com While
somaImparesW <- function (numero, numFinal){
  somaImpares <- 0
  while ( numero <= numFinal){
    # Caso o número divida por 2 e vê se o resto é diferente de 0. 
    # Se for diferente de 0 o resto, ele é um numero impar.
    if ( numero %% 2 != 0 ){
      somaImpares <- somaImpares + numero
    }
    numero = numero + 1
  }
  return( somaImpares )
}

# Implementação com For
somaImparesF <- function (numInicial, numFinal){
  somaImpares <- 0
  for ( numero in numInicial:numFinal){
    # Caso o número divida por 2 e vê se o resto é diferente de 0. 
    # Se for diferente de 0 o resto, ele é um numero impar.
    if ( numero %% 2 != 0 ){
      somaImpares <- somaImpares + numero
    }
  }
  return( somaImpares )
}

somaImparesL <- function (numIni, numFim) { 
  return( sum((numIni:numFim)[numIni:numFim %% 2 != 0]) )
} 

# Recursivo 
somaImparesR <- function (numero, numFim) {
  if ( numero > numFim){ 
    return( 0 )
  }
  
  if (numero %% 2 != 0){
    return( numero + somaImparesR(numero + 1, numFim) )
  } else { 
    return( somaImparesR(numero + 1, numFim) )
  }
}

numIni <- as.integer( readline(prompt = "Digite um número inteiro Inicial: ") )
numFim <- as.integer( readline(prompt = "Digite um número inteiro Final: ") )

print( paste('Resultado da soma dos impares com While: ', somaImparesW(numIni, numFim)))
print( paste('Resultado da soma dos impares com For: ', somaImparesF(numIni, numFim)))
print( paste('Resultado da soma dos impares com Lambda: ', somaImparesL(numIni, numFim)))
print( paste('Resultado da soma dos impares com Recursividade: ', somaImparesR(numIni, numFim)))