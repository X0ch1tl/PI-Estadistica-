
#___________________Tablas de frecuencias____________

#1.- importar la matriz iris 

data("iris")

#2.- exploracion de la matriz
#dimension de la matriz tiene 150 individuos u observaciones y 5 variables 
dim(iris)

# 3.- nombre de las variables 
colnames(iris)

# 4.- tipos de variables 
str(iris)

#5.- visualizacion de una variable especifica
iris$Species

#6.- en busca de valores perdidos 
anyNA(iris)


#-------------------------------------------------------------------
#Generacion de tablas de frecuencia 
#-------------------------------------------------------------------

#1.- posicionarnos en una variable especifica Petal.Lenght
# indico que el nombre me lo acorte a PL, lo que resulte de esa indicacion
#quiero que me lo pongan en formato tabla, lo que resulte adquiera un formato
#de data.frame, a partir de lo anterior generar una nueva variable (objeto)
#llamada tabla_PL
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

#2.- frecuencia absoluta 
tabla_PL
# 3.- se construye la tabla de frecuencias completasredondeando las 
#frecuencias a 3 decimales

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


#4.- agrupacion de variables 8 clases
tabla_clases <-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,
                                                           breaks = 8))))

#5.- visualizacion de la tabla 
tabla_clases

#6.- construccion de tabla de frecuencias completa redondeado a 3 decimales
transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
#visualizar tabla 
tabla
