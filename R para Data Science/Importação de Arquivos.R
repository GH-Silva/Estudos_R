# IMPORTAÇÃO DE DATA FRAMES:

setwd("C:/Users/Gabriel/Documents/Histórico Gabriel/Cursos/Udemy/Linguagem R/Estudos R")

# Arquivo txt.

df1 <- read.table("partks.txt")
df1

View(df1)


# Arquivo csv

df2 <- read.csv("mola.csv")
df2

df3 <- read.csv("questoes.csv", encoding = "latin-1")

df3 <- read.csv("questoes.csv", encoding = "iso-8859-1")

df3 <- read.csv("questoes.csv", encoding = "UTF-8")


# Arquivo em Excel

install.packages("readxl")
library(readxl)

df4 <- read_xlsx("registro.xlsx")


