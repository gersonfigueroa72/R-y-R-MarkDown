library(tidyverse)
library("palmerpenguins")
id <- c(1:10)


name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")


job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


employee <- data.frame(id, name, job_title)

print(employee)

#si nos damos cuenta la columna names almacena tanto nombres como apellidos
#esto lo podemos solucionar utilizando separate()

employee_1 <- separate(employee, name, into=c('nombre','apellido'), sep = ' ')

#Ahora utilizaremos unite() para unir las columnas que ya separamos

unite(employee_1, 'name', nombre,apellido, sep=' ')

#por ultimo regresaremos a usar los datos de los pinguinos, para
#hacer cambios en las columnas con mutate()

data("penguins")

View(penguins)

#en este caso vemos que la masa de los pinguinos está medida en gramos
#nosotros agregaremos una columna con los datos en kg

mutate(penguins, masa_en_kg=body_mass_g/1000,nueva_medida_aletas=
         flipper_length_mm/1000)

penguins %>% arrange(bill_length_mm)


penguins %>% drop_na() %>% group_by(species) %>% summarize(mean(body_mass_g))

