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
#selecting first 5 cars and 10th car
mtcars %>% select (mpg) %>% slice (c(1:5, 10))

#to select sample
mtcars %>% sample_n(3)
mtcars %>%slice(C(1,5,7))
mtcars %>% sample_frac(.2)
#to randomny select a column
mtcars %>% select(sample(x=c(1:11), size=2))  %>%head
sample(x=1:11, size=2)

#to add another column by certain percentage(it doesnt add to the new dataset)
mtcars %>%mutate( newmpg =mpg *1.1)

#select for columns, slice for rows

#sort the mtcars according to mpg
mtcars %>% arrange(mpg)   #asceding order of mileage
mtcars %>% arrange(am, desc(mpg)) %>% select(am,mpg) #descending order of mpg, ascending order of am

#extra
mtcars %>% select(hp)  %>%slice

#naming the column 
mtcars %>% mutate (rn =rownames(mtcars)) %>% select(rn,mpg,gear) 

#to add another column by certain percentage(it doesnt add to the new dataset)
mtcars %>%mutate (newmpg =mpg *1.1)
mutate(mtcars, newmpg=mpg*1.2)

                  
#average mileage of cars
#type of Tx, mean(mpg)
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg)) 
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg), maxHP= max(hp), MinWT= min(wt))
mtcars %>% group_by(gear) %>% summarise(MeanMPG=mean(mpg))
                                      