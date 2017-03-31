# Task01

library("MASS")
data("UScereal")
attach(UScereal)
names(UScereal)
UScereal$mfr
head(UScereal)
shelf
mfr

t = table(mfr, shelf)
barplot(t, legend = T)
barplot(t, beside = T, legend = T)

# когато имаме числени и категорни правимм bozplot. Числовите зависят от категорни
boxplot(fat ~ vitamins)

boxplot(fat ~ shelf)
carbo
sugars

plot(sugars, carbo)
cor(sugars, carbo)
abline(lm(carbo ~ sugars))

cor(rank(sugars), rank(carbo))
boxplot(sugars, carbo)

# Task02
data("mammals")
attach(mammals)
names(mammals)
head(mammals)

plot(body, brain)
cor(body, brain)
plot(log(body), log(brain))

out = identify(body, brain, 3)

plot(body[-out])


# Task03
library(UsingR)
data("homedata")
head(homedata)
attach(homedata)
plot(y1970, y2000)
cor(y1970, y2000)
abline(lm(y1970 ~ y2000))
outliers = identify(y1970, y2000)
plot(y1970[-outliers], y2000[-outliers])
abline(lm(y2000[-outliers] ~ y1970[-outliers]))
cor(y1970[-outliers], y2000[-outliers])
model = lm(y2000 ~ y1970)
coefs = coef(model)

b = coefs[1]
a = coefs[2]

price75 = a * 75000 + b

# !!!!!!!!!!!!!!!!!!!!!!!!GENERATING RANDOM DATA!!!!!!!!!!!!!!!!!!!!!!!!
