#R010 Faça um programa que leia um valor inteiro n e mostre os n primeiros números e seus quadrados.
#Exemplo: n = 3, então apresentará 1, 4, 9.

numero <- as.integer( readline("Digite um número inteiro: ") )

for (num in 1:numero) {
  print(num ^ 2)
}