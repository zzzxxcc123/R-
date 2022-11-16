# day02_10_list.R
# 리스트(LIST)는 벡터, 매트릭스 등드으 모든 데이터 구조를
# 한꺼번에 다룰 수 있는 구조
# R에서 가장 큰 데이터 구조
# 차원으로 분리된 형태를 가지고, 각 차원은 격리 된 상태

a <- c(1:5)
b <- matrix(1:6, nrow=3)
name <- c('korea', 'bigdata', 'academy')
age <- c(20, 25, 30)
df <- data.frame(name, age)

# 리스트 생성하기
list01 <- list(a, b, df)
list01

# list01의 2번째 차원을 조회해주세요
# - list01의 2번째 차원의 2행 2열의 데이터를 조회해주세요
list01
list01[2] # list형태로 조회
list01[[2]]
list01[2][2, 2]


# 리스트 생성하기
list02 <- list(a, b, df=df)
list02
list02[[3]]
list02$df


 
















