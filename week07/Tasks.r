# Random data Part 2
y = dbinom(0:10, 10, 0.8)
plot(0:10, y, type = "s", col = "darkblue")

y = dgeom(0:10, 0.1)
plot(0:10, y, type = "s")

# 7 - брой успехи
y = dnbinom(0:10, 7, 0.6)
 
y = dpois(0:10, 4)

?rhyper


###################################################
# neprekysnati 
x = seq(from = -3, to = 3, by = 0.1)
y = dnorm(x, mean = 0, sd = 1)
plot(x, y, type = "l")


x = seq(from = -350, to = 350, by = 1)
y = dnorm(x, mean = 0, sd = 100 )

pnorm(200, 0, 100) - pnorm(-200, 0, 100)


##########
#Task 1
?runif
set.seed(6.1)
x = runif(10, min=0, max=10) # rawnomerno razpredelenie
x
min(x)
max(x)

# Task 2
?rnorm
x = rnorm(10, mean=5, sd=5)
sum(x < 0)
x[x<0]
x[which(x<0)]

# Task 3
set.seed(6.3)
m = 100
s = 10
x = rnorm(100, mean=100, sd=10)
sum(x>m-2*s & x<m+2*s)

# Task 4
n=1
p=1/2
x = rbinom(50, 1, 1/2)
sum(x == 1)

# Task 5
n = 1
p = 1/6
x = rbinom(100, n, p)
sum(x == n)

# или така
x = sample(1:6, 100, replace=T)
sum(x==6)

# Task 6
x = sample(1:49, 6, replace=F)
min(x)
max(x)

# Task 7
?qunif
qnorm(0.05, 0, 1)

# Task 8
negative_z = qnorm(0.95/2)
z = -negative_z
negative_z

# Task 9
pnorm(1.5, 0, 2, lower.tail = FALSE)

# read.csv() - четене на файл с данни
df = read.csv('fileName')