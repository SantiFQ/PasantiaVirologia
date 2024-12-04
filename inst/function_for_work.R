library(ggplot2)
set.seed(555)

dt_trabajo<-data.frame(nombre=c("manzana",
                                "naranja",
                                "durazno",
                                "pelon",
                                "ciruela",
                                "uva",
                                "pera"),
                       sexo=sample(c("M","F"),7,replace=TRUE),
                       UFP=runif(7,min=0,max=1E6))
dt_trabajo


ggplot(dt_trabajo,aes(x=sexo,y=UFP,label=nombre,color=nombre)) + 
  geom_text()

plot_UFP_per_sex <- function(dt){
  p <- ggplot(dt,aes(x=sexo,y=UFP,label=nombre,color=nombre)) + 
    geom_text()
  return(p)
}

plot_UFP_per_sex(dt_trabajo)
