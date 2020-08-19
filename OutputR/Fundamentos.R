# PRIMEROS PASOS EN R ----

# Comentarios ----
# Comentarios en R - Regla 1

# Este es un comentario en R 

# Instrucciones por línea - Regla 2 ----

# Ejemplo 1. Código o script correcto (una instrucción por línea)

x <- 1 
y <- 2 
x + y 

# Ejemplo 2. Código o script incorrecto (más de una instrucción por línea)

x <- 1  z <- 2  
x + y 

# Mayúsculas y minúsculas ----

# Uso de mayúsculas y minúsculas en R

X <- 1  
y <- 2 
x + y 

# TIPOS DE DATOS EN R ----

# Lógicos ----

# Opciones para verdadero (T o TRUE)
# Con T
T
# Con TRUE
TRUE

# Opciones para falso (F o FALSE)
# Con F
F
# Con FALSE
FALSE

# Numéricos ----

# numéros reales convencionales
3
3.14
30.48
2.05

# numéros reales grandes - notación científica
1234567891011

# número reales pequeños - notación científica
0.00000000001

# Entéros Numéricos ----

# Enteros positivos
5L
3L

# Enteros negativos
-20L
-1L

# Cadena o caracter ----

# Ejemplo 1
# Con comillas dobles
"Hola"
"Este es otro dato de tipo texto"
"TRUE"

"Hola"

# Con comillas sencillas
'dato entre comillas sencillas'
'FALSE'
'2.35'

# Constantes integradas en R ----

# Letras del abecedario en mayúsculas.
LETTERS

# Letras del abecedario en minúsculas.
letters

# Primeras tres letras de los nombres de los meses - en inglés.
month.abb

# Nombre de los meses - en inglés.
month.name

# Número pi
pi

# OPERACIONES ARITMÉTICAS Y VARIABLES ----

# OPERACIONES SIMPLES ----

# Operaciones aritméticas simples

# Suma ----

3.5 + 7.7 
3L + 10L 
1 + 8


# Resta ----

7.7 - 3.7
3L - 10L
8 - pi


# Multiplicación ----

7.71 * 3.73
-3L * 10L
1 * 8

# División ----

7.7 / 3.7
12L / 4L
-1 / 4

# Operaciones aritméticas simples complementarias

# Exponenciales ----

2^3
3^2
5^3

# Divisiones enteras ----

15%/%3
17%/%3
9%/%4


# Módulos ----

15%%3
17%%3
9%%4

# OPERACIONES COMPUESTAS ----

2 + 2 + 3*2
2*5 - 6/2
6/2*10/2 + 3
6/2*(2+1 + 2^3)

# por defecto
2 + 3*5

# usando paréntesis
(2 + 3)*5

# Ejemplo Artículo profesor Mantilla - Una Polémica Aritmética
# https://blogs.elespectador.com/actualidad/ecuaciones-de-opinion/una-polemica-aritmetica

6/2*(2 + 1)

# Tipos de datos expresiones numéricas ----
# Ejemplso tipos de datos expresiones numéricas

1L + 2L + 2L
3L + 2
3L + 3*3 + 5/2
FALSE + 4
TRUE + FALSE
FALSE + TRUE
FALSE + FALSE
TRUE + TRUE
1+1

# VARIABLES EN R ----

# Variables en R ----

# Visualización del contenido de una variable en R
x <- 5L
y <- 5
x
y

# Tres formas (operadores de asignación)

x <- 5L  
x

5L -> x
x

x = 5L
x

# Ejemplo 1
y <- 5 + 3.2
y

# Ejemplo 2
y <- 1 + pi
y

# Ejemplo 3
z <- 5 + 3*(1 + 2^2)
z

# Ejemplo 4
x <- 3 + 5
y <- 4
x + y

# Uso incorrecto de nombres ----

var_1 <- 3
1var_1 <- 3
1.var1 <- 3
.1var1 <- 3
_var1 <- 3
if <- 3
else <- 3
for <- 3
while <- 3
NA <- 3

# Variables con espacios (Compuestas) ----

# Ejemplo 1

Nombre variable <- 4.5

`Nombre variable` <- 4.5
`Nombre variable`

# Ejemplo 2
`Nombre compuesto` <- 0

# Ejemplo 3
`Este es otro nombre para mi variable` <- -10L
`Este es otro nombre para mi variable`


x <- 1
x <- 2


# Tipo de variables ----

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

# EXPRESIONES LÓGICAS ----

# Operadores relacionales ----

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

# Un ejemplo final - ¿por qué pasa esto?

1 == "1"

# Con operaciones aritméticas ----

# Ejemplo 
12.10 - 10.50 < 24.90 * 21.15

# Con variables ----

# Ejemplo 1
Var_1 <- 12.10 - 10.50 
Var_2 <- 24.90 - 21.15

Var_1 < Var_2

# Ejemplo 2
Var_3 <- 12.10 * 12L
Var_4<- 4.99 * 24L
Var_5 <- Var_3 == Var_4
Var_5

# Lo anterior es equivalente a:

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

# Combinando operadores ----

# Ejemplo 1
(40/2^3) + 2 >= 7 | 5*5  - 5 < 20

# Ejemplo 2
(40/2^3) + 2 >= 7 & 5*5  - 5 < 20


