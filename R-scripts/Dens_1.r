library(ggplot2)
library(hrbrthemes)
# Chart
p <- ggplot(dataset, aes(x=x) ) +
  # Top
  geom_density( aes(x = var1, y = ..density..), fill="#69b3a2" ) +
  geom_label( aes(x=4.5, y=0.25, label="Variable 1"), color="#69b3a2") +
  # Bottom
  geom_density( aes(x = var2, y = -..density..), fill= "#404080") +
  geom_label( aes(x=4.5, y=-0.25, label="Variable 2"), color="#404080") +
  theme_ipsum() +
  xlab("value of x")
p

# ====================================================================================
# MODIFICACIÓN
# ====================================================================================
library(ggplot2)
library(hrbrthemes)
library(viridis)

# Se realiza la creación de la paleta de colores que se va a usar para el top y para el bottom
color_palette_top <- viridis(2)[1]
color_palette_bottom <- viridis(2)[2]

# Chart
p <- ggplot(dataset, aes(x = x)) +
  # Top
  geom_density(aes(x = var1, y = ..density..), fill = color_palette_top, alpha = 0.7) +
  geom_label(aes(x = 4.5, y = 0.25, label = "Variable 1"), color = color_palette_top) +
  # Bottom
  geom_density(aes(x = var2, y = -..density..), fill = color_palette_bottom, alpha = 0.7) +
  geom_label(aes(x = 4.5, y = -0.25, label = "Variable 2"), color = color_palette_bottom) +
  theme_ipsum() +
  xlab("Value of x") +
  ylab("Density") +  # Agregamos etiqueta al eje y
  labs(title = "Distribuciones de Variable 1 y 2", subtitle = "Realizado por Samuel Martín Morales") + 
  theme(
    plot.title = element_text(hjust = 0.5),  # Se establecen las características de los textos
    plot.subtitle = element_text(hjust = 0.5),  
    legend.position = "bottom",  
    legend.direction = "horizontal",  
    legend.box = "horizontal"  
  )

p