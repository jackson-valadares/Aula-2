# Econometria Avançada Aula 2

# Noções Básicas

x <- 1:10 #cria objeto x com elementos de 1:10
y <- rep(3,10) #cria objeto y com 10 repetições do número 3
ls() #lista todos os objetos que estão no global environment
rm(list="x","y") #apaga os objetos x e y
setwd("G:/USJT/Econometria") #altera a pasta de trabalho do R
getwd() #mostra a pasta de trabalho atual do R

# Instalar Pacotes

install.packages("pwt8") #instala o pacote pwt8
library("pwt8") #roda o pacote pwt8
data("pwt8.0") #carrega os dados pwt8.0 disponíveis no pacote
View (pwt8.0) #vizualiza a tabela pwt8.0

# Extrair dados da tabela

br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr")) #cria a tabela br onde é escolhido o país Brasil e as variáveis
colnames(br) <-  c("PIB","Trabalho","Câmbio") #altera o nome das variáveis

# Criar Gráficos

plot(br$PIB) #cria um gráfico dos valores de PIB na tabela br
plot(br$PIB, type = "l") #transforma os valores em forma de linha
dados <- ts(br, start = 1950, frequency = 1) #cria a tabela dados com uma série temporal que começa em 1950 e a frequência é anual
plot(dados) #cria um gráfico da tabela dados
plot(dados, col="blue", main="Dados Brasileiros", xlab="Ano") #muda o título e a cor das linhas do gráfico para azul

#Salvar

write.csv(br, file="G:/USJT/Econometria/A2/Dados-Brasileiros.csv") #salva a tabela
