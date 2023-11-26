library(pheatmap)
library(RColorBrewer)

mtcars.cor <- cor(dataset, method = "spearman")
round(mtcars.cor,2)
pheatmap(mtcars.cor, color = colorRampPalette(brewer.pal(10, "Blues"))(200), 
         main = "Mapa de Calor de la Matriz de Correlación")