library(ggplot2)
library(GGally)

# Crear un gráfico de pares
ggpairs(dataset, columns = c("var1", "var2", "var3", "var4"), 
        title = "Gráfico de Pares")