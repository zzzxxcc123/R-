# day02_03_for.R
## 반복문 예제
## 반복문이란 같은 작업을 여러번 반복시키는 기법


# while 반복문
# - 조건이 만족하는 동안 계속
# - 횟수는 중요하지 않음
cnt <- 1

# cnt가 7보다 작을 때까지 실행해라.
while(cnt < 7) {
  print(cnt)
  cnt <- cnt + 0.3
}


# for 반복문은 횟수의 정함이 존재하는 경우 사용
v <- 1:4
for(i in v) {
  print(i)
}


# 실습하기. items를 반복실행하여 items의 값을 출력해주세요
# 단, 여름인 경우에는 시원한 해변을 추가로 출력해주세요
items <- c('봄', '여름', '가을', '겨울')

# ex) 봄
#     여름
#     시원한 해변
#     가을
#     겨울
for(item in items) {
  print(item)
  if(item == '여름') {
    print('시원한 해변')
  }
}
















































