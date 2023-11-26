# Primero
library(corrplot)
mtcars.cor <- cor(dataset, method = "spearman")
round(mtcars.cor,2)
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF",
                          "#77AADD","#4477AA"))		 
corrplot(mtcars.cor, method = "pie", shade.col = NA, tl.col = "black",
         tl.srt = 45, col = col(200), addCoef.col = "black", addcolorlabel = "no",
         order = "AOE", type = "upper", diag = F, addshade = "all")	


# En este fichero se ha realizado la personalizacion de los colores de la representacion y del metodo de graficacion usado, para este caso se ha usado circle en vez de pie.
# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(var1, var2, var3, var4, var5, var7, var6, var8)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:
library(corrplot)
mtcars.cor <- cor(dataset, method = "spearman")
round(mtcars.cor,2)
col <- colorRampPalette(c("#4575b4", "#91bfdb", "#fee08b", "#d73027"))				 
corrplot(mtcars.cor, method = "circle", shade.col = NA, tl.col = "black",
         tl.srt = 45, col = col(200), addCoef.col = "black", addcolorlabel = "no",
         order = "AOE", type = "upper", diag = F, addshade = "all", main = "Matriz de correlación", xlab = "Variables", ylab = "Variables")	