library("googledrive")
library(tidyverse)
library(webshot)


drive_download("PEAMA.csv", overwrite = TRUE)
Aspirantes <- read_csv("PEAMA.csv", locale = readr::locale(encoding = "latin1"))
Aspirantes <- Aspirantes %>% select(-X1)

# Microdatos por poblaciones - Sede Amazonía

Aspirantes <- Aspirantes %>% filter(INS_SEDE_NOMBRE == "Amazonía")
Admitidos <- Aspirantes %>% filter(INS_SEDE_NOMBRE == "Amazonía", ADMITIDO == "Sí")


# Función para consolidar información por desagregaciones temáticas

Clases <- function(Base, varc){
  Base %>% group_by(.dots = list("YEAR", "SEMESTRE", varc)) %>%
    summarise(Total = n()) %>% rename_(.dots=list("Clase"=varc)) %>%
    mutate_(Variable = "varc") %>% select(Variable, YEAR, SEMESTRE, Clase, Total) %>%
    complete(Variable, YEAR, SEMESTRE, Clase) %>%
    replace_na(list(Total = 0)) %>% ungroup()
}

# Función para consolidar Series de tiempo por poblaciones

Total <- function(Base){
  Base %>% group_by(YEAR, SEMESTRE) %>%  summarise(Total = n()) %>% ungroup() %>%
    mutate(Variable="TOTAL", YEAR=YEAR, SEMESTRE=SEMESTRE, Clase = "Total", Total=Total) %>%
    select(Variable, YEAR, SEMESTRE, Clase, Total) %>% ungroup()
 }


DT1 <- Clases(Aspirantes, "SEXO")
Total <- Total(Aspirantes)

Agregado_Asp_Pre <- bind_rows(DT1, Total)


