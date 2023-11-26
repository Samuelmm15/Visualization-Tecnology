library(corrplot)
mtcars.cor <- cor(dataset, method = "spearman")
round(mtcars.cor,2)
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF",
                          "#77AADD","#4477AA"))		 
corrplot(mtcars.cor, method = "pie", shade.col = NA, tl.col = "black",
         tl.srt = 45, col = col(200), addCoef.col = "black", addcolorlabel = "no",
         order = "AOE", type = "upper", diag = F, addshade = "all")	

# ====================================================================================
# MODIFICACIÓN
# ====================================================================================
library(corrplot)
mtcars.cor <- cor(dataset, method = "spearman")
round(mtcars.cor,2)
col <- colorRampPalette(c("#4575b4", "#91bfdb", "#fee08b", "#d73027"))				 
corrplot(mtcars.cor, method = "circle", shade.col = NA, tl.col = "black",
         tl.srt = 45, col = col(200), addCoef.col = "black", addcolorlabel = "no",
         order = "AOE", type = "upper", diag = F, addshade = "all", main = "Matriz de correlación", xlab = "Variables", ylab = "Variables")	
