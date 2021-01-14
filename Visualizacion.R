# Librerias requeridas
library(ggplot2)
library(MASS)
library(dplyr)
library(car)
library(corrplot)

##########################################
# GRÁFICOS CON R BASE
##########################################

# MANUAL DE REFERENCIA EN:

https://bookdown.org/ndphillips/YaRrr/plotting1.html
https://github.com/ndphillips/ThePiratesGuideToR/blob/master/11-plotting1.Rmd

# Revisar lista de parámetros gráficos en la parte final de:
https://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf



# Funciones de alto nivel

# High-Level Plot Functions
# Some of the basic plot functions include

# plot: scatter/line plot
# hist: histogram
# barplot: barplot
# boxplot: boxplot
# qqnorm: normal-quantile


# Función general - plot
plot(x = 1, type = "n") # Gráfico limpio
plot(Sepal.Length~Sepal.Width, data = iris)
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
plot(iris$Sepal.Width, iris$Sepal.Length)

# Funciones de bajo nivel

# points(x, y): Adds points
# abline(), segments(): Adds lines or segments
# arrows(): Adds arrows
# curve(): Adds a curve representing a function
# rect(),polygon(): Adds a rectangle or arbitrary shape
# text(), mtext(): Adds text within the plot, or to plot margins
# legend(): Adds a legend
# axis(): Adds an axis


Ver información de estas en:
  https://bookdown.org/ndphillips/YaRrr/low-level-plotting-functions.html

#

# Histogramas

hist(x = iris$Sepal.Width, col = "blue")
hist(iris[[2]])

# Gráfico - qqPlot - con librería car
library(car)
qqPlot(iris$Sepal.Width)

# Gráficos de girasol

sunflowerplot(Sepal.Width ~ Petal.Width, data = iris)


# Gráficos de bigotes o cajas - Box Plots

plot(x = iris$Species, y = iris$Sepal.Length, col = 'red')
boxplot(x = iris$Sepal.Length) # Una única variable
boxplot(formula = Sepal.Length ~ Species, data = iris)


# Diagrama mosaicplot() 

mosaicplot(carb ~ cyl, data = mtcars)


# Diagrama de bagplot

library(aplpack) 
library(MASS)
bagplot(x = Cars93$Min.Price, y = Cars93$Max.Price, cex = 1.2)
abline(a =0, b = 1, lty = 2)

# Matrices de Correlación

library(corrplot)
str(UScereal)
numericalVars <- UScereal[ , c(2:10)]
corrMat <- cor(numericalVars)
corrMat

corrplot(corrMat)
corrplot(corrMat, method = "ellipse")


# Gráficos árboles de decisión

library(rpart)
tree_model <- rpart(data = Boston, formula = medv ~ .)
plot(tree_model)
text(tree_model, cex = 0.7)

# Varios gráficos en una única vista

par(mfrow = c(1, 2)) # una fila y 2 columnas

hist(x = iris$Sepal.Length, col = "blue")
boxplot(formula = Sepal.Length ~ Species, data = iris)

par(mfrow = c(2, 2)) # dos filas y dos columnas - by filas

hist(x = iris$Sepal.Length, col = "blue")
boxplot(formula = Sepal.Length ~ Species, data = iris)
sunflowerplot(Sepal.Width ~ Petal.Width, data = iris)
plot(Sepal.Length~Sepal.Width, data = iris)


# EDITAR GRÁFICOS EN R BASE

# Función par()
par() # Lista el total de argumentos por deafult de par
plot_pars <- par()
names(plot_pars)
length(plot_pars)

# Ejp 2
iris1 <- iris[, c(1,2)]
par(mfrow = c(2, 2))
plot(x = iris1$Sepal.Length, type = "p")
title("points")
plot(x = iris1$Sepal.Length, type = "l")
title("lines")
plot(x = iris1$Sepal.Length, type = "o")
title("overlaid")
plot(x = iris1$Sepal.Length, type = "s")
title("steps")

# Ejp 3
# Create plot with type = "n"               
plot(Cars93$Horsepower, Cars93$MPG.city,
     type = "n", xlim = c(0, max_hp),
     ylim = c(0, max_mpg), xlab = "Horsepower",
     ylab = "Miles per gallon")
points(mtcars$hp, mtcars$mpg, pch = 1)
points(Cars93$Horsepower, Cars93$MPG.city, pch = 15)
points(Cars93$Horsepower, Cars93$MPG.highway, pch = 2)


# Ejp 4

library(MASS)
truehist(iris$Sepal.Length)
lines(density(iris$Sepal.Length), lwd = 2, col = "red")

# Ejp 5

seq(0, 10, length = 200)



##########################################
# GRÁFICOS CON GGPLOT2
##########################################