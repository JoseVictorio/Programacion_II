#CSV
## read.csv (R base) / read_csv (tidyverse)

csv_01 <- read.csv(file = "data/file.csv", header = T)
head(csv_01)

library(tidyverse) #Both options are correct
csv_02 <- read_csv(file = "data/file.csv") 
csv_02
csv_03 <- readr::read_csv(file = 'data/file.csv')
csv_03

#Data writing (Creation .csv)
readr::write_csv(x = csv_01, file = "data/csv_data.csv")


#Excel

