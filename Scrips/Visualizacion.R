library(highcharter) # version 0.5.0.9999


# ASPIRANTES A PREGRADO ----

ano <- max(Agregado_Asp_Pre %>% select(YEAR))
semestre <- Agregado_Asp_Pre[[nrow(Agregado_Asp_Pre), "SEMESTRE"]]
periodo_actual_titulo <- paste0(" ", ano, "-", semestre)

# Serie ----

col <-   c( "#8cc63f") # verde, Total
SERIE_ASP_PRE <- series(
  datos = Agregado_Asp_Pre,
  categoria = "TOTAL",
  colores = col,
  titulo = "Evolución histórica del número total de aspirantes a pregrado",
  eje = "Número de aspirantes"
)           


# Sexo ----

col <-   c( "#f15a24", # naranja, hombres
            "#8cc63f") # verde, mujeres

# Serie de tiempo

SEXO_SERIE_ASP_PRE <- series(
  datos = Agregado_Asp_Pre,
  categoria = "SEXO",
  colores = col,
  titulo = "Evolución número de aspirantes a pregrado por sexo",
  eje = "Número de aspirantes"
)


# Estado actual 

SEXO_ACTUAL_ASP_PRE <- torta(
  datos = Agregado_Asp_Pre,
  variable = "SEXO",
  colores = col,
  titulo = "Número de aspirantes a pregrado por sexo",
  etiqueta = "Número de aspirantes",
  ano = ano,
  periodo = semestre,
  periodo_titulo = periodo_actual_titulo
)

