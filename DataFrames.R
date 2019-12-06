?read.csv

##1 select file manually
stats <- read.csv(file.choose())

rm(stats)

#2 set wd and read data
getwd() 
setwd("/Users/katrina09/Desktop/study/Rprogramming") 
stats <- read.csv("P2-Demographic-Data.csv")
stats

nrow(stats)
ncol(stats)
head(stats, n=10)
tail(stats, n=8)
str(stats)
summary(stats)

#Data frame에서 특정 값을 가져오기 위해선 
# n,m형태로 select
stats[3,3] 
#colomn name 으로 select
stats[3,"Birth.rate"]
#$을 사용하여 특정 열 select
stats$Birth.rate[3]

stats[,"Birth.rate"]
stats$Birth.rate

levels(stats$Income.Group)

stats[1:10,]
stats[3:9,]
stats[c(4,100),]
 

is.data.frame(stats[1,]) #true
is.data.frame(stats[,1]) #false
is.data.frame(stats[,1,drop=F]) #true

stats$myColc <- stats$Birth.rate * stats$Internet.users
stats$xyz <-1:5 #recursive 
stats$myColc <- NULL
