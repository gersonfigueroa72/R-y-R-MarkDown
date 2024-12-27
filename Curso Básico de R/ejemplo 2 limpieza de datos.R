install.packages("Tmisc")
library(Tmisc)
data("quartet")
View(quartet)
library(tidyverse)

#Ahora veremos un resumen del grupo I,II,III y IV de la siguiente forma:

quartet %>% group_by(set) %>% summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

install.packages('datasauRus') 

library('datasauRus')

ggplot(datasaurus_dozen,aes(x=x,y=y,color=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)