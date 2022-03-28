
#________RECODIFICACION DE VARIABLES___________

# Se trabaja con la matriz "escuela.xslx"

# 1.- Importacion de la matriz 


#------------------------------------------
#    Exploracion de la matriz
#------------------------------------------
dim(Escuela_1_)
str(Escuela_1_)
summary(Escuela_1_)


#-------------------------------------------
#      Configuracion de variables
#--------------------------------------------

Escuela_1_$genero<-factor(Escuela_1_$genero,
                          levels=c("Femenino", "Masculino"))
summary(Escuela_1_)

Escuela_1_$Matematicas<-factor(Escuela_1_$Matematicas,
                               levels=c("5", "6", "7", "8", "9", "10"))

summary(Escuela_1_)

Escuela_1_$Español<-factor(Escuela_1_$Español,
                               levels=c("5", "6", "7", "8", "9", "10"))

summary(Escuela_1_)

Escuela_1_$Ciencias<-factor(Escuela_1_$Ciencias,
                           levels=c("5", "6", "7", "8", "9", "10"))

summary(Escuela_1_)

Escuela_1_$Geografia<-factor(Escuela_1_$Geografia,
                            levels=c("5", "6", "7", "8", "9", "10"))

summary(Escuela_1_)

Escuela_1_$grupo<-factor(Escuela_1_$grupo,
                          levels=c("A", "B", "C"))

summary(Escuela_1_)


install.packages("ggplot2")

library(ggplot2)

# 1.- Creación de un vector de color
color=c("darkseagreen", "lavenderblush3", "lemonchiffon1", "firebrick2",
        "gold2", "darkorchid")

# 2.- Creación del gráfico
GB1<-ggplot(Escuela_1_, aes(x=Matematicas))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Matematicas")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1
