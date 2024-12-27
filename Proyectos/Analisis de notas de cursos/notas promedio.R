#voy a calcular el promedio de mis cursos

library(tidyverse)

notas=c(70,61,68,66,69,78,72,72,65,69,69,88,85,61,68,
        87,88,77,81,80,73,77,85,89,74,80,83,75,80,87,76,
        95,86,84,88,77,87,95,84,96,71)

#contamos cuantos elementos tiene el vector:

length(notas)

#el promedio sería

mean(notas)

#crearé sub vectores por semestre

sem_1=notas[1:5]

sem_2=notas[6:11]

sem_3=notas[c(12,13,14,15,20)]

sem_4=c(notas[16:18],notas[c(23,31)])

sem_5=notas[c(22,21,24,25,19)]

sem_6=notas[26:30]

sem_7=notas[32:36]

sem_8=c(87,95,84,96,71)

semestres=c(1:8)

medias_notas=c(mean(sem_1),mean(sem_2),mean(sem_3)
               ,mean(sem_4),mean(sem_5),mean(sem_6),mean(sem_7),mean(sem_8))

marco=data.frame(semestres,medias_notas)

ggplot(data = marco) + geom_point(mapping = aes(x=semestres,y=medias_notas),color=semestres)+
  geom_smooth(mapping = aes(x=semestres,y=medias_notas,),color="red")

mean(medias_notas)
