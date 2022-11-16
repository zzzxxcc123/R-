# day03_03_preprocessing.R 
# - 데이터 전처리

# - df_web변수에 my_lib.csv를 로드해주세요

df_web <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/my_lib.csv',
                   fileEncoding = 'cp949')

# 상위 데이터
head(df_web)

# 데이터의 각 컬럼의 정보 확인하기
str(df_web)

# 결측치 확인
# - 국가정보에도 결측치는 존재합니다.
is.na(df_web)
table(is.na(df_web))


# 데이터 분석을 위한 라이브러리 설치 및 사용
install.packages('dplyr')
library(dplyr)

# - select(): 열 추출
# - filter(): 행 추출


# 분석에 필요한 데이터로 나누기
# - 시도명, 시군구명, 도서관유형
# df_web[, c('시도명', '시군구명')]
# head(df_web[, c('시도명', '시군구명')])
df_lib_g <- select(df_web, c('시도명', '시군구명', '도서관유형'))
str(df_lib_g)



# - df_lib_g의 컬럼명을 영문으로 변경하기
colnames(df_lib_g) <- c('sido', 'sigungu', 'type')
colnames(df_lib_g)


# 시도명으로 그룹화하기
# - group_by(data, key1, key2, key...)
# group_by(df_lib_g, 시도명)
sido_g <- group_by(df_lib_g, sido)

# sido_g의 갯수 연산하기
sido_cnt <- count(sido_g)
sido_cnt

# 정렬하기
order(sido_cnt$n)
sido_cnt[order(sido_cnt$n), ]
sido_cnt[order(-sido_cnt$n), ]



# 실습하기. df_lib_g를 이용하여 sido별, 
#           sigungu별, type의 갯수를 구해주세요
df_lib_g
sido_g <- group_by(df_lib_g, sido, sigungu, type) 
sido_cnt <- count(sido_g)

# 여러 조건을 적용한 정렬하기
order(sido_cnt$sido, sido_cnt$sigungu, sido_cnt$n)
sido_cnt[order(sido_cnt$sido, sido_cnt$sigungu, -sido_cnt$n), ]



colnames(df_lib_g) 


c(1, 2, 3)


#max(sum(c(1, 2, 3)))

#a <- c(1, 2, 3)
#b <- sum(a)
#max(b)


# 파이프라인기법
c(1, 2, 3) %>% print()
c(1, 2, 3) %>% sum() %>% max()


# 데이터 저장하기
# write.table(데이터, 경로+파일명)
write.table(sido_cnt, 'c:\\dev\\my_lib.txt')

# 실습하기. 데이터 저장하기
# - 파이프라인을 이용해주세요.
# - write.csv를 이용하세요.
sido_cnt %>% write.csv('c:\\dev\\my_lib.csv', 
                       row.names = F,
                       fileEncoding='cp949')



sido_cnt


# table 함수를 이용하여 데이터 갯수 세기
df_lib_g
table(df_lib_g$sido)
table(df_lib_g$sigungu)
table(df_lib_g$type)















