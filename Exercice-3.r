# El código siguiente, que crea un dataframe y quita las filas duplicadas, siempre se ejecuta y actúa como un preámbulo del script: 

# dataset <- data.frame(Age, Ash, cement, CoarseAgg, FineAgg, strength, superplasticizer, slag, water)
# dataset <- unique(dataset)

# Pegue o escriba aquí el código de script:
library(randomForest)
library(ggplot2)

# Asegúrate de tener la columna 'TargetVariable' en tu conjunto de datos 'dataset'
concrete_data <- dataset

# Establecer semilla para reproducibilidad
set.seed(123)

# Crear conjuntos de entrenamiento y prueba
train_index <- sample(1:nrow(concrete_data), 0.7 * nrow(concrete_data))
train_data <- concrete_data[train_index, ]
test_data <- concrete_data[-train_index, ]

# Entrenar el modelo RandomForest
modelo_rf <- randomForest(strength ~ ., data = train_data)

predicciones <- predict(modelo_rf, newdata = test_data)

ggplot(data = data.frame(Real = test_data$strength, Predicho = predicciones)) +
  geom_point(aes(x = Real, y = Predicho)) +
  geom_abline(slope = 1, intercept = 0, color = "red", linetype = "dashed") +
  labs(title = "Relación entre Valores Reales y Predichos",
       x = "Valor Real",
       y = "Valor Predicho")


# Para poder visualizar lo que se obtiene de los árboles que se obtienen al aplicar el algoritmo original, se hace uso de:
# Visualizar la estructura de los primeros dos árboles (puedes ajustar según necesites)
# tree1 <- getTree(modelo_rf, k = 1)

# Visualizar la estructura del primer árbol
# print(tree1)