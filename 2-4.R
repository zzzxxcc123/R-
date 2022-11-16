# day02_04_func.R
# 사용자 정의 함수 예제


# 자료형을 검사하는 내장 함수
is.numeric(1)
is.numeric('1')


# 인자값에 따라서 숫자 타입인지 아닌지를 한글로 응답하는
# 함수 만들기
## 함수명 <- 함수

my_func_isnum <- function(x) {
  if( is.numeric(x) ) {
    '숫자 타입입니다.'
  } else {
    '숫자가 아닙니다.'
  }
}

my_func_isnum('1')  



















































