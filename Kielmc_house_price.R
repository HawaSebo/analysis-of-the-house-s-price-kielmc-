
#---------> Importation des packages


library(XML)
library(tidyverse)
library(RColorBrewer)
library(jtools)
#---------> Importation des fonctions pour lire un fichier .gdt

source("gretlReadWrter/describeData.R")
source("gretlReadWrter/getAllMetaData.R")
source("gretlReadWrter/getColumnLabel.R")
source("gretlReadWrter/read_gdt.R")

#---------> Importation des donn??es

data <- read.gdt("Data/kielmc.gdt")

print(data[1:5,])

#---------> Types de donn??es (longitudinales ou transversales)

data %>% distinct(year)

#---------> les colonnes du dataframe
colnames(data)

#---------> Data selon l'ann??e

data %>% filter(year == 1978) -> data1978

data %>% filter(year == 1981) -> data1981

#-------------------------- REGRESSION LINEAIRE: Model 1 --------------------------

# Pour effectuer la r??gression 7 variables sont retenues
# Variables explicatives: age, area, land, rooms, baths, nbh, cbd.
# Notons que cette r??gression concerne l'ann??e 1978

cols = brewer.pal(7, "Spectral")
reg.ln <- lm(price ~ age+area+land+rooms+baths+nbh+cbd, data = data)
par(mfrow= c(3,3))
variables <-  c("age","area", "land", "rooms", "baths", "nbh", "cbd")
for (i in variables) {
  
  plot(price ~ i , pch= 19)
  #abline(lm(price ~ i, data = data), col = cols[i])
 # title("Repr??sentation du prix en fonction de ")
  
}
plot(price~ age+area+land+rooms+baths+nbh+cbd, data = data)
abline(reg.ln,col = "blue")







