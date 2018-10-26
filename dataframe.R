#dataframe
#created vectors to be combined into DF
(rollno =1:30)
(sname=paste('student',1:30,sep=''))
(gender= sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size=30,replace=T, prob=c(.5,.5)))
rollno; sname;gender
marks; marks2;course

(gender = c('M','F','F','M'))

set.seed(1234)
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
table(gender)
prop.table(table(gender))


(x=enorm(100,mean=60, sd=10))
plot(density(x))
abline(v=60,col='red')
floor(3.4)
floor(x)
floor(3.7)
ceiling(3.4)
ceiling(x)
ceiling(3.7)
trunc(3,4)
round(3.456,2)
signif(3.567334,3)


(x=rnorm(100,mean = 60,sd=10))
summary(x) # summary of x
quantile(x) # quantile
quantile(x,seq(0,1,.1)) # decile
quantile(x,seq(0,1,.01)) # percentile
fivenum(x) #five number
boxplot(x) #boxplot
abline(h=fivenum(x))
stem(x)
hist(x)
plot((density(x)))
abline(v=60,col('red'))



