# day04_02_konlp.R

install.packages('remotes')
remotes::install_github('haven-jeon/KoNLP', upgrade = 'never', INSTALL_opts=c('--no-multiarch'))

library(KoNLP)
SimplePos09("안녕하세요")

# 연설문 데이터 불러오기
moon_txt <- readLines('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/moon_UTF8.txt', encoding = 'UTF-8')
moon_txt

# 실습하기. moon_txt의 데이터 중 상위 6개를 확인해주세요.
head(moon_txt)

install.packages('dplyr')
library(dplyr)

moon_txt %>% head()

# 형태소 분석
# - 어떤 어절을 분석하는 것
# - 동사, 명사, 형용사, 외국어, 기호냐?
# - 품사를 붙이는 작업
SimplePos09('안녕하세요. 빅데이터 분석 전문가 시간입니다.')

# 연설문을 이용한 형태소 분석
moon_ko <- SimplePos09(moon_txt)

# reshape2: 구조 변경을 도와주는 패키지
install.packages('reshape2')
library(reshape2)

moon_ko %>% head()
moon_ko %>% melt %>% head()

# value: 실제 값
# L2: 내부 list의 이름
# L1: 외부 list의 이름


# 데이터 프레임을 tibble로 변경하기
library(dplyr)
m_df <- moon_ko %>% melt %>% as_tibble()
m_df

# value열을 가지고 데이터 나누기
m_df1 <- select(m_df, c('value'))

# 명사(N)만 추출하기
# - 정규식을 이용하여 한글 중에서 /N이 태깅된
#   데이터만 추출하기
install.packages('stringr')
library(stringr)

tmp_txt <- c('사실/N', 'korea/N', '알/P', '코리아/N정보/P')
tmp_txt %>% str_match('([가-힣]+)/N')

# 0-9: 모든 숫자
# a-z: 모든 영소문자
# a-Z: 모든 영문자
# 가-힣a-z: 모든 한글과 모든 영소문자
library(dplyr)

m_df2 <- m_df1 %>% 
  mutate(noun=str_match(value, '([가-힣]+)/N')[, 2]) %>% 
  na.omit()

# noun 열의 단어별 갯수 카운트
# - 것, 수, 위처럼 현재 분석에서 필요없는 부분
#   제외하기(filter)
m_df2 %>% 
  filter(str_length(noun) >= 2) %>%
  count(noun, sort=T)

# 실습하기. noun의 카운트 된 것 중 
#           2번 이상하는 단어만 조회해주세요
m_df3 <- m_df2 %>% 
  filter(str_length(noun) >= 2) %>%
  count(noun, sort=T) %>%
  filter(n >= 2)


# 워드클라우드 만들기
install.packages('wordcloud2')
library(wordcloud2)
m_df3 %>% wordcloud2()


# 기울기 변경하기
m_df3 %>% wordcloud2(minRotation = 0, 
                     maxRotation = 0,
                     size=1,
                     col="random-light",
                     backgroundColor = "black")










