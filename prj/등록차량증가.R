library(readxl)
a <- read_excel("R/prj/자동차_등록자료_통계_20152020.xlsx")
b <- data.frame(a)
head(b)
dim(b)
str(b)
b

c <- b %>%
  filter(연도== "2015")
c <- sum(c$승용차)

d <- b %>%
  filter(연도== "2016")
d <- sum(d$승용차)

e<- b %>%
  filter(연도== "2017")
e <- sum(e$승용차)

f <- b %>%
  filter(연도== "2018")
f <- sum(f$승용차)

g <- b %>%
  filter(연도== "2019")
g <- sum(g$승용차)

enrollment <- c(c,d,e,f,g)
plot(enrollment)



