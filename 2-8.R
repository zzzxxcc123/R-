# day02_08_array.R
# - 배열(array) 행, 열, 층(dim)으로 구분된 자료 구조
# - array() 함수를 이용하여 생성
# - 전체가 모두 같은 자료형
# - matrix가 계란 1판이라면 
#   array는 matrix를 여러겹으로 쌓은 형태
# dim=(가로, 세로, 높이)

n <- 1:27
array(n, dim=c(3, 3))
arr <- array(n, dim=c(3, 3, 3))

# 실습하기. arr의 2층의 모든 데이터를 조회해주세요
arr[, , 2]

# 실습하기. arr의 2층의 2행 2열의 데이터를 조회해주세요.
arr[2, 2, 2]
arr[, , 2][2, 2]

# 실습하기. arr의 2층의 2행 2열의 데이터를 korea로 변경해주세요
arr[2, 2, 2] <- 'korea'
arr




































