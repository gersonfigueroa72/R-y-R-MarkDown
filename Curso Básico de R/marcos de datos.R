library(ggplot2)

#Ahora cargaremos datos integrados en R

data("diamonds")
View(diamonds)

#Si nos damos cuenta tenemos 10 columnas (o variables) y 53,940 filas,
#qu� pasa si no nos interesa trabajar con todos los datos?
#Para ello podemos usar la funci�n head(), la cual nos mostrar� solamente
#las primeras seis filas.

head(diamonds)

#otra forma de visualizar nuestros datos puede ser con str(), la cual nos 
#mostrar� la informaci�n (solo los primeros datos) que hay en cada 
#columna de nuestro marco, adem�s nos dice de que tama�o es nuestro marco
#de datos, en este caso [53,940x10]. Tambi�n nos dice que tipo de datos
#hay en cada columna

str(diamonds)

#Si solo queremos saber el nombre de las columnas podemos usar la funci�n
#colnames()

colnames(diamonds)

#Tambi�n podemos usar la funcion mutate() para realizar cambios a nuestro
#marco de datos. Esta funci�n es parte de dplyr. Por lo que llamaremos
#a la libreria

library(dplyr)

#Primero a�adiremos una nueva columna

mutate(diamonds, nueva_col=carat*100)
