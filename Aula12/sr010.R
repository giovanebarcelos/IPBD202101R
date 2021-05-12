# SR010 Faça um programa que utilize uma função recursiva para calcular 
# o fatorial de um número N. O número N deve ser fornecido pelo usuário em 
# programa principal que irá chamar a função do fatorial desenvolvida.

fatorial <- function (numero){
  if (numero < 2){
    return( 1 )
  }
  
  return( numero * fatorial( numero - 1) )
}

numero <- as.integer( readline(prompt = "Digite um número inteiro para calcular o fatorial: ") )

print(paste("O fatorial do número ", numero, " calculado com a função fatorial é ", fatorial(numero)))
print(paste("O fatorial do número ", numero, " calculado com a função factorial é ", factorial(numero)))
