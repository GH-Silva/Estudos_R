# Tratamento dos Dados

# Baixar pacotes, caso eles ainda não estejam baixados
if (!require(dplyr)) install.packages("dplyr")

# Carregar pacotes 
library(dplyr)

# Buscar diretório (Pasta com os arquivos)
setwd("C:/Users/Gabriel/Documents/Histórico Gabriel/Cursos/Udemy/Linguagem R/Estudos R/dados-covid-sp-master/data")

# Abrir Arquivo 
covid_sp <- read.csv('dados_covid_sp.csv', sep = ";")
View(covid_sp)

covid_sp <- read.csv2('dados_covid_sp.csv', sep = ";", encoding = "UTF-8")
View(covid_sp)
head


# Renomeando variáveis (Colunas)

covid_sp_alterado <- rename(covid_sp, municipio = nome_munic)
View(covid_sp_alterado)

covid_sp_alterado <- rename(covid_sp, data = datahora, rotulo_mapa = map_leg, codigo_mapa = map_leg_s)
View(covid_sp_alterado)


# Excluir uma coluna (POR NOME)

covid_sp_alterado$cod_ra <- NULL

# Excluir uma coluna (POR NÚMERO)

covid_sp_alterado <- select(covid_sp_alterado, -c(21))

# Excluir várias colunas (POR NOME)

covid_sp_alterado <- subset(covid_sp_alterado, select = -c(codigo_ibge, cod_drs))

# Excluir várias colunas (POR NÚMERO)

covid_sp_alterado <- select(covid_sp_alterado, -c(14,15))

# Excluir uma linha (POR NÚMERO)

covid_sp_alterado <- slice(covid_sp_alterado, -c(239660))

# Excluir várias linhas (POR NOME)

covid_sp_alterado <- covid_sp_alterado %>% filter(nome_munic!="Ignorado")
View(covid_sp_alterado)







