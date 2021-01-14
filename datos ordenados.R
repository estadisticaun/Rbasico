# Librerías requeridas

library(nycflights13)
library(tidyr)

########################################
# Funciones getwd() y setwd()
#######################################

getwd()
setwd("D:/CursoR2020/Rbasico/Datos")
setwd("C:/Users/jm/Documents")


D:/DNPE/Estudios


# Importar- exportar un archivo CSV

file_csv <- read.csv2(file = "~/iris_noviembre.csv")


write.csv2(file_csv, "iris_nov_nuevo.csv")

############################################
# tibbles in R
############################################

flights
class(flights)
vuelos <- as.data.frame(flights)
class(vuelos)
vuelos

# Segunda diferencia - no acepta nombres parciales en la selección

flights$year 
vuelos$yea

# Tercera diferencia - la salida de un tibble es otro tibble

class(flights[ , c("year")])
class(vuelos[ , c("year")])
class(vuelos[ , c("year"), drop = FALSE])

class(flights[c("year")])
class(vuelos[c("year")])

class(flights[[c("year")]])
class(vuelos[[c("year")]])

# Cuarta diferencia - factores - versiones antiguas de R

edad <- c(10, 12, 14, 13, 15)
sexo <- c("F", "M", "F", "F", "M")

base_df <- data.frame(edad, sexo)
class(base_df)
str(base_df)

base_tbl <- tibble(edad, sexo)
class(base_tbl)
str(base_tbl)

# ¿Cómo convertir tibbles en data.frames y viceversa?

# De tibbles a data.frames
vuelos <- as.data.frame(flights)
class(vuelos)

# De data.frames a tibbles
vuelos_1 <- as_tibble(vuelos)
class(vuelos_1)

# Datos Ordenados

# Función pivot_longer()

iris_largo <- pivot_longer(data = iris, 
                               col = -Species, 
                               names_to = "rasgo_flor", 
                               values_to = "valor" )

# Función pivot_wider()

peces <- pivot_wider(data = fish_encounters,
                     names_from = station, 
                     values_from = seen)
peces



peces_1 <- pivot_wider(data = fish_encounters,
                     names_from = station, 
                     values_from = seen,
                     values_fill = list(seen = 0))
peces_1

