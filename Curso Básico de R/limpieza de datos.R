library("janitor")
library("skimr")
library("here")
library("dplyr")
library("palmerpenguins") #libreria con datos de pinguinos
library("tidyverse")

#skim_without_charts(), al igual que head(), str(), etc. Nos ofrece un 
#resumen de los datos que vamos a cargar

skim_without_charts(penguins)

#glimpse ya lo hemos usado, nos da un resumen del contenido de las col

glimpse(penguins)

#recordemos que si queremos ver solo ciertas columnas en especifico usamos
#select()
data("penguins")

select(penguins,sex,species)

#si queremos ver todas las columnas menos una usamos:

penguins %>% 
  select(-species)

#si queremos renombrar una columna usamos rename()

rename(penguins, isla=island)

#tambien lo podemos hacer con un pipe:

penguins %>% 
  rename(sexo=sex)

#si queremos ordenar una columna de menor a mayor usamos:

arrange(penguins, bill_length_mm)

#ordenando de mayor a menor:

arrange(penguins,-bill_length_mm)

#ahora agruparemos a los pinguinos por islas:

group_by(penguins, island)

#Imaginemos ahora que queremos hallar la media de los picos de los
#pinguimos pero para cada diferente isla, para esto podemos usar

penguins %>% group_by(island) %>% drop_na() %>% 
  summarize(mean_bill_length_mm=mean(bill_length_mm))

#Ahora imaginemos que en lugar de la media queremos saber el pico 
#máximo de cada isla:

#primero ordenamos a los pinguimos en grupos segun sus islas y quitamos
#los datos NA

pinguimos_por_islas=drop_na(group_by(penguins,island))

view(pinguimos_por_islas)

#ahora sí usamos summarize() para hallar el max

summarize(pinguimos_por_islas, maximo=max(bill_length_mm))

#ahora imaginemos que queremos agrupar nuestros datos por isla,
# esoecie y sexo.
#esto lo podemos lograr de la siguiente manera:

penguins %>% group_by(island,year,species) %>% drop_na() %>% 
  summarize(maximo=max(bill_length_mm), minimo= min(bill_length_mm))

#acá también sacamos los maximos y min de los picos para cada isla,
#especie y año

#ahora filtraremos datos, acá solo tendremos datos del año 2007 y de
#la especie Adelie de pinguinos

drop_na(filter(penguins, year==2007, species=="Adelie"))



