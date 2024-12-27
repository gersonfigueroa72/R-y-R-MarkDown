install.packages("gtools")
library(gtools)
library(readxl)
library(ggplot2)
library(quantmod)
library(fImport)
library(tseries)
library(tidyverse)
#ac? terminan las librerias que us?#
iteraci?n=c(1:50); iteraci?n
cara=c(5,5,5,3,4,3,2,4,5,3,3,4,3,1,4,8,6,2,6,3,7,4,5,5,
       3,7,6,6,4,4,4,5,5,4,6,4,4,3,2,6,4,4,3,3,4,3,3,5,
       5,4)
escudo=c(3,3,3,5,4,5,6,4,3,5,5,4,5,7,4,0,2,6,2,5,1,4,3,
         3,5,1,2,2,4,4,4,3,3,4,2,4,4,5,6,2,4,4,5,5,4,5,
         5,3,3,4)
#inciso 1 (crear la tabla de datos:)
tabla=matrix(c(iteraci?n,cara,escudo),nrow = 50,
             ncol = 3); tabla
#inciso 2: las combinaciones que podemos crear vendr? 
#dado por la formula de combinaciones con repetici?n.

$$\frac{(n+k-1)!}{k!(n-1)!}$$
  
n=("numero de elementos=9")
k=("cantidad de elementos en cada combinacion=50")
#calculando tendremos:
combinaciones=factorial(58)/(factorial(50)*factorial(8))
combinaciones

#inciso 3: permutaciones:
#para hallar las permutaciones usamos la formula:
$$n^{k}$$
#operando:
permutaciones=9^{50};permutaciones
#inciso 4: espacio muestral de las combinaciones
cara1=c(1,7,8,0,2,6,5,3,4)
escudo1=c(7,1,0,8,6,2,3,5,4)
intento1=matrix(c(1,7,8,0,2,6,5,3,4),c(7,1,0,8,6,2,3,5,4),nrow = 9,ncol = 2);intento1
#inciso 6: boxplot
boxplot(cara,escudo,main="Propiedades de cada grupo
        de datos")
#Comparando las dos graficas podemos notar:
#1)La dispersi?n entre en los dos casos (cara y
#cruz es peque?a)
#2) la media es la misma para ambas y es = 4
#3)podriamos decir que ambas distribuciones de datos
#se aproximan a una distribuci?n simetrica.

#inciso 7
hist(cara)
hist(escudo)
#podemos concluir que ambas se comportan como lo 
#har?a una distribuci?n normal.
#
#inciso 8
#para cara:
median(cara)
mean(cara)
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
mode(cara)
sd(cara)
#para escudo
median(escudo)
mean(escudo)
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
mode(escudo)
sd(escudo)
  
#inciso 9:
p=1/256;p
j=c(1:80)
b=dbinom(j,50,p)
b
plot(dbinom(j, size = 50, prob = p), type = "h", lwd = 2,
     main = "Funci?n de probabilidad binomial",
     ylab = "P(x)", xlab = "N?mero de ?xitos")
  
  
#inciso 10:
m=sample(escudo,10)
hist(m)
#de la muestra aleator?a podemos notar, que
# se asemeja a todos los datos que teniamos
#al principio
#Error para cara
real=4
aproxcara=mean(cara)
aproxcara
Errorcara=(aproxcara-4)*100/4;Errorcara

#Error para escudo
real=4
aproxescudo=mean(escudo)
aproxescudo
errorescudo=(4-aproxescudo)*100/4;errorescudo








