# day02_11_factor.R
# 요인(factor): 데이터가 어떻게 구성되어 있는가
# - 팩터는 순위를 가질 수도 있고, 없을 수도 있다.
# - 팩터는 문자처럼 보이지만 실제로는 숫자
# - 팩터는 수준(level)이라고 알려진 사전에 정의된
#   데이터만 저장이 가능

a <- c('low', 'medium', 'high')
a
b <- rep(a, 3)
b

# 팩터를 생성하기
dust <- factor(b)

# 팩터에 순위를 지정하기
a
levels(dust) <- a
dust

# 팩터를 생성하면서 순위를 지정하기
# - order를 지정하기
dust <- factor(b, levels = a, ordered = T)

# dust에서 가장 낮은 순위 검색
dust
min(dust)
max(dust)


# 팩터를 사전에 정의된 값만 추가 및 수정이 가능
# - 실습하기. dust의 10번째 방에 l을 추가해주세요
dust[10]
dust[10] <- 'l'
dust

# dust의 11번째 방에 low를 추가하기
dust[11] <- 'low'
dust

# dust의 10번째 방을 medium으로 수정해주세요
dust[10] <- 'medium'
dust


# 자료구조의 형태를 변경하는 방법
# - R에서 형 변환을 하는 함수들은 as.으로 시작
# - dust를 vector로 변경하기
dust
class(dust)

as.vector(dust)
as.character(dust)
as.numeric(dust)


# 숫자형태의 factor 이용 시 주의사항
nums <- factor(c(20, 30, 40))
nums

as.numeric(nums)

# 실습하기. nums를 20, 30, 40의 숫자 벡터로 변경해주세요
as.character(nums)
as.numeric(as.character(nums))



















