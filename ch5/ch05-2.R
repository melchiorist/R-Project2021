# dplyr 라이브러리를 이용한 데이터 가공
# filter, select, arrange, group_by&summarize, mutate
# %>%
library(dplyr)
library(gapminder)

# 1. select - 원하는 열을 추출한다.
select(gapminder, country, year, lifeExp)
select(gapminder, country, year, lifeExp) %>% head()
select(gapminder, country, year, lifeExp) %>% head(10)

# 2. filter - 원하는 행을 추출한다.
filter(gapminder, country=='Croatia')
filter(gapminder, country=='Croatia' & year>2000)
filter(gapminder, continent=='Europe' & year==2007)

# 3. arrange - 정렬, 디폴트는 오름차순
europe_pop <- filter(gapminder, continent=='Europe' & year==2007)
arrange(europe_pop, lifeExp)
arrange(europe_pop, desc(lifeExp))

# 아프리카 대륙에서 평균 수명이 가장 긴 Top 5 국가
africa_pop <- filter(gapminder, continent=='Africa' & year==2007)
arrange(africa_pop, desc(lifeExp)) %>% head(5)
filter(gapminder, continent=='Africa' & year==2007) %>%
  arrange(desc(lifeExp)) %>% 
  head(5)

# 4. group_by 와 summarize
summarize(africa_pop, pop_avg=mean(pop)) # 2007년 아프리카 국가별 평균인구
summarise(group_by(gapminder, continent), pop_avg=mean(pop))
summarise(group_by(gapminder, country), life_avg=mean(lifeExp))

asia_pop <- gapminder %>%
  filter(continent=='Asia')
  summarise(group_by(asia_pop, country), life_avg=mean(lifeExp))
summarise(group_by(asia_pop, country), life_avg=mean(lifeExp)) %>%
  arrange(desc(life_avg)) %>%
  head(5)

gapminder %>%
  filter(continent=='Asia') %>%
  group_by(country) %>%
  summarise(life_avg=mean(lifeExp)) %>%
  arrange(desc(life_avg)) %>%
  head(5)

#
gapminder %>%
  filter(year==2007 & pop>=se7) %>%
  group_by(country) %>%
  summarise(life_avg=mean(lifeExp)) %>%
  arrange(desc(life_avg)) %>%
  head(5)


# mpg(mile-per-gallon)
library(dplyr)
library(ggplot2)

