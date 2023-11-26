# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(var1, var2, var3, var5, var4, var6, var7, var8)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:
library(pheatmap)
library(RColorBrewer)

mtcars.cor <- cor(dataset, method = "spearman")
round(mtcars.cor,2)
pheatmap(mtcars.cor, color = colorRampPalette(brewer.pal(10, "Blues"))(200), 
         main = "Mapa de Calor de la Matriz de Correlación")