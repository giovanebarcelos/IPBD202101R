# SR017 Criar uma função que verifique se um número é primo. 

ehPrimo <- function (numero) {
  for (divisor in 2:(numero-1)) {
    if (numero %% divisor  == 0){
      return( FALSE )
    }
  }
  
  return( TRUE )
}

numero <- as.integer( readline(prompt = "Digite um número inteiro para verificar se é primo: ") )

print(paste('O número ', numero, 'é primo?', ehPrimo(numero)))