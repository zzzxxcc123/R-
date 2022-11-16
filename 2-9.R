# day02_09_dataframe.R
# 데이터프레임(dataframe): 쉽게 이야기하면 엑셀
# m x n의 형태
# 매트릭스와 동일한 구조를 가지지만 다른 유형 데이터를
# 관리할 수 있습니다.
# data.frame()을 사용하여 생성

name <- c('korea', 'bigdata', 'academy')
age <- c(20, 25, 30)


df <- data.frame(name, age)
df

# 데이터프레임 조회하기
# - 1행 1열의 데이터를 조회하기
df[1, 1]
df[1, 'name']
df['1', 'name']


# rowname을 지정해서 만들기
df2 <- data.frame(row.names = c(1001, 1002, 1003), df)
df2

# 실습하기. df2에서 1002 rowname을 조회해주세요
df2[1002, ]
df2['1002', ]
df2[2, ]


# df에서 name열을 조회하기
df[, 'name']
df$name


# 실습하기. df에서 student열을 추가해주세요
# - 값은 T, F, F로 추가해주세요
df
df[, 'student'] <- c(T, F, F)
df
df$student1 <- c(T, F, F)
df


# df에서 student 열을 지우기
# - df에서 student열을 지운 형태를 조회하기
df[, c(-3, -4)]
df

subset(df, select = c(-student1, -student))

# 원본 반영하기
df <- df[, c(-3, -4)]
df



# 실습하기. df에서 age가 25이상인 데이터만 조회해주세요
# df[행, 열]
df$age >= 25
df[df$age >= 25, ]





























