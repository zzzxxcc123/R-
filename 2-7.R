# day02_07_matrix.R
# 행렬(matrix)은 같은 자료형을 행과 열로 구분한 형태
# m x n의 형태
# 벡터는 1차원 구조, 행렬은 2차원 구조
# matrix()를 사용하여 만듬

matrix(1)

n <- c(1, 2, 4, 8, 16, 32)
n
matrix(n)
# 매트릭스 만들면서 행과 열 지정하기
matrix(n, nrow=3)
matrix(n, ncol=3)

# 데이터를 행(row)의 방향으로 먼저 채우려면
matrix(n, nrow=3, byrow = T)


# 매트릭스 만들기
f <- matrix(n, ncol=2)
f
f[]

# 실습하기. f의 2행 2열의 값을 조회해주세요
f[2, 2]


# 실습하기. f의 1, 3행의 2열을 조해주세요
f[c(1, 3), 2]

# f의 2행 2열의 값을 "korea"로 변경해주세요
f[2, 2] <- 'korea'
f

# 매트릭스 이름 부여하기
rownames(f) <- c('a', 'b', 'c')
colnames(f) <- c('col1', 'col2')
f

# f의 a행, c행의 col1, col2를 조회하기
f[c('a', 'c'), c('col1', 'col2')]

# f의 a행, c행의 col1를 조회하기
f[c('a', 'c'), c(T, F)]















