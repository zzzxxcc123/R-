# day04_03_visual.R

# plot(): x와 y 2개의 값을 기준으로 좌표를 그리는 함수
plot(1, 1)
plot(2, 1)

plot(c(1, 3), c(1, 5))


# 실습하기. cars의 데이터를 이용하여 스피드(speed)에 따른
# 제동거리(dist)를 plot으로 표현해주세요
plot(cars$speed, cars$dist)


plot(cars$speed, cars$dist, type='p')
plot(cars$speed, cars$dist, type='l')
plot(cars$speed, cars$dist, type='b') # both


# barplot(): 표현 값에 비례하여 높이와 길이를 가지는 그래프
hotdogs <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/hot_dog/hot-dog-contest-winners.csv')
hotdogs

# 핫도그 데이터를 이용하여 먹은 갯수를 시각화하기
barplot(hotdogs$Dogs.eaten, names.arg = hotdogs$Year)


# 실습하기. plot을 이용하여 년도별로 먹은 갯수를 시각화해주세요.
plot(hotdogs$Year, hotdogs$Dogs.eaten)


# 국가별 우승횟수를 확인하기
hotdogs$Country
hotdog_cnt <- table(hotdogs$Country)
barplot(hotdog_cnt)

# 국가별 우승횟수의 비율을 확인하기
# pie: 원 그래프, 전체에 대한 각 부분의 비율
pie(hotdog_cnt)





















