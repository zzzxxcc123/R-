# day01_02_package
# - 날짜는 국가별로 다름
# - 날짜를 다룰 때는 외부 패키지를 이용하는 것이 효과적

# 다음의 데이터에서 1day(하루)를 증가시킬 수 있을까요?
'2022-05-07' 

# 설치하기
# - 1회성(해당 컴퓨터에서)
install.packages('lubridate')

# 사용하기
# - 내가 사용할 때마다
library('lubridate')
library(lubridate)


# package란?
# - 함수들의 모음
# - 함수(기능)의 모음
# - 함수란 사전에 미리 정의된 명령문의 집합


# lubridate의 함수를 이용하여 오늘 날짜 가져오기
now()

# 년도만 출력하기
year(now())

# 월을 출력하기
month(now())

# 실습하기. 일을 출력해주세요.
day(now())


# 오늘 날짜에서 하루를 더하기
days(1)
now() + days(1)

# 실습하기. 오늘에서부터 하루를 빼서 출력해주세요
# ex) 2022-05-06
now() - days(1)
now() + days(-1)

















































































