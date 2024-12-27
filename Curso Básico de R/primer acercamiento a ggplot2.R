#Para esta actividad, utilizará los datos de Pingüinos de Palmer 
#llamamos nuestras librerías:

library(palmerpenguins)
library(tidyverse)

#llamamos a nuestros datos

data("penguins")

#El Conjunto de datos pingüinos contiene mediciones del tamaño de 
#tres especies de pingüinos (Adelia, Barbijo y Papúa) que viven en el 
#archipiélago de Palmer, en la Antártida. Las columnas incluyen 
#información como la masa corporal, la longitud de las aletas y 
#la longitud del pico.

#Creamos ahora nuestro gráfico

ggplot(data = penguins) + geom_point(
  mapping = aes(x = flipper_length_mm, y = body_mass_g))

#ggplot(datos = pingüinos): En ggplot2, se comienza un trazado con la 
#función ggplot(). La función ggplot() crea un sistema de coordenadas al 
#que puede añadir capas. El primer argumento de la función ggplot() es el 
#conjunto de datos que se utilizará en el gráfico. En este caso, es 
#"pingüinos"

#+: A continuación, añada un símbolo "+" para añadir una nueva capa 
#a su trazado.

#geom_point(): A continuación, elija un punto geométrico añadiendo una 
#función geom. La función geom_point() utiliza puntos para crear gráficos
#de dispersión, la función geom_bar utiliza barras para crear gráficos
#de barras, etc

#(mapping = aes(x = flipper_length_mm, y = body_mass_g)):
#El argumento de mapeo siempre está vinculado a la función aes(). Los 
#argumentos x e y de la función aes() especifican qué variables mapear 
#al eje x y al eje y del sistema de coordenadas. En este caso, desea 
#mapear la variable "flipper_length_mm" al eje x, y la variable 
#"body_mass_g" al eje y.

#Color, forma y tamaño Basado en una Variable

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, 
                           color = species, shape=species, size=species))

#Ahora ajustamos la transparencia de nuestros datos:

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, 
                           alpha = species))

#Tambien podemos cambiar a un solo color

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), 
             color = "blue")

#Lo que haremos ahora será cambiar el geom, para así cambiar la forma 
#que tiene muestro grafico, lo cambiaremos por una curva suave.
#Tambien podemos ver que podemos agregar más capas de datos usando +

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g), 
             color = "red") +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), 
             color = "purple")

#Ahora hacemos un diferente ajuste por especie:

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, 
             color = species, linetype=species))

#Tambien podemos agregar ruido aleatorio a nuestros datos

ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#ahora aprenderemos a hacer un grafico de barras utilizando los datos 
#diamonds

data("diamonds")

#la grafica quedaría como

ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut))

#A estas barras les podemos agregar color="color", sin embargo este 
#solo marcará el contorno de las barras, para rellenar las barras
#usamos fill

ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=cut))

#tambien podemos hacer grafico de barras apiladas:

ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=clarity))

#Ahora aprenderemos a utilizar facetas, empezaremos por facet_wrap()

ggplot(data = penguins) + geom_point(
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_wrap(~species)

#facetamos la gráfica de barras de los diamantes 

ggplot(data=diamonds)+geom_bar(mapping = aes(x=color, fill = cut))+
  facet_wrap(~cut)

#usamos facet_grid() para facetar mas de una variable

ggplot(data=penguins)+geom_point(mapping = aes(
  x=flipper_length_mm,y=body_mass_g, color=species))+
  facet_grid(sex~species)

#Ahora agregamos anotaciones a nuestra gráfica

p=ggplot(data = penguins) + geom_point(
  mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))+
  labs(title = "Pinguinos: Masa corporal vs Longitud de pico", 
       subtitle = "Muestra de tres especies", 
       caption = "Datos recolectados por Dr. Kristen Gorman")

#si queremos agregar una nota dentro de la grafica usamos annotate()

p+annotate("text", x=220, y=3500, label="Los Gentoos son los mas
           grandes", color="blue", size=2,angle=45)
 