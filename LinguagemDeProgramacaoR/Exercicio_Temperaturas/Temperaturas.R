# install.packages("readr")
# install.packages("data.table")
# install.packages("dplyr")
# install.packages("ggplot2", dependencies = TRUE)
# install.packages("scales")
# install.packages("magrittr")

library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
library(magrittr)

# As temperatura na cidade de Curitiba aumentaram ao longo dos anos:

#carrega o dataset 
df <- fread("TemperaturasGlobais.csv") 

cidadesBrasil <- subset(df, Country == 'Brazil')

# separa as cidades do Brasil e elimina valores NA
cidadesBrasil <- df %>% subset(df$Country == 'Brazil') %>% na.omit()

cidadesBrasil <- df %>% subset(df$Country == 'Brazil')
cidadesBrasil <- cidadesBrasil %>% na.omit()

# cria um dataset so com dados de Curitiba 
curitiba <- cidadesBrasil %>% subset(cidadesBrasil$City == 'Curitiba')


curitiba$dt <- curitiba$dt %>% as.POSIXct(format='%Y-%m-%d')
# cria coluna Mes 
curitiba$Mes <- month(curitiba$dt)
# cria coluna Ano 
curitiba$Ano <- year(curitiba$dt)

# separa alguns anos para gerar um grafico 
curitiba <- subset(curitiba, Ano %in% c(1796,1846,1896,1946,1996,2013))

p_crt <- ggplot(curitiba, aes(x = (Mes), y = AverageTemperature, color = as.factor(Ano))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mes")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Media ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

# plota um grafico 
p_crt
