library(rJava)
library(DBI)
library(RJDBC)
library(XML)
library(memoise)
library(KoNLP)
library(wordcloud)
library(dplyr)
library(ggplot2)
library(ggmap)
library(rvest)
library(RColorBrewer)
library(data.table)
library(reshape) 
library(stringr)


getwd()
setwd("C:/R/project180721")
list.files()
useSejongDic()
target <- readLines("seoul.txt")
target <- gsub("\\d+","",target)

target


target <- sapply(
  target,
  extractNoun,
  USE.NAMES = F
)
target <- unlist(target)
myGsub <- readline("MYGSUB.txt")
i<-1
for (i in 1 : length(myGsub)) {
  target <- gsub(myGsub[i],"",target)
}
target <- Filter(function(x){!nchar(x)==1},target)
target <- Filter(function(x){nchar(x)<=10},target)
head(sort(target,decreasing = T),20)
write(unlist(target),"seoul.txt")
target <- read.table("seoul.txt")
target <- table(target)
head(sort(target,decreasing = T),20)
pal <- brewer.pal(8,"Dark2")
wordcloud::wordcloud(names(target),
                     freq = target,
                     min.freq = 1,
                     random.order = F,
                     rot.per = 0.25,
                     scale = c(5,1),
                     colors = pal
)
legend(
  0.4,
  1,
  "서울 추천",
  cex=0.8,
  fill = NA,
  border = NA,
  bg = "black",
  text.col = "green",
  text.font = 2,
  box.col = "red"
)

