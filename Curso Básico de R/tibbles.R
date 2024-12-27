library(tidyverse)
data(diamonds)
View(diamonds)

#Ahora vamos a crear un tibble a partir del conjunto de datos diamonds. 
#para esto utilizamos la funcion as_tibble()

as_tibble(diamonds)

#el tibble solo devuelve las primeras 10 filas de los datos