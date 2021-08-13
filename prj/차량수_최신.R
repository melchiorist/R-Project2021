library(dplyr)
library(ggplot2)
library(readxl)

x <- read_excel("자동차_등록자료_통계_20152020.xlsx")
y <- data.frame(x)
y

str(y)
View(y)

y%>%ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()
y %>% ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()+geom_line()

# 지역별 차량수 
# 대덕구

A <- y[y$시군구 == "대덕구", ]
A

A%>% ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()+geom_line()

# 동구

B <- y[y$시군구 == "동구", ]
B

B%>% ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()+geom_line()

# 서구
C <- y[y$시군구 == "서구",]
C

C%>% ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()+geom_line()

# 유성구
D <- y[y$시군구 == "유성구",]
D

D%>% ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()+geom_line()

# 중구
E <- y[y$시군구 == "중구",]
E

E%>% ggplot(aes(x=연도, y=총계, col=시군구))+geom_point()+geom_line()

