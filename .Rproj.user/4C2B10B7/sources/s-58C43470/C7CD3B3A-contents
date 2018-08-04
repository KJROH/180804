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
target <- readLines("jeju.txt")
target <- gsub("\\d+","",target)

target
target <- sapply(
  target,
  extractNoun,
  USE.NAMES = F
)
target <- unlist(target)
myGsub <- readline("제주도여행코스gsub.txt")
i<-1
for (i in 1 : length(myGsub)) {
  target <- gsub(myGsub[i],"",target)
}
target <- Filter(function(x){!nchar(x)==1},target)
target <- Filter(function(x){nchar(x)<=10},target)
head(sort(target,decreasing = T),40)
write(unlist(target),"jeju2.txt")
target <- read.table("jeju2.txt")
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
  0.3,
  1,
  "제주도 추천",
  cex=0.8,
  fill = NA,
  border = NA,
  bg = "black",
  text.col = "green",
  text.font = 2,
  box.col = "red"
)


top <- head(
  sort(target,decreasing = T),50
)
top
top10<-c(
  "중문","주상절리","성산","천지연폭포","송악산",
  "한라산","산방산","섭지코지","송악산","오설록")
top10count <-c(
  13,12,10,9,9,8,6,6,7,5)
top10
barplot(
  as.matrix(top10),
  main = "제주",
  beside = T,
  col = rainbow(nrow(top10count)),
  ylim = vYlim
)
plot.new()


legend(
  0.7,
  1,
  top10count,
  cex = 0.6,
  fill = rainbow(length(top10))
)


