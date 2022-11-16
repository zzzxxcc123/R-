# 유용한 함수들

vec1 <- 1:3
vec2 <- 4:6
vec3 <- 1:4

# 합치기 - union
union(vec1, vec2)
union(vec1, vec3)  # 중복되지 않고 합쳐짐

# 실습하기. vec1과 vec3을 중복이 있는 데이터로 결합하려면?
c(vec1, vec3)

# 차집합: setdiff
setdiff(vec3, vec1)
setdiff(vec3, vec2)

# 교집합: intersect
intersect(vec3, vec2)
intersect(vec3, vec1)
intersect(vec1, vec2)



# 영문자 벡터
letters
LETTERS


# 중앙값
n <- c(1, 2, 3, 4, 5, 6)
median(n)

n <- c(1, 2, 3, 4, 5)
median(n)



# 데이터를 붙이기
# - paste(데이터1, 데이터2, 데이터..., sep=)
# - sep: 구분자
paste('가', '나')
paste('가', '나', '다')
paste('가', '나', '다', sep='')
paste('가', '나', '다', sep=',')
paste0('가', '나')



# x1, x2, x3 처럼 데이터 붙이기
x <- c('x', 'x', 'x')
x

paste0(x, 1)
paste0(x, c(1:3), 'korea')















