# Instalar y cargar los paquetes necesarios
install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

# Cargar el dataset
dataset <- read.csv("D:/Censo2018/Censo2018/VIVIENDA_BDP.csv", sep = ",")

# Árbol de decisión: predicción de la condición de la vivienda
arbol <- rpart(DEPARTAMENTO ~ PCV1 + PCV2 + PCV3 + PCV4 +PCV5 + AREA, 
               data = dataset, 
               method = "class")

# Visualizar el árbol de decisión
rpart.plot(arbol, 
           type = 2, 
           extra = 102,  # Muestra porcentajes en los nodos
           fallen.leaves = TRUE, 
           box.palette = "BuGn", 
           main = "Árbol de Decisión: Condición de la Vivienda")
