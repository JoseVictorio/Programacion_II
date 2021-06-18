# The easiest way to get readr is to install the whole tidyverse:
install.packages("tidyverse")

# Alternatively, install just readr:
install.packages("readr")
library(readr)

data01 <- read.csv(file = 'data/earthquakes.csv')
head(data01)
data01$Magnitude
data01[10, "Magnitude"]
data01[10,]

pobreza01 <- read_csv(file = "data/pobreza_extrema.csv")
pobreza01
pobreza02 <- read.csv(file = "data/pobreza_extrema.csv", sep = ";")
pobreza02

head(pobreza02)

pobreza02[pobreza02$Incidencia == 0, c("DISTRITO", "Incidencia")]

pobreza02[pobreza02$DISTRITO == "Los Olivos", ]

apply(pobreza02, 2, max, na.rm = T)

cbind(pobreza02, Nivel_pobreza)
class(pobreza02)
