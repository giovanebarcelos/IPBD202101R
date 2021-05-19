# Testando função em R
conteudoGC <- function( dna, contador = 0, AT = FALSE  ) {
  if (!is.character(dna)){
    stop("Argumento não é do tipo caractere!")
  }
  if (length( grep("[^ACGT]", dna)) > 0 ) {
    warning("Argumento possui caracteres diferentes de A, C, G e T!")
  }
  dna <- unlist( strsplit(dna, "") )
  for (i in 1:length(dna)) {
    if (dna[i] == "C" | dna[i] == "G") {
      contador = contador + 1
    }
  }
  if (AT == TRUE){
    return( 1 - contador/length(dna))
  } else { 
    return( contador/length(dna) ) 
  }
}