

#factors
gender = sample(c('M', 'F'), size=20, replace=T)
summary(gender)

genderF = factor(gender)
summary(genderF)
genderF


#likert 
(likscale = sample(c('Ex', 'Good', 'Sat', 'poor'), size=20, replace=T))
summary(likscale)
likscaleF = factor(likscale)
summary(likscaleF)
class(likscaleF)
#to give the order to the result
likscaleOF = factor(likscale, ordered=T, levels = c('poor','Sat', 'Good', 'Ex'))
summary(likscaleOF)
barplot(table(likscaleF), col=1:4)
barplot(table(likscaleOF), col=1:4)

#extra
bar=cbind(likscaleF,likscaleOF)
barplot(table(bar), col=1:5)

        