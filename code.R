install.packages("UsingR")
library(UsingR)

data(galton)
attach(galton)
head(galton)
child parent
1 61.7 70.5
2 61.7 68.5
3 61.7 65.5
4 61.7 64.5
5 61.7 64.0
6 62.2 67.5
attach(galton)
hist(child)
windows()
hist(parent)
par(mfrow=c(1,2))
hist(child)
par(mfrow=c(1,2))
hist(child,col=c(2,3,4,5,6,7))
hist(parent,col=c(5,6,7,8,9))
shapiro.test(parent)
    Shapiro-Wilk normality test
      data: parent
      W = 0.9661, p-value = 7.208e-14
wilcox.test(child,parent, paired=TRUE)
Wilcoxon signed rank test with continuity correction
data: child and parent
V = 200964, p-value = 0.074
alternative hypothesis: true location shift is not equal to 0

# since p>0.05 we dont have enough evidence to say that there is not a difference in the mean height 