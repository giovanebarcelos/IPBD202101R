# Aula 11 

# Vamos testar em R:
TRUE & TRUE
TRUE & TRUE & TRUE & TRUE & TRUE & TRUE & TRUE & FALSE
TRUE | FALSE | FALSE | FALSE | FALSE | FALSE
5 > 3 & 0 != 1
5 > 3 & 0 != 0
5 > 3 | 0 != 0

# Representação interna do TRUE e FALSE
as.integer(TRUE)
as.integer(FALSE)

# Decisões 

a <- 1; b <- 2
if (a < b) {
  "a é menor que b"
}

a <- 10; b <- 2
if (a < b) {
  "a é menor que b" 
} else {
  "a não é menor que b"
}

ifelse( a < b,
        "a é menor que b",
        "a não é menor que b" )

msg <- ifelse( a < b,
               "a é menor que b",
               "a não é menor que b" )
msg

y <- 1:10
z <- ifelse(y < 6, y^2, y-1)
z

# Verificação da temperatura da água
temperatura <- as.numeric( readline(prompt = "Digite a temperatura da água: ") )
if (temperatura <= 0) {
  print("É um gelo.")
} else {
  if (temperatura < 100) {
    print("É um líquido.")
  } else { 
    print("É vapor.")
  }
}

# Repetição 

# Imprimindo número de 1 a 5 
for (i in 1:5) { print(i) }

# For com condição 
x <- 0
for (i in 1:5) {
  print(paste("1. i:", i, "x: ", x ))
  if (i == 3) { 
    next 
  } 
  x <- x + i
  print(paste("2. i:", i, "x: ", x ))
}
x

# While
x <- 10
while (x >= 0) {
  x <- x - 1
  print(x)
}
x

y <- 1; j <- 1
while (y < 12 & j < 8) {
  y <- y * 2
  j <- j + 1
  print(paste("y:", y, "j:", j))
}
y
j

# Repeat
z <- 3
repeat { 
  z <- z^2
  if (z>100) {
    break 
  }
  print(z)
}


setwd("/data/Seafile/GOBSeafile/2021-01/3N_5SEM_IntroduçãoAProgramaçãoEmBigData/WorkSpace/IPBD202101R/Aula11")
source("r003.R")
source("r010.R")
