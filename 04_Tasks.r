# Tasks
library("MASS")
data("UScereal")
attach(UScereal)
names(UScereal)
table(mfr, shelf)
barplot(table(mfr, shelf), beside = T, legend = T)
barplot(table(shelf, mfr), beside = T, legend = T)
fat
vitamins

boxplot(shelf ~ mfr)
boxplot(fat ~ vitamins)
boxplot(fat ~ shelf)
boxplot(carbo, sugars)


plot(carbo, sugars)
abline(lm(sugars ~ carbo))
cor(carbo, sugars)
