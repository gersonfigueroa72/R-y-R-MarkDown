library(tidyverse) #acá va incluido readr
readr_example()

#ahora visualizaremos un archivo .csv

read_csv(readr_example("mtcars.csv"))

#De salida notamos que nos muestra un tibble

library(readxl)

#mostramos los ejercicios de ejemplo que tenemos en este paquete:

readxl_example()

#importamos un archivo ejemplo

read_excel(readxl_example("type-me.xlsx"))

#si queremos ver las hojas que hay en este archivo lo hacemos usando:

excel_sheets(readxl_example("type-me.xlsx"))

read_excel(readxl_example("type-me.xlsx"), sheet = 2)
