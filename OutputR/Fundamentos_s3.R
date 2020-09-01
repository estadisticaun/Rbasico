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

