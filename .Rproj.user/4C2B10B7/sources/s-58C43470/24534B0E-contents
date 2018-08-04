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

VDemo <- C(1:5)
VDemo

plot(1:3)
plot(VDemo)
plot(1:3,3:1)
plot(1:3,3:1,xlim=c(1,10),ylim=c(1,5))
plot(
  xlim = c(1,10),
  ylim = c(1,5),
  xlab = 'X측값',
  ylab = 'Y측값',
  main = 'PLOT 값 테스트'
)

plot.new()
dev.new()

##꺽은선차트
VDemo <- c(100,130,120,160,150)
plot(
  VDemo, 
  type = '0', 
  col = 'red',
  ylim = c(0,200),
  axes = F, 
  ann = F   # false 면 축이름 정하지않ㅇ
)
axis(
  1,
  ylim = c(0,200)
)
title(
  main = "과일",
  col.main = "red",
  font.main = 4
)
title(
  xlab = '요일',
  col.lab = "black"
)
title(
  ylab = '가격',
  col.lab = "blue"
)

VDemo <= c(100,130,120,160,150)
par(mfrow=c(1,3))
plot(VDemo, type = 'o')
plot(VDemo, type = 's')
plot(VDemo, type = 'l')

##
##

plot.new()
VDemo <= c(100,130,120,160,150)
par(mfrow=c(1,3))
pie(VDemo)
plot(VDemo, type = 'o')
barplot(VDemo)

## mgp = c(제목위치,지표값위치,지표선위치)
par(mgp = c(0,1,0))
plot(
  VDemo,
  xlab = "TEST"
)

par(mgp = c(2,1,0))
plot(
  VDemo,
  xlab = "TEST"
)


par(mgp = c(3,2,0))
plot(
  VDemo,
  xlab = "TEST"
)

par(mgp = c(3,2,1))
plot(
  VDemo,
  xlab = "TEST"
)

## oma option 그래프 전체 여백조정

par(oma = c(2,1,0,0))
plot(
  VDemo,
  xlab = "TEST"
)

par(oma = c(0,2,0,0))
plot(
  VDemo,
  xlab = "TEST"
)

## 이전 실습에서 3개로 출력한 것을 1개로만들기위한 예제

par(mfrow=c(1,1))  # 1행1열로 바꿔
t1 <- c(1,2,3,4)
t2 <- c(5,4,3,2,1)
t3 <- c(3,4,5,6,7)
plot(
  t1,
  type = 's',
  col = 'red',
  ylim = c(1,5)
)

par(new=T)
plot(
  t2,
  type = 'o',
  col = 'blue',
  ylim = c(1,5)
)
par(new=T)
plot(
  t3,
  type = 'l',
  col = 'green'
)




par(mfrow=c(1,1))  # 1행1열로 바꿔
t1 <- c(1,2,3,4)
t2 <- c(5,4,3,2,1)
t3 <- c(3,4,5,6,7)
plot(
  t1,
  type = 's',
  col = 'red',
  ylim = c(1,5)
)
lines(
  t2,
  type = 'o',
  col = 'blue',
  ylim = c(1,5)
)
lines(
  t3,
  type = 'l',
  col = 'green',
  ylim = c(1,5)
)
##
legend(
  3.5,
  5,
  c("국","영","수"),
  cex=0.5,
  col = c("red","blue","green"),
  lty = 1
)
## 막대그래프 
## 랜덤값 출력 runif(갯수, 시작값, 끝값)

plot.new()
VDemo <- round(runif(5,1,5),0)
VDemo
barplot(VDemo)

##수평방향
barplot(VDemo,horiz = T)

##그룹으로 묶어서 출력
v1 <- c(5,4,3,2)
v2 <- c(5,3)
v3 <- c("green","yellow")
m1 <- matrix(v1,2,2)
m1

barplot(
  m1,
  bside = T,
  names = v2,
  col = v3
)

v1 <- c(5,4,3,2)
v2 <- c("이전","이후")
v3 <- c("green","yellow")
v4 <- c(1,0.5,1,0.5)
m1 <- matrix(v1,2,2)
par(oma = v4)
barplot(
  m1,
  bside = T,
  names = v2,
  col = v3,
  horiz = T
)

##bar 합성

plot.new()
v1 <- c(5,4,3,2)
v2 <- c("이전","이후")
v3 <- c("green","yellow")
v4 <- c(0,12)
m1 <- matrix(v1,2,2)
barplot(
  m1,
  xlim = v4,
  names = v2,
  col = v3,
  horiz = T
)

##과일가격 응용
VBanana <- round(runif(5,100,180),0)
VCharry <- round(runif(5,100,180),0)
VOrange <- round(runif(5,100,180),0)
dFruit <- data.frame(
  바나나 = VBanana,
  체리 = VCharry,
  오렌지 = VOrange
)
barplot(
  as.matrix(dFruit),
  main = "과일판매량",
  beside = T,
  col = rainbow(nrow(dFruit)),
  ylim = vYlim
)


vYlim <-c(0,400)
VDay <- c("월","화","수","목","금")

legend(
  14,
  400,
  VDay,
  cex = 0.5,
  fill = rainbow(nrow(dFruit))
)


barplot(
  t(dFruit),
  main = "과일판매량",
  beside = T,
  col = rainbow(nrow(dFruit)),
  ylim = vYlim,
  space = 0.1,
  cex.axis = 0.8,
  las = 1,
  names.arg = VDay,
  cex = 0.8
)

legend(
  0.2,
  400,
  names(dFruit),
  cex = 0.8,
  fill = rainbow(nrow(dFruit))
)

## 무지개색으로 하되 개수는 dFruit
## 변수안에 있는 값의 개수만큼 하라

## 하나의 바에 값을 합치기
plot.new()
vBanana <- round(runif(5,100,180),0)
vCherry <- round(runif(5,100,180),0)
vOrange <- round(runif(5,100,180),0)
dFruit <- data.frame(
  바나나 = vBanana,
  체리 = vCherry,
  오렌지 = vOrange
)
vYlim <- c(0,200)
vDay <- c("월","화","수","목","금")
dFruit
barplot(
  t(dFruit), # t() 전치함수 행과 열의 위치를 전환
  main = "과일판매량",
  col = rainbow(nrow(dFruit)),
  ylim =  c(0,600),
  space = 0.2,
  cex.axis = 0.5,
  las = 1,
  names.arg = vDay,
  cex = 1
)
legend(
  0.2,
  600,
  names(dFruit),
  cex = 0.5, ## 글자크기
  fill = rainbow(nrow(dFruit))
)


dFruit
t(dFruit)

plot.new()
VPeach <-round(runif(5,150,250),0)
VPeach
vDay <- c("월","화","수","목","금")
vColor <-c()
vLen <- c(1:length(VPeach))
for (i in vLen){
  if(VPeach[i] >=200){
    vColor <- c(vColor, "red")
  }else if(VPeach[i] >=180){
    vColor <- c(vColor, "yellow")
    else{vColor <- c(vColor, "green")
    }
}

barplot(
  VPeach,
  main = "복숭아판매량",
  col = rainbow(nrow(VPeach)),
  
)

# 학급 총 10명 학생 ㅋ

vHeight1 <- round(runif(2,150,160))
vHeight2 <- round(runif(3,161,170))
vHeight3 <- round(runif(3,171,180))
vHeight4 <- round(runif(2,181,190))

vHeight <- c(
  vHeight1,vHeight2,vHeight3,vHeight4
)

hist(
  vHeight,
  main = "키분포도"
)


#히스토그램

barplot(
  vHeight,
  main = "키분포도"
)


vpie <- c(10,20,30,40)
pie(
  vpie,
  radius = 1
)
plot.new()
vpie <- c(10,20,30,40)
pie(
  vpie,
  radius = 1,
  init.angle = 90
)

plot.new()
vpie <- c(10,20,30,40)
vDay <- c("월","화","수","목","금")
pie(
  vpie,
  radius = 1,
  init.angle = 90,
  col = rainbow(length(vpie)),
  label = VDay
)

plot.new()
vpie <- c(10,20,30,40)
VDay <- c("월","화","수","목","금")
vPct <- round(vpie/sum(vpie)*100,1)
vLab <- paste(vPct, "%")
pie(
  vpie,
  radius = 1,
  init.angle = 90,
  col = rainbow(length(vpie)),
  label = VDay
)
legend(
  1.3,
  1,
  VDay,
  cex = 0.8, 
  fill = rainbow(nrow(vpie))
)

install.packages("plotrix")
library(plotrix)

plot.new()
vpie <- c(10,20,30,40)
VDay <- c("월","화","수","목","금")
vPct <- round(vpie/sum(vpie)*100,1)
vLab <- paste(vPct, "%")
pie3D(
  vpie,
  main = "3D PIE CHART",
  col = rainbow(length(vpie))
  cex = 0.5,
  labels = vLab,
 explode = 0.05 
)
legend(
  0.5,
  1.5,
  VDay,
  cex = 0.6, 
  fill = rainbow(nrow(vpie))
)

install.packages("plotrix")
library(plotrix)
plot.new()
vPie <- c(10,20,30,40)
vDay <- c("월","화","수","목","금")
vPct <- round(vPie/sum(vPie)*100,1)
vLab <- paste(vPct," %")
pie3D(
  vPie,
  main = "3D PIE CHART",
  col = rainbow(length(vPie)),
  cex = 1,
  labels = vLab,
  explode = 0.05
)
legend(
  0.7,
  1,
  vDay,
  cex = 0.6,
  fill = rainbow(length(vPie))
)

