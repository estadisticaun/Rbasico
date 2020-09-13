# MARCOS D EDATOS EN R

# CREACIÓN DE DATA.FRAME EN R ----

# Alternativa 1 - Creación de data.frame de manera directa
Curso_A1 <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5)
                       )
Curso_A1
# Alternativa 2 - Creación de data.frame a través de variables
# Definiendo las variables
Edad <- c(17L, 26L, 19L, 20L, 15L, 22L)
Sexo <- c("Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Mujer")
Discapacidad <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE)
Nota <- c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5)
# Creando el data.frame
Curso_A2 <- data.frame(Edad, Sexo, Discapacidad, Nota)
Curso_A2

# INDEXACIÓN/SUBCONJUNTOS EN MATRICES ----

# CARACTERIZACIÓN CONJUNTO DE DATOS IRIS

# Evaluar la tipología del conjunto de datos iris
class(iris)
# Dimensiones del conjunto de datos iris (150 registros y 5 variables)
dim(iris)
# Nombres de las variables del conjunto de datos iris
names(iris)
# Primeros 5 registros/individuos del conjunto de datos iris
head(iris)
# Últimos 5 registros/individuos del conjunto de datos iris
tail(iris)

# SELCCIÓN DE UNA VARIABLE EN data.frames ----
# HACIENDO USO DE [] ----

# Ejemplo 1
# Selección de la variable ubicada en la posición 1 - 
# Se conserva la estructura del conjunto de datos original (data.frame)

iris[1]

# Ejemplo 2
# Selección de la variable ubicada en la posición 1 
# No se conserva la estructura original (se cambia a vector).

iris[, 1]

# Ejemplo 3
# Selección de la variable con nombre Petal.Length y creación de una variable
# Sin conservar la estructura de datos del conjunto fuente
 
Petal_Length <- iris[, "Petal.Length"]
Petal_Length
# Revisar la clase de la estructura resultante haciendo uso de la función class()
class(Petal_Length)

# Ejemplo 4
# Selección de la variable con el nombre Sepal.Width y creación de una variable
# Conservando la estructura de datos del conjunto fuente (data.frame)
# Este resultado es equivalente a: iris["Sepal.Width"]  ¿por qué?
# Presentar/imprimir sólo los primeros 5 elementos de la variable seleccionada

Sepal_Width <- iris[c("Sepal.Width")]
head(Sepal_Width)

# SELECCIÓN DE UNA VARIABLE EN data.frames
# HACIENDO USO DE [[ ]] ----

# Ejemplo 1
# Selección de la primera variable del conjunto de datos iris - por posición
iris[[1]]

# Ejemplo 2
# Selección de la primera variable del conjunto de datos iris - por posición
# Resultado equivalente al del ejemplo anterior.
iris[[c(1)]]

# Ejemplo 3
# Selección de la primera variable del conjunto de datos iris - por nombre de la variable
iris[['Sepal.Length']]

# Ejemplo 4
# Selección de la cuarta variable del conjunto de datos iris - por posición
# Almacenar el resultado dentro de una variable 
Petal_Width <- iris[[4]]
# Evaluación/impresión de la variable
Petal_Width
# Verificar la clase de la variable Petal_Width
class(Petal_Width)

# SELCCIÓN DE UNA VARIABLE EN data.frames
# HACIENDO USO DE $ ----

# Ejemplo 1
# Selección de la variable llamada Sepal.Width
iris$Sepal.Width

# Ejemplo 2
# Selección de la variable llamada Species
iris$Species

# Ejemplo 3
# Selección de la variable Petal.Length y almacenamiento del resultado en una variable llamada Petal_Length
Petal_Length <- iris$Petal.Length
Petal_Length
# Evaluación de la estructura de datos contenida en la variable previamente creada (Petal_Length)
class(Petal_Length)

# SELECCIÓN DE MÁS DE UNA VARIABLE EN data.frames ----
# ENTEROS POSITIVOS ----


# Ejemplo 1
# Selección de las primeras dos variables (posiciones 1 y 2)
# Sin hacer uso de la coma
head(iris[c(1,2)])

# Ejemplo 2
# Selección de las primeras dos variables (posiciones 1 y 2)
# Haciendo uso de la coma
head(iris[ , c(1,2)])

# Ejemplo 3
# Selección de las variables ubicadas en las posiciones 3, 4 y 5
# Haciendo uso de la coma
head(iris[ , c(3:5)])

# ENTEROS NEGATIVOS ----

# Ejemplo 1
# Selección de todas las primeras variables, excepto la última.
# Sin hacer uso de la coma
head(iris[c(-5)])

# Ejemplo 2
# Selección de las primeras dos variables (posiciones 1 y 2)
# Haciendo uso de la coma
head(iris[ , c(-3,-4, -5)])

# Ejemplo 3
# Selección de las primeras dos variables (posiciones 1 y 2)
# Haciendo uso de la coma
# El mismo resultado del ejemplo 2
head(iris[ , -c(3, 4, 5)])

# Ejemplo 4
# Selección de las últimas dos variables (posiciones 4 y 5)
# Almacenar los resultados en una variable
Var_final <- iris[ , -c(1:3)]
head(Var_final)


# VECTORES LÓGICOS----

# Ejemplo 1
# Selección de la variable ubicada en las posición 3
# Sin hacer uso de la coma
head(iris[c(FALSE, FALSE, TRUE, FALSE, FALSE)])

# Ejemplo 2
# Selección de la primera y la última variables (posiciones 1 y 5)
# Haciendo uso de la coma
head(iris[ , c(TRUE, FALSE, FALSE, FALSE, TRUE)])

# Ejemplo 3
# Selección de las variables ubicadas en las posiciones 1, 3, 5
# Aplicando la regla de reciclaje 
head(iris[ , c(TRUE, FALSE)])


# VECTORES DE TIPO CARACTER----

# Ejemplo 1
# Selección de la variables llamadas Sepal.Length y Petal.Width
# Sin hacer uso de la coma y con comillas dobles
head(iris[c("Sepal.Length", "Petal.Width")])

# Ejemplo 2
# Selección de las variables llamadas Sepal.Length, Petal.Length y Species
# Haciendo uso de comillas sencillas
head(iris[ , c('Sepal.Length', 'Petal.Length', 'Species')])

# Ejemplo 3
# Selección de la variable llamada Species
# Almacenar el resultado en una variable llamada Tipo_flor 
# Sin conservar la estructura del conjunto de datos iris (data.frame)
Tipo_flor <- iris[ , c('Species')]
# Imprimir los primeros 15 elementos. ¿Qué tiene de especial la función head() de este ejemplo?
head(Tipo_flor, 15)

# Ejemplo 4
# Selección de la variable llamada Species
# Almacenar el resultado en una variable llamada Tipo_flor 
# Conservando la estructura del conjunto de datos iris (data.frame)
Tipo_flor <- iris[c('Species')]
head(Tipo_flor)

# SELECCIÓN DE INDIVIDUOS ----

# CON VECTORES ----

# Ejemplo 1
# Haciendo uso de enteros positivos
# Selección de los individuos (flores) ubicad@s en las posiciones 1, 50, 100 y 150

iris[c(1, 50, 100, 150), ]

# Ejemplo 2
# Haciendo uso de enteros positivos
# Selección de los individuos ubicados en las posiciones 5, 10, 15, ....

iris[seq(from = 5, to = 150, by = 5), ]

# Ejemplo 3
# Haciendo uso de enteros negativos
# Selección de los últimos 10 individuos

iris[-c(1:140), ]

# Ejemplo 4
# Haciendo uso de enteros negativos
# Selección de los primeros 20 individuos
# Guardar los resultados en una variable llamada First_20
First_20 <- iris[-c(21:150), ]
First_20

# Ejemplo 5
# Haciendo uso de vectores lógicos
# Selección de los individuos ubicados en las posiciones 5, 10, 15, ....
# Aplicando la regla de reciclaje
iris[c(FALSE, FALSE, FALSE, FALSE, TRUE), ]

# Ejemplo 6
# Haciendo uso de vectores lógicos
# Selección de los individuos ubicados en las posiciones 20, 40, 60, ...
# Aplicando la regla de reciclaje
# Analizar detenidamente la forma de construcción del vector lógico
iris[c(rep(FALSE, 19), c(TRUE)), ]


# OPERADOR %in% ----

# Ejemplo 1 - ejercicio párrafo anterior
# Selección de los individuos (flores) cuya especie (Species) es igual a versicolor
iris[iris$Species %in% c('versicolor'), ]

# Ejemplo 2
# Selección de los individuos cuyo valor en la variable Sepal.Width es igual a 2, 4.4 o 3.5

iris[iris$Sepal.Width %in% c(2, 4.4, 3.5), ]

# Ejemplo 3
# Selección de los individuos (flores) cuya especie (Species) es igual a setosa
# Se presentan los primeros 6 individuos de la selcción haciendo uso de la función head()
head(iris[iris$Species %in% c('setosa'), ])

# Ejemplo 4
# Selección de los individuos (flores) cuya especie (Species) es igual a setosa o virginica
# Guardar los resultados en una variable llamada Especie

Especie <- iris[iris$Species %in% c('virginica', 'setosa'), ]
# Visualizar los primeros 10 individuos (flores) haciendo uso de la función head
head(Especie, n = 10)
# Visualizar los últimos 6 individuos (flores) haciendo uso de la función tail
tail(Especie)
# Cantidad de individuos en el marco de datos llamado Especie - función nrow()
nrow(Especie)

# EXPRESIONE LÓGICAS ----

# Ejemplo 1
# Flores cuya longitud del sépalo es mayor o igual a 7.3
iris[iris$Sepal.Length >= 7.3, ]

# Ejemplo 2
# Flores cuya longitud del sépalo es mayor o igual a 7.3 y pertenecen a la especie versicolor
# Ninguna flor cumple la condición deseada
iris[iris$Sepal.Length >= 7.3 & iris$Species == 'versicolor', ]

# Ejemplo 3
# Flores con ancho del pétalo menor o igual a 0.1
iris[iris$Petal.Width <= 0.1, ]

# Ejemplo 4
# Flores con ancho del sépalo >= 3.9 o ancho del pétalo >= 2.4
iris[iris$Sepal.Width >= 3.9 | iris$Petal.Width >= 2.4, ]

# Ejemplo 5
# Flores de la especie setosa con un ancho de pétalo menor que 1.4
iris[iris$Species == 'setosa' & iris$Petal.Length < 1.4, ]

# Ejemplo 6
# Flores de las especies setosa o virginica
# Almacenar los resultados en una variable llamada Flor
Flor <- iris[iris$Species == 'setosa' | iris$Species == 'virginica', ]
# Revisar las primeras y las últimas 6 flores del data.frame Flor
# Haciendo uso de las funciones head() y tail()
head(Flor)
tail(Flor)
# Número de individuos/flores que conforman el marco de datos Flor
nrow(Flor)

# SELECCIÓN DE VARIABLES E INDIVIDUOS ----

# Nombres de las variables del conjunto de datos (data.frame) iris
# Hacer uso de la función names()
names(iris)

# Ejemplo 1
# Seleccionar las flores ubicadas en las posiciones 20, 70 y 120 
# Retener la variable Sepal.Width
iris[c(20, 70, 120), c("Sepal.Width")]

# Ejemplo 2
# Seleccionar los últimos 5 individuos (flores) del data.frame iris
# Seleccionar las variables ubicadas en las posiciones 1 y 2
iris[-c(1:145), c(1,2)]

# Ejemplo 3
# Selecionar las flores con ancho del sépalo (Sepal.Width) mayor o igual a 3.9
# Retener las variables ubicadas en posiciones diferentes a la 3, 4 y 5.
iris[iris$Sepal.Width>= 3.9, -c(3, 4, 5)]

# Ejemplo 4
# Seleccionar las flores con ancho del sépalo >= a 3.9 o ancho del pétalo >= 2.4
# Retener las variables ubicadas en las posicones 1, 3, 5, ...
# Recordar aplicación de la regla de reciclaje
iris[iris$Sepal.Width >= 3.9 | iris$Petal.Width >= 2.4, c(TRUE, FALSE)]

# Ejemplo 5
# Seleccionar las flores de la especie setosa con una longitud del pétalo menor a 1.4
# Retener, para estas flores, las variables llamadas Sepal.Length y Species
iris[iris$Species == 'setosa' & iris$Petal.Length < 1.4, c("Sepal.Length", "Species")]

# Ejemplo 6
# Selección de las flores pertenecientes a las especies setosa y versicolor
# Selección de las variables ubicadas en las posiciones 4 y 5 ¿por qué?
# Almacenar los resultados en una variable llamada Final
Final <- iris[iris$Species %in% c('setosa', 'versicolor'), c(-1:-3)]

# Visualizar las primeras 10 y las últimas 6 flores del data.frame Final
head(Final, 10)
tail(Final)

# Visualizar la cantidad de flores/individuos existentes en el data.frame Final
# Hacer uso de la función nrow()
nrow(Final)



# CAMBIAR NOMBRES DE VARIABLES ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Cambio del nombre de la variable Nota por el de Nota_Final
names(Curso)[c(4)] <- c('Nota_Final')
# Visualización del data.frame Curso con el nombre de la variable Nota ajustado
Curso

# Ejemplo 2
# Cambiar el nombre de la variable Edad por Edad_F
names(Curso)[c(1)] <- c('Edad_F')
# Visualización del data.frame Curso con el nombre de la variable Edad ajustado
Curso

# Ejemplo 3
# Cambiar el nombre de las variables Sexo y Discapacidad por Sexo_F y Discapacidad_F
names(Curso)[c(2, 3)] <- c('Sexo_F', 'Discapacidad_F')
# Visualización del data.frame Curso con el nombre de las variables ajusatadas
Curso


# ELIMINAR VARIABLES ----
# CON VECTORES ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Eliminación de la variable Nota
# Indexación - haciendo uso de enteros negativos
# Almacenar los resultados en un data.frame llamado Curso_1
Curso_1 <- Curso[ , -c(4)]
Curso_1

# Ejemplo 2
# Eliminación de la variable Nota
# Indexación - haciendo uso de enteros positivos
# Almacenar los resultados en un data.frame llamado Curso_2
Curso_2 <- Curso[ , c(1:3)]
Curso_2

# Ejemplo 3
# Eliminación de la variable Nota
# Indexación - haciendo uso de vectores lógicos
# Almacenar los resultados en un data.frame llamado Curso_3
Curso_3 <- Curso[ , c(TRUE, TRUE, TRUE, FALSE)]
Curso_3

# Ejemplo 4
# Eliminación de las variable Edad y Discapacidad
# Indexación - haciendo uso de vectores con elementos textuales
# Almacenar los resultados en un data.frame llamado Curso_4
Curso_4 <- Curso[ , c('Sexo','Nota')]
Curso_4

# DATO NULL ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Eliminación de la variable Sexo
# Haciendo uso de enteros positivos
Curso[ , c(2)] <- NULL
# Visualización del marco de datos Curso sin la variable Sexo
Curso

# Ejemplo 2
# Eliminar, del data.frame resultante del ejemplo 1, las variables Edad y Nota
# Haciendo uso de vectores de tipo caracter o textual

Curso[ , c('Edad', 'Nota')] <- NULL
# Visualización del marco de datos Curso sin las variables Sexo, Edad y Nota
Curso

# MODIFICAR ELEMENTOS ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Cambiar la nota del estudiante ubicado en la posición 1 (de 3.5 a 5.0)
Curso[c(1), c('Nota')] <- c(5.0)
# Mostrar el data.frame con el cambio requerido
Curso

# Ejemplo 2
# Cambiar a 5.0 las notas de los estudiante ubicados en la posiciones 1, 4 y 6.
# Resultado equivalente a Curso[c(1, 4, 6), c('Nota')] <- c(5.0, 5.0, 5.0)
Curso[c(1, 4, 6), c('Nota')] <- c(5.0)
Curso

# Ejemplo 3
# Cambiar a 5.0 las notas de los estudiante ubicados en la posiciones 1, 4 y 6.
# Cambiar el Sexo a hombres de los estudiante ubicados en la posiciones 1, 4 y 6.
# Hacer uso de una lista (list) para contener los vectores con los nuevos valores.

Curso[c(1, 4, 6), c('Sexo', 'Nota')] <- list(c('Hombre', 'Hombre', "Hombre"), c(5.0, 5.0, 5.0))

Curso

# ELIMINAR INDIVIDUOS ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# CON VECTORES ----

# Ejemplo 1
# Eliminar el primero y el último individuo del data.frame Curso
# Guardar los resultado en una variable llamada Curso_1
# Hacer uso de un vector con enteros positivos - los que no se desean eliminar-
Curso_1 <- Curso[c(2:5), ]
Curso_1

# Ejemplo 2
# Eliminar el primero y el último individuo del data.frame Curso
# Guardar los resultado en una variable llamada Curso_2
# Hacer uso de un vector con enteros negativos - los que se desean eliminar-
Curso_2 <- Curso[-c(1, 6), ]
Curso_2

# Ejemplo 3
# Eliminar los individuos 1, 3 y 5 del data.frame Curso
# Guardar los resultado en una variable llamada Curso_3
# Hacer uso de un vector con elementos lógicos 
Curso_3 <- Curso[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE), ]
Curso_3

# Ejemplo 4
# Eliminar los individuos 2, 4 y 6 del data.frame Curso
# Guardar los resultado en una variable llamada Curso_4
# Hacer uso de un vector con elementos lógicos 
# Aplicando la regla de reciclaje de elementos
Curso_4 <- Curso[c(TRUE, FALSE), ]
Curso_4

# CON EXPRESIONES LÓGICAS ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Eliminar los estudiantes con una nota igual o superior a 4 
# Guardar los resultado en una variable llamada Curso_1
# Haciendo uso del operador relacional < (opción 1)
Curso_1 <- Curso[Curso$Nota < 4, ]
Curso_1

# Ejemplo 2
# Eliminar los estudiantes con una nota igual o superior a 4 
# Guardar los resultado en una variable llamada Curso_2
# Haciendo uso del operador relacional >= y del signo ! (opción 2)
# Analizar y recordar el papel del operador lógico !
Curso_2 <- Curso[!(Curso$Nota >= 4), ]
Curso_2

# Ejemplo 3
# Eliminar los hombres del data.frame Curso
# Guardar los resultado en una variable llamada Curso_3
# ¿Por qué se usa la opción Mujer despues del operador relacional ==?
# ¿Qué ajuste debemos hacer al código si deseamos utilizar la opción Hombre después del operador relacional ==?
Curso_3 <- Curso[Curso$Sexo == 'Mujer', ]
Curso_3

# Ejemplo 4
# Eliminar las mujeres con una nota igual o superior a 4
# Guardar los resultado en una variable llamada Curso_4
# Analizar y entender el contenido de esta instrucción
Curso_4 <- Curso[!(Curso$Sexo == 'Mujer' & Curso$Nota >= 4), ]
Curso_4

# ADICIONAR VARIABLES ----
# UNA VARIABLE $ Y [[]] ----
# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre', 'Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Creación de la variable Nueva1 haciendo uso del operador $
Curso$Nueva1 <- c(1:6)
Curso

#Ejemplo 2
# Adicionar, al data.frame resultante del ejemplo 1, una nueva variable llamada Nueva2
# Haciendo uso del operador [[]]
Curso[['Nueva2']] <- c(6:1)
Curso

# MÁS DE UNA VARIABLE  ----
# cbind() y list ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Haciendo uso de la función cbind()
# Crear dos variables. 
# Nueva1 con el contenido del vector rep(5, 6) 
# Nueva2 con la información del vector rep(1, 6)
# Almacenar los resultados del nuevo data.frame en un variable llamada Curso_Ajustado
Curso_Ajustado <- cbind(Curso, data.frame(Nueva1 = rep(5, 6), Nueva2 = rep(1, 6)))
Curso_Ajustado

# Ejemplo 2
# Haciendo uso de la función list()
# Crear la variable llamada Nueva3 con 6 números aleatorios de una distrinución normal N(0, 1)
# Requiere definir un vector con la posisión en donde se almacenará la nueva variable c(5)
# recordar que el conjunto de datos Curso está conformado por cuatro variables
Curso[, c(5)] <- list(Nueva3 = rnorm(6))
Curso

# Ejemplo 3
# Haciendo uso de la función list()
# Adicionar, al marco de datos del ejemplo 2, dos nuevas variables (Nueva4 y Nueva5)
# Almacenar la información de la variable Nueva4 en una variable previa llamada Normal
# Analizar la forma como R procesa este ejemplo
Normal <- rnorm(6)
Curso[, c(6, 7)] <- list(Nueva4 = Normal, Nueva5 = rep(1, 6))
Curso

# ADICIONAR INDIVIDUOS ----

# Creación del conjunto de datos (data.frame) Curso
Curso <- data.frame(Edad = c(17L, 26L, 19L, 20L, 15L, 22L),
                       Sexo = c('Mujer', 'Hombre', 'Hombre', 'Mujer', 'Hombre','Mujer'),
                       Discapacidad = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE),
                       Nota = c(4.3, 1.5, 3.0, 3.7, 4.0, 3.5))

# Visualización del marco de datos Curso
Curso

# Ejemplo 1
# Adicionar un nuevo estudiante con la siguiente información
# Edad = 26, Sexo = Hombre, sin discapacidades y con una nota de 2.0
Curso[c(7), ] <- list(Edad = c(26), Sexo = c('Hombre'), Discapacidad = c(FALSE), Nota = c(2.0))
# Visualizar el data.frame con el nuevo individuo
Curso

# Ejemplo 2
# Adicionar dos nuevos estudiante al data.frame resultante del ejemplo 1
# ¿Por qué usamos las posiciones 8 y 9?
Curso[c(8, 9), ] <- list(Edad = c(20, 13), 
                         Sexo = c('Hombre', 'Mujer'),
                         Discapacidad = c(FALSE, TRUE), 
                         Nota = c(2.0, 3.9))
# Visualizar el data.frame resultante con los nuevos individuos
Curso

# Ejemplo 3
# Adicionar tres nuevos estudiantes al data.frame Curso
# Almacenar el data.frame resultante en una variable llamada Curso_AF
# Ingresar la información de los nuevos individuos en variables 
# ¿Por qué usamos, en este ejemplo, las posiciones 7, 8 y 9?
# Reflexionar sobre la forma como R compila este ejemplo
Edad_3 <-  c(23, 19, 29)
Sexo_3 <- c('Hombre', 'Mujer', 'Mujer')
Discapacidad_3 <- c(FALSE, TRUE, FALSE)
Nota_3 <- c(3.3, 4.9, 4.5)
Curso_AF <- Curso[c(7:9), ] <- list(Edad = Edad_3, 
                                    Sexo = Sexo_3,
                                    Discapacidad = Discapacidad_3, 
                                    Nota = Nota_3)
# Visualizar el data.frame resultante con los nuevos individuos
Curso


# FUNCIONES ----

# Verificar el tipo de estructura de datos del conjunto de datos iris
# Función class()
class(iris)

# Retornar el nombre de las variables contenidas en el conjunto de datos iris
# Función names()
names(iris)

# Retornar el total de individuos y de variables contenidas en el conjunto de datos iris
# Función dim()
dim(iris)

# Retornar la cantidad de variables que conforman el conjunto de datos iris - opción 1
# Función length()
length(iris)

# Retornar la cantidad de variables que conforman el conjunto de datos iris - opción 2
# Función ncol()
ncol(iris)

# Retornar la cantidad de individuos (flores) que conforman el conjunto de datos iris
# Función nrow()
nrow(iris)

# Imprimir la información de los primeros 6 individuos (flores) del conjunto de datos iris
# Función head()
head(iris)

# Imprimir la información de los últimos 6 individuos (flores) del conjunto de datos iris
# Función tail()
tail(iris)

# Presentar un resumen general de las características del conjunto de datos iris
# Función str()
str(iris)

# Retornar un resumen descriptivo estadístico de las variables del conjunto de datos iris
# Función summary
summary(iris)

