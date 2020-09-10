# Mofificar elementos de un vector en R ----

# Ejemplo 1
Vect_1 <- c(1:5)
Vect_1
Vect_1[4] <- 10
Vect_1

# Ejemplo 1
Vect_2 <- c(1:10)
Vect_2
Vect_2[Vect_2 %in% c(4, 8)] <- 20
Vect_2

# Adicionar elementos a un vector ----

# Opción 1
Vect_3 <- c(1:5)
Vect_3 
Vect_4 <- c(6:8)
Vect_4 
Vect_3 <- c(Vect_3, Vect_4)
Vect_3
# Opción 2
Vect_5 <- c(1:5)
Vect_5
Vect_5[c(6, 7, 10)] <- c(10, 11, 12)
Vect_5


# Remover/eliminar elementos d eun vector ----

# Ejemplo 1
Vect_6 <- c(1:5)
Vect_6
Vect_6 <- Vect_6[c(-4)] 
Vect_6 

# El ejemplo anterior es equivalente a
Vect_6 <- c(1:5)
Vect_6
Vect_6[c(-4)] # Esta línea es equivalente a Vect_6[-c(4)] 
Vect_6

# Ejemplo 2
Vect_7 <- c(1:10)
Vect_7
Vect_7 <- Vect_7[-c(5, 10)] # Esta línea es equivalente a Vect_7[c(-5, -10)]
Vect_7

# Creación de Matrices en R ----

#Por filas
matrix(data = c(1:9), nrow= 3, ncol = 3, byrow = TRUE,  
       dimnames = list(c('F1', 'F2', 'F3'), c('C1', 'C2', 'C3')))

# Por Columnas
matrix(data = c(1:9), nrow= 3, ncol = 3, byrow = FALSE, 
       dimnames = list(c('F1', 'F2', 'F3'), 
                       c('C1', 'C2', 'C3')))

# Forma reducida
matrix(data = c(1:7), nrow= 3)


# Ejemplos Creación de Matrices en R ----

# Ejemplo 1 - Por defecto - columnas
matrix(c(1:5))
# Ejemplo 2 - Indicando filas y columnas
matrix(c(1L:12L), nrow = 4, ncol = 3)
# Ejemplo 3 - Por filas
matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE)
# Ejemplo 4 - Sin definir columnas
matrix(1:12, nrow = 4)
# Ejemplo 5 - Sin definir filas
matrix(1:12, ncol = 4)
# Ejemplo 6 - Con secuencias y creación de variables
M <- matrix(seq(from = 2, to = 8, by = 2), nrow = 2, ncol = 2)
M
# Ejemplo 7 - Con repeticiones
matrix(rep(1,4), nrow = 2, ncol = 2)
# Ejemplo 8 - Con elementos lógicos
matrix(c(TRUE, FALSE, FALSE, TRUE), nrow = 2, ncol = 2)
# Ejemplo 9 - Con elementos tipo caractér - cadena
matrix(c('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'), nrow = 3, ncol = 2)
# Ejemplo 10 - Reciclando elementos
matrix(1:7, ncol = 3)

# Indexación de matrices en R ----


# Construcción y visualización de la matriz M
M <- matrix(c(1:16), nrow = 4)
M
# Selección del elemento ubicado en la fila 2 y la columna 3 - opción 1
M[2, 3]
# Selección del elemento ubicado en la fila 2 y la columna 3 - opción 2
M[c(2), c(3)]
# Selección de la totalidad de elementos ubicados en la fila 4.
M[4, ]
# Selección de la totalidad de elementos ubicados en la columna 4
M[ , 4]
# selección de los elementos ubicados en las filas 3 y 4 y en las columnas 1 y 2 (submatriz).
M[c(3,4), c(1,2)]



# Creación y evaluación/visualización de una matriz en R
N <- matrix(data = c(1:9), nrow= 3, ncol = 3, byrow = FALSE, 
            dimnames = list(c('F1', 'F2', 'F3'), 
                            c('C1', 'C2', 'C3')))
N
# Ejemplo 1. Extracción de elementos haciendo uso de enteros positivos
# selección de filas 1 y 2 y columnas 2 y 3
# Esta línea de código es equivalente a: N[c(1L, 2L), c(2L, 3L)]
N[c(1L, 2L), c(2L, 3L)]
# Ejemplo 2. Extracción de elementos haciendo uso de enteros negativos
# selección de elementos ubicados en una posición diferente de la fila 1 y la columna 2
# Esta línea de código es equivalente a: N[c(-1), c(-2)] o N[-c(1), -c(2)] 
N[-1, -2]
# Ejemplo 3. Extracción de elementos haciendo uso de elementos lógicos
# selección de elementos ubicados en las filas 1 y 3 y las columnas 1 y 3
# Esta línea de código es equivalente a: N[c(TRUE, FALSE), c(TRUE, FALSE)], por qué?
N[c(TRUE, FALSE, TRUE), c(TRUE, FALSE, TRUE)]
N[c(TRUE, FALSE), c(TRUE, FALSE)]
# Ejemplo 4. Extracción de elementos haciendo uso de elementos de tipo caracter
# selección de elementos ubicados en las filas 1 y 2 y las columnas 2 y 3
N[c('F1', 'F2'), c('C2', 'C3')]


# Funciones para gestionar Matrices en R ----

# Crea una matriz en R, almacenar su resultado en una variable M y visualizar su contenido.
M <- matrix(data = c(1:6), ncol = 2, byrow = TRUE)
M

# Determinar la clase de la estructura de datos M - función class()
class(M)

# Determinar el número de filas de la matriz M - función nrow()
nrow(M)

# Determinar el número de columnas de la matriz M - función ncol()
ncol(M)

# Determinar las dimensiones de la matriz M - función dim()
dim(M)

# Calcular un vector con las suma de las filas de la matriz M - función rowSums()
rowSums(M)

# Calcular un vector con las suma de las columnas de la matriz M - función colSums()
colSums(M)

# Adicionar una fila a la Matriz M - función rbind()
# ¿Qué tiene de especial la función rbind() en comparación con las anteriores funciones?
M <- rbind(M, c(7, 8))
M

# Adicionar una columna a la matriz M - función cbind()
# ¿Por qué se adiciona un vector con cuatro elementos y no uno con tres?
M <- cbind(M, c(1, 2, 3, 4))
M

# Adicionar los nombres de las filas de la matriz M - función rownames()
# Qué tiene de especial esta función en comparación con las anteriores?
rownames(M) <- c('Fil_1', 'Fil_2', 'Fil_3', 'Fil_4')
M

# Adicionar los nombres de las columnas de la matriz M - función colnames()
# La variable con la que iniciamos tenía 2 columnas
# ¿Por qué en esta línea de código la matriz M tiene 3 columnas?
colnames(M) <- c('Col_1', 'Col_2', 'Col_3')
M

