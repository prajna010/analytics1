#simple linear regression - women

women
fit1=lm(weight ~height, data=women)
summary(fit1)
#predict for ht =69.5 and 70.5
(new =data.frame(height =c(69.5, 70.5)))

#predict weight 
(p1=predict(fit1, newdata=new))
cbind(new,p1)
plot(fit1)

--------------------------
#mtcars
names(mtcars)
fit2= lm(mpg ~ wt, data=mtcars)
range(mtcars$wt)
#predict mpg for wt = 2 and 3
