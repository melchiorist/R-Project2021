library(dplyr)
library(readxl)

a = read_excel("1519_accident.xlsx")
b = data.frame(a)

nrow(b)

year_v = c()

month_v = c()

for (i in 1:nrow(b)) {
  year = substr(a[i,1], 1, 4)
  year = as.integer(year); year
  
  month = substr(a[i,1], 5, 6)
  month = as.integer(month); month
  
  
  year_v = c(year_v, year)
  month_v = c(month_v, month)
}
year_v
head(year_v)

b = data.frame(b, year = year_v, month = month_v)
head(b)
tail(b)

for (i in 2015:2019) {
  c = b %>% filter(year == i)
}

# 동구
accE = acc %>% filter(loc == "동구"); head(accE)
nrow(accE)
accW = acc %>% filter(loc == "서구"); head(accW)
nrow(accW)
accC = acc %>% filter(loc == "중구"); head(accC)
nrow(accC)
accD = acc %>% filter(loc == "대덕구"); head(accD)
nrow(accD)
accY = acc %>% filter(loc == "유성구"); head(accY)
nrow(accY)





acc_c =c()

x = b %>% filter(year<=2015) %>% nrow(); x # 15년도 사고수
acc_c = c(acc_c, x); acc_c

y = b %>% filter(year<=2016) %>% nrow() # 16년도 사고수
acc_c = c(acc_c, y); acc_c


for (i in 2015:2019){
  x = b %>% filter(year<=i) %>% nrow()
  acc_c = c(acc_c, x); acc_c
}
acc_c


b %>% filter(year<=2017) %>% nrow() # 17년도 사고수
b %>% filter(year<=2018) %>% nrow() # 18년도 사고수
b %>% filter(year<=2019) %>% nrow() # 19년도 사고수


b%>% ggplot(aes(x=year, y=b))+geom_point()+geom_line()
head(b)
head(acc)


cam_acc %>% ggplot(aes(year, acc_count, col=loc)) + geom_point() + geom_line() ### 사고수 변화 시각화 
