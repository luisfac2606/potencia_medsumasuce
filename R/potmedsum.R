# Avendaño Luis
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

potencia <- function() {
  # Solicitar al usuario ingresar la base y el exponente

  base <- as.numeric(readline("Ingresa la base: "))

  exponente <- as.numeric(readline("Ingresa el exponente (entero positivo): "))

  # Validar que el exponente sea un entero positivo

  if (exponente <= 0) {
    stop("El exponente debe ser un entero positivo.")
  }
  # Función para calcular el producto mediante sumatoria de una potencia
  producto_potencia <- function(base, exponente) {
    resultado <- 1

    for (i in 1:exponente) {
      resultado <- resultado * base
      cat(base, "^", i)
      if (i < exponente) {
        cat(" + ")
      }
    }
    cat(" = ", resultado, "\n")

    return(resultado)
  }


  # Llamar a la función para calcular el producto mediante sumatoria de una potencia
  resultado_producto <- producto_potencia(base, exponente)

  # Mostrar el resultado
  cat("El producto de", base, "elevado a", exponente, "es:", resultado_producto, "\n")
}



