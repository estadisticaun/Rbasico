######################################################
# TIPOS DE VARIABLES EN R ----
######################################################

# Ejemplo 1
var_1 <- TRUE
var_1 
class(var_1)

# Ejemplo 2
var_2 <- 2L
var_2
class(var_2)

# Ejemplo 3
var_3 <- 0.14
var_3
class(var_3)

# Ejemplo 4
var_4 <- var_1 + var_2 + var_3
var_4
class(var_4)

# Ejemplo 4
var_5 <- LETTERS
var_5
class(var_5)

#####################################################
# EXPRESIONES LÓGICAS ----
#####################################################

# Operadores Relacionales ----

# Ejemplo 1
1 < 3
# Ejemplo 2
3 > 3
# Ejemplo 3
4 <= 4
# Ejemplo 4
3 >= 2
# Ejemplo 5
3 == 3
# Ejemplo 6
TRUE == FALSE
# Ejemplo 7
TRUE == 1
# Ejemplo 8
FALSE == 0
# Ejemplo 9
3 != 3
# Ejemplo 10
FALSE != 0
# Ejemplo 11
"Uno" != "1"
# Ejemplo 12
"Uno" == "Uno"


####
####### Operaciones lógicas con operaciones aritméticas
####

12.10 - 10.50 < 24.90 * 21.15


####
####### Operaciones lógicas haciendo uso de variables
####

# Ejemplo 1
Var_1 <- 12.10 - 10.50 
Var_2 <- 24.90 - 21.15

Var_1 < Var_2

# Ejemplo 2
Var_3 <- 12.10 * 12L
Var_4<- 4.99 * 24L
Var_5 <- Var_3 == Var_4
Var_5

# El resultado anterior es equivalente a:

12.10 * 12L == 4.99 * 24L

# Operadores Lógicos ----

# Con el operador lógico &
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE
# Con el operador lógico |
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE
# Con el operador lógico de negación
!TRUE
!FALSE

####
####### Combinando operadores
####

# Ejemplo 1
(40/2^3) + 2 >= 7 | 5*5  - 5 < 20

# Ejemplo 2
(40/2^3) + 2 >= 7 & 5*5  - 5 < 20

####
####### Coerción en expresiones lógicas
####

## Ejemplo. Coerción en expresiones lógicas

"1" == 1

# Ejemplo 1. Coerción entre datos de tipo numérico y lógico
TRUE == 1
# Ejemplo 2. Coerción entre datos de tipo entero y lógico
1L == TRUE
# Ejemplo 3. Coerción entre datos de tipo numérico y entero
1 >= 1L
# Ejemplo 4. Coerción entre datos de tipo caracter y entero
"1" != 1L
# Ejemplo 5. Coerción entre datos de tipo caracter y lógico
"0" == FALSE

#####################################################
# ESTRUCTURAS DE DATOS EN R ----
#####################################################


#####################################################
# VECTORES EN R ----
#####################################################

## --------------------------------------------------------------------------------------------------------
# Ejemplo 1. Ilustración de un vector en R
c(1, 2, 3, 4, 5)
# Ejemplo 2. Ilustración de un vector en R dentro de una variable
y <- c(6L, 7L, 8L, 9L, 10L)
y

# Escalares en R ----

# Ejemplo 1. Escalares en R
1L
2.23
# Ejemplo 2. Escalares como vectores en R
c(1L)
c(2.23)
# Ejemplo 3. Variables y escalares en R
Var_1 <- 1L
Var_1
var_2 <- c(1L)
var_2

# Vectores lógicos en R ----

# Ejemplo 1. Mi primer vector Lógico
c(TRUE, FALSE, FALSE, TRUE)
# Ejemplo 2. Otro vector lógico en R
c(TRUE, FALSE)
# Ejemplo 3. Un vector lógico dentro de una variable en R
x <- c(TRUE, FALSE, FALSE)
x


# Vectores enteros en R ----

# Ejemplo 1. Mi primer vector entero
c(12L, 3L, 24L, 8L)
# Ejemplo 2. Otro vector entero en R
c(1L, 2L)
# Ejemplo 3. Un vector entero dentro de una variable en R
y <- c(1L, -3L, 5L)
y

# Vectores numéricos en R ----

# Ejemplo 1. Mi primer vector numérico (real)
c(12.10, 24.90, 4.99)
# Ejemplo 2. Otro vector numérico en R
c(1, 2.5, pi)
# Ejemplo 3. Un vector mumérico dentro de una variable en R
z <- c(2.3, -2.5, 7, 4)
z

# Vectores tipo caracter en R ----

# Ejemplo 1. Mi primer vector de tipo caracter
c("Lunes", "Martes", "Miércoles","Jueves", "Viernes", "Sábado","Domingo")
# Ejemplo 2. Otro vector de tipo caracter
c("a", "b", "c")
# Ejemplo 3. Un vector de tipo carcater dentro de una variable en R
w <- letters
w

# Coerción de vectores en R ----

# Ejemplo 1. Vector con elementos enteros y lógicos
c(TRUE, FALSE, 2L, -10L)
# Ejemplo 2. Vector con elementos lógicos, enteros y numéricos
c(FALSE, 5L, 10.2)
# Ejemplo 3. Vector con elementos lógicos, enteros, numéricos y de tipo caracter
c(TRUE, -2L, 3.1415, "Lunes")
# Ejemplo 4. Vector con elementos lógicos y de tipo caracter dentro de una variable
m <- c(TRUE, FALSE, "Junio")
m

# Función : ----

# Ejemplo 1. Secuencia ascendente
c(1:20)
# Ejemplo 2. Secuencia ascendente
c(10:15)
# Ejemplo 3. Secuencia descendente
c(10:1)
# Ejemplo 4. Secuencias dentro de variables
n <- c(1:5)
n

# Función seq() ----

# Ejemplo 1. Secuencia ascendente
seq(from = 0, to = 30, by = 2)
seq(0, 30, 2)
# Ejemplo 2. Secuencia descendente
seq(from = 20, to = 0, by = -5)
seq(20, 0, -5)
# Ejemplo 3. Secuencias dentro de variables
p <- seq(1, 10, 2)
p

# Función rep() ----

# Ejemplo 1. Repeticiones simples (con times)
rep(1, times = 5)
rep(1, 5)
rep(1:3, times = 2)
rep(1:3, 2)
# Ejemplo 2. Repeticiones simples (con each)
rep(1, each = 5)
rep(c(1:3), each = 2)
# Ejemplo 3. Repeticiones compuestas con times y each
rep(1, times = 2, each = 4)
rep(1:2, times = 2, each = 4)
# Ejemplo 4. Repeticiones compuestas con times y each
rep(c('a', 'b', 'c'), times = 3, each = 2)
# Ejemplo 5. Repeticiones compuestas con times y each
rep(c(TRUE, FALSE), times = 2, each = 3)
# Ejemplo 6. Repeticiones dentro de variables
s <- rep(10, 5)
s

# Operaciones con vectores ----

# Ejemplo 1. Suma de vectores en R haciendo uso de variables
exam_grades <- c(92, 90, 84, 95, 77, 92, 85)
homework_grades <- c(87, 81, 95, 86, 85, 90, 88)
sum_grades <- exam_grades + homework_grades
sum_grades 

# Ejemplo 2. Operaciones entre vectores (suma, resta y división)
v1 <- c(1:5)
v2 <- seq(from = 5, to = 1, by = -1)
v3 <- rep(1, times = 5)
v4 <- c(6, 6, 6, 6, 6)
v5 <- rep(2, 5)
v6 <- v4 / v5
total <- v1 + v2 + v3 - v6
promedio <- total / 4
promedio

# Reciclaje en operaciones con vectores ----

# Ejemplo. Reciclaje en operaciones entre vectores - caso suma
v1 <- c(92, 90, 84, 95, 77, 92, 85)
v2 <- c(87, 81)
suma <- v1 + v2
suma

# Operaciones lógicas con vectores ----

# Ejemplo 1. Operaciones lógicas haciendo uso de operadores relacionales
# Creación y evaluación del vector
Vect_1 <- c(-2:4, 1, 2)
Vect_1 
# Números negativos
Vect_1 < 0
# Posiciones en las que se ubica el número 1
Vect_1 == 1


# Ejemplo 2. Operaciones lógicas haciendo uso de operadores relacionales


# Creación y evaluación del vector
Vect_2 <- c(10, 20, 15, 15, 20, 25, 30)
Vect_2 
# Posiciones en las que no se ubica el número 15
Vect_2 != 15
# Posiciones con números mayores o iguales a 20
Vect_2 >= 20
# Posiciones con números mayores a 20
Vect_2 > 20
# Posiciones con números menores a 10
Vect_2 < 10

# Ejemplo 3. Operaciones lógicas haciendo uso de operadores relacionales y lógicos

# Ejemplo 3_1

# Creación y evaluación de los vectores
x <- c(-3, 4, -5, 0, 1)
x 
y <- c(-10, 2, 0, 1, 1)
y
# Posiciones negativas en los dos vectores
x < 0 & y < 0

# Ejemplo 3_2

# Creación y evaluación de los vectores
m <- c(-3, 4, -5, 0, 1)
m
n <- c(-10, 2, 0, 1, 1)
n
# Posiciones positivas en los dos vectores
x > 0 & y > 0
# Al menos una posición positiva en los dos vectores
x > 0 | y > 0
# Al menos una posición negativa o cero en los dos vectores
!(x > 0 & y > 0)

# Reciclaje en operaciones lógicas con vectores ----

# Creación y evaluación vector de longitud 5
x <- c(-3, 4, -5, 0, 1)
x 
# Creación y evaluación vector de longitud 3
y <- c(-10, 2, 0)
y
# Operación lógica con operador relacional vector x
x < 0
# Operación lógica con operador relacional vector y
y < 0
# Operación lógica con operadores relacionales y lógicos 
# vectores x e y de diferente longitud 
# aplicación de la regla de reciclaje
x > 0 & y > 0

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

