#starting to work in R 

# assign---
x1 = 3 
x2<-3
#print values
x1
x2
#assign and print
(x3=3)
#environment---
#variables in env
is()
# datasets available for use
data()
womwn
data(womwn)
?women
?mtcars
mtcars$mpg
attach(mtcars)
mpg
#libraries currently loaded
library()
#Elements
ls()
rm(list=ls())
rm(list=ls(all=TRUE))
x1
women
mtcars
data(mtcars)

#help
?mean
x <- c(0:10, 50)
x
print(x)
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10))
help(mean)
x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
#create value
1:100
seq(0,100, by=2)
seq(0,100, by=3)
seq(1,100, by=2)

seq(1,10, length.out =5)
rep(1,5)
rep(c(1,4), times=4)
rep(c(1,4), each=4)
x= c (0:10, 50:100)
x
#function on data
xm= mean(x)
xm
#todays date
Sys.Date()
#basic command to plot
plot(1:10)

source('test1.R')
