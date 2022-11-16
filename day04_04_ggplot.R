# day04_04_ggplot.R

# - 해들리 위컴(Hadley wickham) 교수의 의해 개발
# R은 ggplot 이전과 이후로 나뉜다는 말이 있음
# R의 기본 그래픽 시스템은 그림을 그리기 위해 
# 좋은 시스템이고
# ggplot은 데이터를 이해하는데 더 좋은 시각화 툴이다.
# - Grammar of Graphics가 패키지의 근간

# ggplot을 이용할 때 꼭 알고 있어야하는 3가지 요소
# - data: 데이터
# - aes(aesthetic attributes) 미적 요소
# - geom: 실제로 데이터를 그리는 작업

install.packages('ggplot2')
library(ggplot2)
install.packages('dplyr')
library(dplyr)
install.packages('tidyverse')
library(tidyverse)

# 분석할 데이터 확인
diamonds

# aes 옵션
# - x: x축
# - y: y축
# - fill: 채우는 색상
# - color: 그래프의 색상, 모양이 경우는 테두리 색
# - size: 라인의 굵기 혹은 포인트의 크기
# - alpha: 투명도

# geom 옵션
# - geom_bar: 막대 그래프
# - geom_point: 포인트 그래프(산점도)


# 그래프 그리기
ggplot(diamonds, aes(x=cut)) + geom_bar()
ggplot(diamonds, aes(x=clarity)) + geom_bar()
ggplot(diamonds, aes(x=color)) + geom_bar()


# color에 따른 갯수 비율을 pie로 그리기
ggplot(diamonds, aes(x=1, fill=color)) + 
  geom_bar(width=1) + 
  coord_polar('y')


# ggplot은 기본적으로 count를 기반으로 동작이 됨
ggplot(diamonds, aes(x=color, y=price)) + 
  geom_bar(stat='identity')


# color별 전체 가격이 아닌 평균으로 그래프 그리기
diamonds %>%
  group_by(color) %>%
  summarise(mean_price = mean(price)) %>%
  ggplot(aes(x=color, y=mean_price)) + 
  geom_bar(stat='identity')


# J가 평균 금액이 큰 이유는?
# - color와 carat 중 가격에 크게 영향을 끼치는 
#   데이터를 확인하기
ggplot(diamonds, aes(x=carat, y=price, color=color)) + 
  geom_point()


# 추세선
ggplot(diamonds, aes(x=carat, y=price, color=color)) + 
  geom_point() + 
  geom_smooth()
































