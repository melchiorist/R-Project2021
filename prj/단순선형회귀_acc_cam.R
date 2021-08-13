library(dplyr)
library(readxl)
a <- read_excel("R/prj/1519_acc_cam.xlsx")
b <- data.frame(a)
head(b)

# 데이터프레임에 열 추가하기
 연도별시군구 <- paste(b$연도,b$행정구역)
 d <- data.frame(연도별시군구)
 head(d)
 acc_cam <- cbind(c,d)

# 필요한 열 추출
c <- data.frame(b[,3:4])
head(c)

str(c)
plot(c)
# ggplot으로 시각화
library(ggplot2)
b %>%
  ggplot(aes(교통사고,교통카메라,
                 col=연도, size=교통카메라)) +
  geom_point(alpha=0.5) +
  scale_x_log10()

# 단순 선형회귀 적용
acc_cam_model <- lm(교통카메라~교통사고, data=acc_cam)
coef(acc_cam_model)

# 회귀식: cam = 2.3413068162 - 0.0001532824 * 교통사고
plot(c)
abline(acc_cam_model, col='red')
summary(acc_cam_model, col='red')
par(mfrow=c(2,2))
plot(acc_cam_model)

par(mfrow=c(1,1))


