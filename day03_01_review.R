# day03_01_review

# 실습하기. fruit변수에
# apple, mango, banana, oragne, Apple, pineapple
# 데이터를 가진 벡터를 만들어주세요.
fruit <- c('apple', 'mango', 'banana', 'oragne', 'Apple', 'pineapple')
fruit


# 특정 조건 검색
# - grep(조건, 데이터)
# - fruit데이터에서 apple이 존재하는지 확인
grep('apple', fruit)

# 대소문자의 구분 없이 검색하기
grep('apple', fruit, ignore.case = T)


# 실습하기. fruit에서 apple이 존재하는 데이터를 조회해주세요
fruit[c(1, 6)]
fruit[grep('apple', fruit)]


# 특정 조건을 만족하는 값 검색하기
# - 시작값으로 조건을 만들기
#  : a로 시작하는 값만 검색하기
grep('^a', fruit)

# - 끝값으로 조건을 만들기
#  : e로 끝나는 값만 검색하기
grep('e$', fruit)


# 실습하기. fruit에 숫자1개, 논리값 1개를 추가해주세요
# - TRUE, 123을 추가할 예정
fruit[7] <- T
fruit[8] <- 123
#fruit <- c(fruit, TRUE, 123)
#fruit[c(7,8)]<-c(TRUE,123)


# grep을 이용하여 특수키워드를 활용하여 숫자만, 문자만
# 같은 검색이 가능합니다.
# - 숫자만
grep('\\d', fruit)

# - 숫자가 아님
grep('\\D', fruit)


# 임의의 텍스트 1개를 대체하여 검색하기
# - .이 하나의 텍스트를 대체
# - fruit에서 7글자 이상인 데이터만 검색하기
grep('.......', fruit)
# - a의 시작전 2글자 이상인 데이터만
grep('..a', fruit)


# grepl(): grep과 완전하게 작동하고
#          응닶이 논리값으로 응답
grepl('..a', fruit)
fruit


































