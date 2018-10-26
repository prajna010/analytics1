#import/export data

#check for files and folders
dir('./data2')
list.files('./data2')
listfiles('./data2')
#reading from a flat file into a vector
data=scan("./data2/hhe.txt", what="character")
head(data)

file.exists("./data/mtcars.csv")


