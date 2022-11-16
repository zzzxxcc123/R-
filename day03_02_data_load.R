# day03_02_data_load.R

# - 상대경로
# : 기준점이 존재
# : r의 작업 위치(기준점) 확인
getwd()
readLines('korea.txt')
#readLines('korea.txt', encoding = 'UTF8') # mac 유저

# day03 폴더 안의 day03.txt 읽기
readLines('day03/day03.txt')

# 상위 폴더에 존재하는 adademy.txt 읽기
readLines('../adademy.txt')


# - 절대경로
# : 기준점이 없음
# : 해당 위치의 풀경로를 입력해야함.
readLines('C:\\dev\\workspace\\r\\adademy.txt')
txt1 <- readLines('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/movie_review_01_cp949.txt')

txt1

# txt1의 길이 체크
length(txt1)

# 실습하기. txt1에서 영화라는 단어가 포함된 데이터만 검색해주세요.
# - grep(조건, 데이터)
grep('영화', txt1)
txt1[grep('영화', txt1)]

# txt1의 데이터 중 40글자 이상인 데이터만 검색하기
strrep('.', 40)
grep(strrep('.', 40), txt1)


# 다음의 조건을 만족하는 txt1 데이터 검색하기
# - 20글자 이상 데이터
# - 영화가 포함된 데이터
a <- grep(strrep('.', 20), txt1)
b <- grep('영화', txt1)
a
b
intersect(a, b)
txt1[intersect(a, b)]


# 다른 형태의 파일 불러오기
# - pdf 읽기
# - 외부 어플리케이션 파일을 읽기 위해서는
#   패키지 설치를 해야함
# 설치는 1회성, 사용은 사용할 때마다
install.packages('pdftools')
library(pdftools)

# 실습하기. pdf1 변수에 movie_review_02.pdf파일을 불러와주세요
pdf1 <- pdf_text('C:\\dev\\workspace\\movie_review_02.pdf')
pdf1

# 읽어온 데이터의 개행문자를 없애기
# strsplit(데이터, 조건)
txt_pdf <- strsplit(pdf1, '\n\n')

# 실습하기. txt_pdf의 1차원의 2번째 방의 데이터를 검색해주세요
txt_pdf[[1]][2]

# 실습하기. txt_pdf의 3번째 방의 \n을 공백으로 변경해주세요.
gsub('\n', '', txt_pdf[[1]][3])

txt_pdf[[1]][3] <- gsub('\n', '', txt_pdf[[1]][3])

txt_pdf[[1]][3]


# txt_pdf의 4번째 방을 삭제하기
txt_pdf[[1]][c(-4)]








# 행과 열을 가진 데이터 읽기
# - read.table(): 행과 열을 가진 파일을 읽어들이는 함수
mem1 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_no_title.txt', 
           fileEncoding = 'cp949')
mem1

# 실습하기. mem1의 열의 이름을 이름, 평가, 성적으로 변경해주세요.
mem1
names(mem1) <- c('이름', '평가', '성적')
names(mem1)
colnames(mem1)


# 데이터 불러오면 해야하는 작업

# - 데이터 살펴보기
head(mem1)

# - 데이터 요약 정보 
# : 기술통계
summary(mem1)

# 실습하기. mem1의 성적의 평균을 구해주세요
mem1[, '성적']
mean(mem1[, '성적'])

# 실습하기. mem1의 성적이 평균 이상인 데이터만 검색해주세요.
mem1[mem1[, '성적'] >= mean(mem1[, '성적']), ]
#con1 <- mem1$'성적' >= mean(mem1$'성적')
#mem1[con1, ]



# 헤더 정보가 존재하는 데이터 읽기
# - header=T가 설정되면  1행이 열의 이름이 됩니다.
mem2 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_title.txt', 
                   fileEncoding = 'cp949',
                   header = T)
mem2


# 데이터를 읽으면 행을 건너뛰면서 읽어들이기
# - 
read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_noise.txt', 
           fileEncoding = 'cp949',
           header = T,
           skip = 3)

# 특정한 구분자가 있는 데이터 읽어들이기
read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep2.txt', 
           fileEncoding = 'cp949',
           header = T,
           sep = ',')


# csv의 특징
# - ,(comma)로 구분되어있다.
# - header가 존재한다.
read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep2.txt', 
         fileEncoding = 'cp949')



# 조금 특별한 데이터 읽기
# - clipboard(클립보드): OS에서 관리하는 영역
#                        복사하기를 실행했을 때 데이터가 저장된 영역
readLines('clipboard')
read.table('clipboard ')
read.csv('clipboard')


# 결측치 처리하기
mem_na <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_NA.txt', 
         fileEncoding = 'cp949')
mem_na

# 결측치 확인하기
is.na(mem_na)

# 문제. mem_na에는 몇 개의 결측치가 존재하나요?
sum(is.na(mem_na))

# 데이터 요인의 갯수 확인하기
table(is.na(mem_na))



# mem_na의 평균열의 총합을 구하기기
# - 데이터에 NA가 포함되어 있다면 결과는 NA가 리턴됨
mem_na[, '평균']
sum(mem_na[, '평균'])
#mean(sum(mem_na[, '평균']))
#max(sum(mem_na[, '평균']))

# 실습하기. rm를 무시하고 연산을 실행해주세요
sum(mem_na[, '평균'], na.rm = T)


# 실습하기. mem_na의 평균열의 NA 값을 0으로 수정해주세요
is.na(mem_na)
mem_na[is.na(mem_na)] <- 0
mem_na
sum(mem_na[, '평균'])



# 결측치가 특정 문자로 되어있는 경우
mem_na2 <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_NA2.txt', 
                   fileEncoding = 'cp949',
                   na.strings = '-')
mem_na2

# 실습하기. mem_na2의 평균 열의 NA를
# 평균 열의 평균으로 수정해주세요.
# ex) 82.88889
m <- mean(mem_na2[, '평균'], na.rm = T)
mem_na2[is.na(mem_na2)] <- m
mem_na2


























