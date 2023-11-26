# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(var1, var2, var3, var4, var5, var6, var7, var8)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:
library(ggplot2)
library(GGally)

# Crear un gráfico de pares
ggpairs(dataset, columns = c("var1", "var2", "var3", "var4"), 
        title = "Gráfico de Pares")


# La siguiente representación muestra un gráfico con las distintas relaciones que existen entre pares de variables, permite identificar patrones y correlaciones entre las distintas variables.