library(dplyr)
library(ggplot2)
library(readxl)
getwd()
x <- read_excel("R/prj/주민등록인구및세대현황_연간_20152020.xlsx")
y <- data.frame(x)
y

str(y)
summary(y)

# 지역별 인구수
# 대덕구
A <- y[y$행정구역 == "대덕구", ]
A

A%>% ggplot(aes(x=연도, y=인구수, col=행정구역))+geom_point()+geom_line()

# 동구

B <- y[y$행정구역 == "동구", ]
B

B%>% ggplot(aes(x=연도, y=인구수, col=행정구역))+geom_point()+geom_line()

# 서구
C <- y[y$행정구역 == "서구",]
C

C%>% ggplot(aes(x=연도, y=인구수, col=행정구역))+geom_point()+geom_line()

# 유성구
D <- y[y$행정구역 == "유성구",]
D

D%>% ggplot(aes(x=연도, y=인구수, col=행정구역))+geom_point()+geom_line()

# 중구
E <- y[y$행정구역 == "중구",]
E

E%>% ggplot(aes(x=연도, y=인구수, col=행정구역))+geom_point()+geom_line()

# 대전광역시
F <- y[y$행정구역 == "대전광역시",]
F

F%>% ggplot(aes(x=연도, y=인구수, col=행정구역))+geom_point()+geom_line()
