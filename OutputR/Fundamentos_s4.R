# Subconjuntos de vectores en R ----

# Ejemplo 1. Extracción directa - no recomendada.
c(92, 87, 85)[3]
# Ejemplo 2. Extracción haciendo uso de nombres de vectores (variables) - recomendada
vector_1 <- c(92, 87, 85)
vector_1[3]


####
# Vectores con enteros positivos
####


# Ejemplo 1. 
Vect_1 <- c(15, 17, 12, 45, 13, 18)
Vect_1[c(1,3,5)]


# Ejemplo 2. 

#Creación y visualización del vector Vect_2 con las 26 letras mayúsculas del alfabeto romano
Vect_2 <- LETTERS
Vect_2 
# Selecionar las primeras 5 letras mayúsculas del alfabeto romano- alternativa 1
Vect_2[c(1, 2, 3, 4, 5)]
# Selecionar las primeras 5 letras mayúsculas del alfabeto romano- alternativa 2
Vect_2[c(1:5)]
# Selecionar las primeras 5 letras mayúsculas del alfabeto romano- alternativa 3
Vect_2[1:5]
# Selecionr las primeras 5 letras mayúsculas del alfabeto romano- alternativa 4
Vect_2[seq(from = 1, to = 5, by = 1)]
# Selecionar la primera y la última letra del alfabeto romano
Vect_2[c(1, 26)]
# Selecionar la vocales del alfabeto romano
Vect_2[c(1L, 5L, 9L, 15L, 21L)]
# Selecionar la letra c del alfabeto romano 5 veces
Vect_2[rep(3, times = 5)]
# Seleccionar las letras del alfabero romano ubicadas en las posiciones 1, 4, 7, 1, ... (de tres en tres)
Vect_2[seq(1, 26, 3)]
# Seleccionar últimas tres letras del alfabero romano y guardar el resultado en una variable (Vect_3)
Vect_3 <- Vect_2[c(24:26)]
Vect_3

####
# Vectores con enteros negativos
####

# Ejemplo 1. 
Vect_4 <- c(15, 17, 12, 45, 13, 18)
Vect_4[c(-1, -3, -5)]


# Ejemplo 2. 

# Crear  un vector de tipo numérico - primeros 10 números primos
Vect_5 <- c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29)
# Excluir los primeros cinco números primos - alternativa 1
Vect_5[c(-1, -2, -3, -4, -5)]
# Excluir los primeros cinco números primos - alternativa 2
Vect_5[c(-1:-5)]
# Excluir los primeros cinco números primos - alternativa 3
Vect_5[-c(1:5)]
# Excluir los primeros cinco números primos - alternativa 4
Vect_5[seq(from = -1, to = -5, by = -1)]
# Excluir el primer número primo
Vect_5[c(-1)]
# Excluir el octavo, el noveno y el décimo número primo
Vect_5[c(-8L:-10L)]
# Excluir los primeros siete números primos y guardar el resultado en una variable (Vec_6)
Vect_6 <- Vect_5[-c(1:7)]
Vect_6

####
# Vectores con datos lógicos - selección directa
####

# Ejemplo 1. 
# Creación y evaluación del vector
Vect_1 <- c(1:5)
Vect_1 
# Extracción del primero y del último elemento
Vect_1[c(TRUE, FALSE, FALSE, FALSE, TRUE)]


# Ejemplo 2. 
# Creación y evaluación del vector
Vect_2 <- seq(0, 6, 2)
Vect_2
# Extracción de los primeros dos elementos
Vect_2[c(TRUE, TRUE, FALSE, FALSE)]
# Extracción del último elemento
Vect_2[c(FALSE, FALSE, FALSE, TRUE)]

# Ejemplo 3. Regla de reciclaje de vectores lógicos 

# Creación y evaluación del vector
Vect_2 <- c(1:50)
Vect_2
# Ejemplo 1. Extracción de los números impares
Vect_2[c(TRUE, FALSE)]
# Ejemplo 2. Extracción de los números pares
Vect_2[c(FALSE, TRUE)]
# Ejemplo 2. Extracción de los múltiplos de 5
Vect_2[c(FALSE, FALSE, FALSE, FALSE, TRUE)]


####
# Vectores lógicos - operaciones lógicas
####

# Ejemplo


# Extracción de elementos con vectores lógicos derivados de operaciones lógicas
# Creación y evaluación del vector

Vect_3 <- c(-5:10)
Vect_3

# Ejemplo 1. Extracción de los números negativos - operadores relacionales
Vect_3[Vect_3 < 0]
# Ejemplo 2. Extracción de los números positivos - operadores relacionales
Vect_3[Vect_3 > 0]
# Ejemplo 3. Extracción de los ceros - operadores relacionales
Vect_3[Vect_3 == 0]
# Ejemplo 4. Extracción de los números negativos o de los mayores o iguales a 5
# operadores relacionales y lógicos
Vect_3[Vect_3 < 0 | Vect_3 >= 5]
# Ejemplo 5. Extracción de los números en el intervalo [0, 5)
# Alternativa 1
Vect_3[!(Vect_3 < 0 | Vect_3 >= 5)]
# Ejemplo 6. Extracción de los números en el intervalo [0, 5)
# Alternativa 2
# Guardar y evaluar resultados a partir de una variable
Vect_4 <- Vect_3[Vect_3 < 5 & Vect_3 >= 0]
Vect_4

# Nombres elementos vectores ----

# Al crear el vector

# Ejemplo 1. Nombres de elementos en vectores 
c(a = 5, b = 6, c = 7)
# Ejemplo 2. Nombres de elementos en vectores 
c(x = TRUE, y = FALSE, z = TRUE, w = TRUE)
# Ejemplo 3. Nombres de elementos en vectores haciendo uso de variables
Var_2 <- c(Nombre1 = 'a', Nombre2 = 'b', Nombre3 = 'c')
Var_2

# Cuando el vector ya se ha creado

# Ejemplo 1. 
vector1 <- c(1:5)
Nombres1 <- c('a', 'b', 'c', 'd', 'e') 
names(vector1) <- Nombres1
vector1

# Ejemplo 2. 
vector2 <- seq(from = 1, to = 10, by = 1)
Nombres2 <- letters[c(1:10)] 
names(vector2) <- Nombres2
vector2


####
# Selección de elementos de vectores con vectores de tipo caracter 
####

# Ejemplo 1. Extracción del primero y del último elemento
Var_1 <- c(a = 1, b = 2, c = 3, d = 4, e = 5)
Var_1[c('a', 'e')]
# Ejemplo 2. Extracción de los elementos 2 y 3
Var_1[c('b', 'c')]
# Ejemplo 3. Extracción de los últimos dos elementos y guardar el resultado en una variable
Var_2 <- Var_1[c('d', 'e')]
Var_2
# Ejemplo 4. Extracción del primer elemento 5 veces
Var_1[rep('a', 5)]

# Modificar elementos de un vector----

# Ejemplo 1
vector <- c(1L:5L)
vector
vector[5] <- 6L
vector

# Ejemplo 2
vector1 <- c(1L:5L)
vector1
vector1[c(3:5)] <- 6L
vector1

# Ejemplo 3
vector2 <- c(1L:5L)
vector2
vector2[c(TRUE, FALSE, FALSE, FALSE, TRUE)] <- 6L
vector2

# Anexar/adicionar elementos de un vector----

# Opción 1
vector1 <- c(1:3)
vector2 <- c(6:7)
# nuevo vector 
vector3_1 <-  c(vector1, vector2)
vector3_1
# mismo vector 
vector1 <-  c(vector1, vector2)
vector1

# Opción 2
# mismo vector
vector1[c(4:5)] <- c(6:7)
vector1

# Remover/eliminar elementos de un vector----


# Ejemplo1
vector <- c(1:10)
vector <- vector[c(-6, -7, -8, -9, -10)]
vector

# Ejemplo2
vector <- c(1:10)
vector <- vector[-c(6:10)]
vector

# Ejemplo3
vector <- c(1:10)
vector <- vector[vector<6]
vector


