#el paquete que nos permitirá usar la funcion de sesgo bias() es:

install.packages("SimDesign")
library("SimDesign")


#Añadimos los datos que hallamos en las mediciones de laboratorio.

temp_medido=c(68.3,70,72,71,67.4,70)

#Ahora añadimos las mediciones que nos devuelve nuestro modelo

temp_predicho=c(67,69,71.5,70,67,69)

#Ahora podemos usar bias para saber si los datos estan sesgados

bias(temp_medido , temp_predicho)

#el resultado es 0.8666667 lo cual nos indica que el resultado podría 
#estár sesgado

data(ToothGrowth)
View(select(ToothGrowth, -supp))
