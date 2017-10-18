## TP 1 Parte 2
## Punto 2
## Limpieza del dataset
#Limpio el ambiente y elijo el directorio
rm(list = ls())
setwd("~/Maestría en Data Mining - UBA/2017 2C - DM en CyT/TP 1 - Parte 2")

#Cargo el dataset con las variables de interÃ©s
base <- read.csv("base_ampliada_tp1p2.csv")

#Limpio la variable MC_class para poder usarla en un subsetting
base$MC_class <- trimws(base$MC_class)

#Me quedo quedo con los datos que estÃ©n definidos como "Galaxy" (sÃ³lo galaxias)
galaxias <- subset(base, MC_class == "Galaxy")

#Aplico los criterios de eliminaciÃ³n de registros con outliers (MAD > 6)
#ATENCIÃN: excluyo a las nuevas variables x e y del anÃ¡lisis. Â¿Corresponde?
umbral <- 6
casos_eliminar <- sort(unique(unlist(apply(galaxias_subset[,-c(1:3,7)],2,
                 function(x) which (abs(x-median(x,na.rm=T))/mad(x,na.rm=T)>umbral)))))
galaxias <- galaxias[-casos_eliminar,]

#Me quedo con los registros con Rmag < 24 (los maÅ confiables)
galaxias <- subset(galaxias, Rmag < 24)

#Me quedo con los registros con phot_flag menor a 8 (evita errores de mediciÃ³n serios)
galaxias <- subset(galaxias, phot_flag < 8)

#Reemplazo los valores negativos por cero en la variable ApD_Rmag
galaxias$ApD_Rmag <- ifelse(galaxias$ApD_Rmag < 0, 0, galaxias$ApD_Rmag)
