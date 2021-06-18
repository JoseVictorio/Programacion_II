if (!require("pacman")) {
  install.packages("pacman")
  }
pacman::p_load(
  tidyverse, rgdal
)


vector1 <- c("a", "b", "c", "g", "h", "k", "x", "y", "z")
vector1
vector2 <- c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L)
vector2
vector2[9]
a <- vector2[1]
is.integer(a)

seq(2, 24, length = 12)

#Matriz

dim(vector2) <- c(3, 3)
vector2

class(vector2)


matrix01 <- matrix(vector2, nrow = 3, ncol= 3, byrow = T)
matrix01

arboles <- c("Tipuana tipu", "Myrsine andina", "Salix humboldtiana")

matrix02 <- cbind(arboles, matrix01)
matrix02

class(matrix02[2,2])

class(matrix01)

matrix02[,c(1,3)]

t(matrix02) #Trasponer columnas a filas y viceversa

df1 <- data.frame(arboles, matrix01)
df1
colnames(df1) <- c("nombre_cientifico", "circunferencia", "diametro_copa", "altura")
df1


str(iris)
iris$Species
head(iris[iris$Species == "setosa",])


coordenadas <- list(x = 10, y = 15)
coordenadas
point <- list(id = 123, coord = coordenadas, spatial.reference = "WGS_84")
point

point$coord

###csv

data01 <- read.csv(file = 'pobreza_extrema.csv')
head(data01)

str(d)


data <- rnorm(100)
hist(data)
boxplot(data)
1:10



x <- c(1,2,3)
x
colnames(x)

x <- matrix(1:4, nrow = 2)
x[2,2] <- 1000
x

df <- data.frame(
  x = c(1,2,3),
  y = c("one","two","three")
)

rownames(df[3,])

v <- c(0, 0, 1, 1)
is.logical(v)

for (a in 1:10) {
  print(a)
}


c(TRUE, 2)

vector4 <- c(2, 4, 6, 8, 9, 10)
length(vector)

vector4[c(2:4,6)]

vector5 <- 25:50

vector6 <- c(vector4, vector5)

length(vector6)

vector4 %% 3 #Residuo

8/4
