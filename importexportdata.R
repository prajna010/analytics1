#import/export data

#check for files and folders
dir('./data2')
list.files('./data2')
list.files('./data2')
#reading from a flat file into a vector
data=scan("./data2/hhe.txt", what="character")
head(data)

class(data)

file.exists("./data/mtcars.csv")

#CSV read from csv

write.csv(iris, "./data/iris.csv", row.names=F)
#goto folder data and see iris.csv

read1 = read.csv(file="./data/iris.csv", header = TRUE,sep =",")
str(read1) ; class(read1)

#CSV file from web
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)

#Import from google sheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#excel
library(xlsx)
sys.
df_exce




