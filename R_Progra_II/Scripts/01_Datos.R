print("Hello world")

# Data types

is.numeric(0.14)
is.integer(4L)
is.character("Hello world")
is.complex(3 + 4i)
is.logical(3 < 2)
#factor is a datatype (categorical variable)

#Assignation of objects

objeto01 <- c(1, 2, 3)
c(4, 5, 6) -> objeto02

## Data structures

#Vector

vect <- c(1, 0, 2, 4)
vect1 <- c(1, 2, 3, 4, 5, 6, 7, 8)
vect1[c(2:4, 8)] # Indexación
sqrt(vect*2)
1:10
seq(1, 25, by = 5)

#Factor

vect01 <- c("Dec", "Apr", "Jan", "Mar", "Jan", "Mar")
vect02 <- c("Dec", "Apr", "Jam", "Mar", "Jan", "Mar")

sort(vect01) # Vector is ordered alphabetically

month_levels <- month.abb # Sort on factor values

factor01 <- factor(vect01, levels = month_levels) # Factor creation
factor01
sort(factor01)

factor02 <- factor(vect02, levels = month_levels) #Factor creation with mistake
factor02
sort(factor02)

readr::parse_factor(vect02, levels = month_levels) #Recognize the warning

factor03 <- factor(vect01, levels = unique(vect01)) #Sort on unique values
factor03

#Matrix

vect03 <- c(1, 4, 9, 16, 25, 36, 49, 64, 81)
dim(vect03)
dim(vect03) <- c(3, 3)
dim(vect03)
vect03

matrix01 <- matrix(c(2, 4, 6, 8, 10, 12, 14, 16, 18), 
                   nrow = 3, ncol = 3, byrow = F)
matrix01

tree <- c("roble", "capirona", "pino", "cedro")
matrix02 <- cbind(tree, matrix01)
matrix02

matrix03 <- rbind(objeto01, matrix01)
matrix03

#Data Frame

df01 <- data.frame(matrix02)
df01

colnames(df01) <- c("nombre", "circunferencia", "diametro_copa", "altura" )
df01
rownames(df01)
df01[2:3, 3:4]
df01[, "nombre"]

class(df01)
class(matrix02)

#iris

str(iris)
head(iris)

head(iris[, "Species"])
iris$Species

head(iris[iris$Species == "setosa", ])


iris[iris$Species == "setosa", "Sepal.Length"]


head(iris[iris$Species == "virginica", c("Sepal.Length", "Species")])

iris[iris$Species == "versicolor" & iris$Sepal.Length >= 5, ]

data1 <- subset(iris, Sepal.Width <= 3 & Species == "setosa") #Subset

data1[, c(1,5)]

#List

coordinates <- list(E = 350450.15, N = 8654251.48) # key <- value
coordinates
value_id <- c(025, 120, 214)

point_a <- list(id = value_id, coord = coordinates, spatial.reference = "WGS_84") 
#Can contain various data structures
point_a

point_a[3] #Indexation
point_a$spatial.reference
point_a[[3]] #Access to value

class(point_a[[2]])

