getwd

setwd('/workspace/R')

# 변수
x<-1
y<-2
z<-x+y
z

# swapping
temp <- x
x <- y
y <- temp

typeof(x)
a <- 'string'
typeof(a)
b <- "double quote"
typeof(b)
c <- '한글'

# 실수
x <- 5
y <- 2
x/y

# 복소수
xi <- 1 +2i
yi <- 1 - 2i
xi+yi
xi*yi

# 범주형
blood_type = factor(c('A', 'B', 'O', 'AB'))
blood_type

# 논리형
TRUE
FALSE
T
F

xinf = Inf
yinf = -Inf
xinf/yinf


# 데이터형 확인 함수
class(x)           # R객체지향 관점
typeof(x)          # R언어 자체관점
is.integer(x)
is.numeric(x)
is.complex(xi)
is.character(c)
is.na(xinf/yinf)

# 데이터형 변환 함수
is.integer(as.integer(x))
is.factor(as.factor(c))

# 산술 연산자(+, -, *, /, ^, **, %%, %/%)
5^2
4^(1/2)
x %% y        # 나머지
x %/% y       # 몫

# 비교 연산자
x < y
x <= y         # < =
x >= y         # > =
x == y         # = =
x != y         # ! =

#논리 연산자
!T
!F
x | y    # or    \  
x & y    # and
x || y
a <- c(F, F, T, T)
b <- c(F, T, F, T)
a | b   # elment-wise OR
a || b  # 첫번째 엘리먼트의 논리합
a & b
a && b
2^-3 -5**1/2>2       # 2^(-3) - 5**(1/2) > 2
