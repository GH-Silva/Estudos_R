# Verificando valores missing (Ausentes)

# NA = Valores ausentes

# NAN = not a number (valores indefinidos)

sapply(covid_sp_alterado, function(x) sum(is.na(x)))
sapply(covid_sp_alterado, function(x) sum(is.nan(x)))

covid_sp_alterado2 <- replace(x = covid_sp_alterado, list = is.na(covid_sp_alterado), values = 54)

#Substituição dos valores

covid_sp_alterado2$semana_epidem[covid_sp_alterado2$semana_epidem == 54] <- 2021

# Verificação da tipagem dos atributos (Variáveis):
# Existem 7 Tipos Básicos
# Character (Caracter)
# Interegr (Números inteiros)
# Numeric ou Double (Numéros Reais)
# Logical (Falso ou Verdareiro)
# Complex (Números complexos)
# Factor (Fator: classes, sequência de valores definidos por níveis)
# Date (Data)



str(covid_sp_alterado2)
# OU
glimpse(covid_sp_alterado2)


# Transformação da tipagem de atributos
covid_sp_alterado2$semana_epidem <- as.integer(covid_sp_alterado2$semana_epidem)
glimpse(covid_sp_alterado2)

covid_sp_alterado2$data <- as.Date(covid_sp_alterado2$data, format = '%d/%m/%Y')
glimpse(covid_sp_alterado2)

# Exemplo:

covid_sp_alterado2$semana_epidem[covid_sp_alterado2data >= "2021-01-01" & covid_sp_alterado2$data <= "2021-01-07"] <- 54
View(covid_sp_alterado2)

# Alterar várias variáveis de uma única vez

covid_sp_alterado2[5:8] <- lapply(covid_sp_alterado2[4:8], as.character)
glimpse(covid_sp_alterado2)

# Criação de Colunas

covid_sp_alterado2["idoso(%)"] <- 100*covid_sp_alterado2$pop_60/covid_sp_alterado2$pop
View(covid_sp_alterado2)








