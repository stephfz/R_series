#Hola Mundo R

#Basics

#Asignaci??n de Variables 
manzanas <- 5
peras <- 10

manzanas + peras

##################################
##        Vectores               #
################################## 

#Creando un vector
my_vec <- c(1,2,4,5)

#En R, podemos tener vectores nombrados (mindblow)
manzanas_por_dia <- c(2,3,5,7,5,6,7)
dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo")
names(manzanas_por_dia) <- dias
manzanas_por_dia #mindblow
# obtener la sumatoria
sum(manzanas_por_dia)
# sub-conjunto de un vector
manzanas_por_dia[3:5]
# subconjunto por seleccion
manzanas_por_dia > 5
manzanas_por_dia[manzanas_por_dia > 5]


##################################
##        Matrices               #
################################## 
a_mat = matrix(1:35, 7 , 5, byrow = FALSE ) #el llenado de datos se hace x filas
a_mat
otra_mat = matrix(1:35, 7 , 5, byrow = TRUE)#el llenado de datos se hace x columnas
otra_mat
# obtener la sumatoria por filas
rowSums(otra_mat)
# seleccionando un elemento de la matrix
elemento <- a_mat[2,4]
elemento

##################################
##        Factor                 #
################################## 
rsltos <- c("S", "M", "M", "L", "S")
# categorizando datos
talles <- factor(rsltos)
talles
# sumarizado
summary(talles)
# factor ordenado
factor_talles <- factor(rsltos, ordered = TRUE, levels =c("S", "M", "L"))
factor_talles


##################################
##        Dataframe              #
################################## 
df_numeros_votados <- data.frame(numeros = 1:4, votados = c(T,T,F,F))
df_numeros_votados
# explorar los datos y tipos de datos del dataframe
str(df_numeros_votados)
# seleccionar un subconjunto de datos por columna
df_numeros_votados[1:3, "votados"]
# seleccionar toda una columna
df_numeros_votados$numeros
# subconjunto por condicion
subset(df_numeros_votados, subset = votados == FALSE)


##################################
##        Listas                 #
################################## 
lista <- list(c("Marzo", "Abril"), c(1:8), T)
lista
# seleccionar el segundo elemento de la lista
lista[[2]]
