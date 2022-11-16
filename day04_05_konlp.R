# 실제 뉴스 기사를 이용한 데이터 마이닝
library(KoNLP)
library(dplyr)
library(reshape2)
library(stringr)
library(wordcloud2)


# - 실습하기. my_crawling.csv을 불러오기
tmp <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/my_crawling.csv')


mydata <- tmp[c(1:20), 2]
mydata

my_data_ko <- SimplePos09(mydata)
# SimplePos09(str_trim(mydata))


# 파이프라인을 이용한 분석
my_data_ko %>% 
  melt  %>%
  as_tibble() %>%
  select(value) %>%
  mutate(noun=str_match(value, '([가-힣]+)/N')[, 2]) %>%
  na.omit() %>%
  filter(str_length(noun) >= 2) %>%
  count(noun) %>%
  filter(n >= 10) %>%
  wordcloud2(minRotation = 0,
             maxRotation = 0,
             size=0.8)






























