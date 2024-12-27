edad = 10
edad2 <- 12
edad
edad <- 10+25; edad
mode(edad)
length(edad)
x = c(1,2,3)
y = vector(mode = "numeric", length = 3)
y[2] = 200; y[3] = 25
#forma de escribir una matriz
#hay que indicarle cuantos numeros y
#cuantas filas y columnas
m = matrix(1:6, ncol = 3, nrow = 3); m
#forma de buscar un dato en la matriz m ya antes
#declarada, se pone la fila y columna del dato que se
#quiere encontrar
m[2,2]
#manera de encontrar los datos de toda una fila o 
#columna.
m[1,]; m[,2]

pacientes = 1:10
peso = 115:124
data.frame(pacientes,peso)
data.frame(pacientes,110)
#media estadistica
mean(peso)
mean(25:38)
mean(5,4,8,6,2,1,4,5,8,)
#mediana estadistica
median(peso)
#varianza
var(peso)
#desviación estandar
sd(peso)
#coeficiente de variación:
sd(peso)/mean(peso)
#insuficiente=I bueno=B Regular=R
#medio=M alto=A
t=table(Resultados); t
#frecuencia relativa
t/length(Resultados)
