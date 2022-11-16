# day04_01_review
# - 크롤링 리뷰
install.packages('rvest')
library(rvest)

# 읽어올 페이지 지정
url <- 'https://en.wikipedia.org/wiki/World_Tourism_rankings'

# 페이지로부터 html 읽기
tour_rank <- read_html(url)

# html페이지에서 원하는 부분 가져오기
table <- html_node(tour_rank, '#mw-content-text > div.mw-parser-output > table:nth-child(6)')
table
df <- html_table(table)

# 실습하기. df에서 Rank, Des~, Inter(2018) 열만 분리하기
df1 <- df[, c(1, 2, 4)]
df1

# df1의 컬럼명을 변경하기
colnames(df1) <- c('rank', 'des', 'tour')
df1


# tour컬럼을 숫자로 변경
# - gsub(치환할 값, 치환될 값, 데이터)
df1$tour <- gsub(' million', '', df1$tour)

# 실습하기. tour컬럼의 데이터형을 숫자로 변경해주세요.
# - numeric으로 변경 예정
df1$tour
df1$tour <- as.numeric(df1$tour)

sum(df1$tour)

# 시각화하기
barplot(df1$tour, names.arg = df1$des, col = rainbow(10))





















