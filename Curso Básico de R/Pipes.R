library(dplyr)
data("ToothGrowth") #datos que ya trae por defecto R
View(ToothGrowth) #esto lo hacemos para ver los datos que cargamos

#Ahora lo que haremos será utilizar la funcion filtrar que viene
#incluida en dplyr

datos_filtrados = filter(ToothGrowth,dose==0.5)
View(datos_filtrados) #limpiamos datos a los que solo tengan dosis igual a 0.5

#Teniendo los datos filtrados, vamos a ordenarlos de menor a mayor en función
#de la longitud del diente (len)

arrange(datos_filtrados,len)

#Para llegar a nuestro objetivo utilizamos dos funciones, veamos que sucede
#al utilizar funciones anidadas. esto sería:

dato_filtrado_anidado=arrange(filter(ToothGrowth,dose==0.5), len)

#obtenemos el mismo resultado
#AHORA UTILIZAREMOS UNA PIPA:

pipa_datos_filtrados=ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
