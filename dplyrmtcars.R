#analysis of dataset mtcars using dplyr
#learn to use dplyr pacakge for mtcars

library(dplyr)
?mtcars
mtcars
#structure of dataset
str(mtcars)
head(mtcars)
tail(mtcars)
row(mtcars)
col(mtcars)

dim(mtcars)
#columns
names(mtcars) #carname

rownames(mtcars) #row name

summary(mtcars) #summary of dataset

#summary activities

t1 = table(mtcars$am)
pie(t1)

t2 =table(mtcars$gear)
pie(t2)
barplot(t2)
barplot(t2, col=1:3)
barplot(t2, col=1:3, horiz = T)
barplot(t2, ol=c('green','blue','yellow'), xlab='gear', ylab='no of cars', ylim=c(0,20))
title(main='distribution of gears of cars', sub='no of gears')

#using dplyr %>% is chaining function 
mtcars %>% select (mpg) %>% slice (c(1:5, 10))

#select for columns, slice for rows

#sort the mtcars according to mpg
mtcars %>% arrange(mpg)   #asceding order of mileage


