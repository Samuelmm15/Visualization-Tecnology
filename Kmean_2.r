#
library(ggpubr)
library(factoextra)
# Compute k-means with k = 3
set.seed(123)
res.km <- kmeans(scale(dataset), 3, nstart = 25)

fviz_cluster(res.km, data = dataset,
             palette = c("#2E9FDF", "#00AFBB", "#E7B800"), 
             geom = "point",
             ellipse.type = "convex", 
             ggtheme = theme_bw()
             )

# Se realiza la personalización de la representación cambiando la paleta de colores, el añadido de los títulos, etc. Este cambio se puede observar en el siguiente código adjunto:

library(ggpubr)
library(factoextra)
library(viridis)

# Cambiar la paleta de colores
my_palette <- viridis(3)

# Calcular k-means con k = 3
set.seed(123)
res.km <- kmeans(scale(dataset), 3, nstart = 25)

# Personalizar el gráfico
p <- fviz_cluster(
  res.km, 
  data = dataset,
  palette = my_palette,
  geom = "point",
  ellipse.type = "convex",
  ggtheme = theme_minimal(),  # En este punto se realiza el cambio de tema
  main = "Análisis de Clústeres",
  xlab = "Variable 1",  
  ylab = "Variable 2"   
)

# Implementación de algunos tipos de configuraciones de los distintos textos
p + theme(
  legend.position = "bottom",  
  legend.title = element_blank(), 
  plot.title = element_text(size = 16, face = "bold"),  
  plot.subtitle = element_text(size = 14, face = "italic"),  
  axis.title = element_text(size = 12, face = "bold")  
)