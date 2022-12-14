# day02_02_if.R
## 조건문
## 조건을 검사하여 참(True)일 때와 거짓(False)일 때
## 실행(프로그램의 흐름)를 다르게 만드는 기법

# 1. if 조건문
#if(조건) {
#  조건이 참인 경우에 실행
#}
if(T) {
  print('조건이 참이므로 실행')
}

if(F) {
  print('조건이 거짓이므로 실행이 안 됨')
}


# 2. if else 조건문
# - if나 else 둘 중 하나는 무조건이 실행이 됨
if(F) {
  print('조건이 참인 경우 실행되는 영역')
} else {
  print('모든 조건이 거짓인 경우에 실행되는 영역')
}

# 3. if - else if - else 조건문
# - else if는 무한대로 추가가 가능
# - 실습하기. 가을 조건을 추가해주세요.
#   : 가을의 경치가 최고입니다.
season <- '가을'

if(season == '봄') {
  print('봄 여행이 최고죠')
} else if(season == '여름') {
  print('여름이 최고죠')
} else if(season == '가을') {
  print('가을의 경치가 최고입니다.')
} else {
  print('겨울 여행이 최고죠')
}


# 실행이 되면서 동적으로 조건이 변경되는 조건
# 실습하기. 
# - 1번째 실행: 조건이 참이면 x를 거짓으로 변경
# - 2번째 실행: 조건이 거짓이면 x를 참으로 변경
x <- T

if(x) {
  print('조건이 참이면 x를 거짓으로 변경')
  x <- F
} else {
  print('조건이 거짓이면 x를 참으로 변경')
  x <- T
}


# 조금 특별한 조건문
# ifelse(조건, 참, 거짓)
ifelse(T, "참 실행", "거짓 실행")
ifelse( (1 == 2) , "참 실행", "거짓 실행")


# 실습하기. y가 짝수라면 짝수를 출력, 홀수라면 홀수를 출력
# - 어떤 수를 2로 나누었을 때의 나머지가 0이면 짝수, 
#   1이면 홀수
y <- 5167
y %% 2 == 0

if(y %% 2 == 0) {
  print('짝수')
} else {
  print('홀수')
}

# 실습하기. y가 3의 배수면 제곱을 출력, 아니면 0을 출력
# - 단, ifelse로 만들어주세요
# - 배수라는 그 수에 의해 나누어 떨어지는 수
y <- 4
ifelse(y %% 3 == 0, y**2, 0)


# switch문
# switch(expression, case1, case2, case3, ... default)
x <- 'python'
switch (x,
  'R언어' = print('빅데이터 분석에서 사용합니다.'),
  'java' = print('웹 프로그래밍에서 사용합니다.'),
  'android' = print('모바일 프로그래밍에서 사용합니다.'),
  print('해당 언어는 모르겠습니다.')
)
























