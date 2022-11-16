# day03_04_crawling.R

# 크롤링이란?
# - 이전에는 데이터를 가져가라고 어디선가 제공했지만
#   (github/data_set)
#   크롤링은 웹 사이트 상에서 컴퓨터 기술을 이용해서
#   가져가라고 하지 않은 정보를 가져오는 기술

 
# id는 #, class는 .

install.packages('rvest')
library(rvest)

# 읽어올 페이지 지정
url <- 'https://www.naver.com'

# html파일 읽기
naver <- read_html(url)


# 원하는 데이터 긁어오기
# - html_node(데이터, 조건)
html_node(naver, '.login_msg')

# 텍스트 데이터 읽기
html_text(html_node(naver, '.login_msg'))


# 파일 저장하기
writeLines(as.character(naver), 'a.html')






# 크롤링으로 naver의 공지사항 문구 가져오기
# - pipeline을 이용하여 작성해주세요
url %>% 
  read_html() %>% 
  html_node(xpath='//*[@id="footer"]/div/div[2]/div/h3/a') %>%
  html_text()

























