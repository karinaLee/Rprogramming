?read.csv

##1 select file manually
stats <- read.csv(file.choose())

rm(stats)

#2 set wd and read data
getwd() 
setwd("/Users/katrina09/Documents/R_RPA_CAMP/test") 
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


#----------------------------------- filtering data
stats
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate > 40,]
stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income ", ]
levels(stats$Income.Group)

#----------------------------------- Introduction to qplot()
?qplot
qplot(data=stats, x=stats$Internet.users)
qplot(data=stats, x=stats$Income.Group, y=Birth.rate, size=I(3), colour=I("blue"))
qplot(data=stats, x=stats$Income.Group, y=Birth.rate, geom="boxplot")

#----------------------------------- Visualizing what we need
qplot(data = stats, x=Internet.users, y=Birth.rate)
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(4) )
qplot(data = stats, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(3))


#----------------------------------- Creating Data Frames
mypf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset,Regions_2012_Dataset)
mypf
head(mypf)
colnames(mypf) <- c("countries","codes","regions")
rm(mypf)
mypf <- data.frame(countries=Countries_2012_Dataset, codes=Codes_2012_Dataset,regions=Regions_2012_Dataset)

#----------------------------------- merging Data Frames
stats
mypf
merged <- merge(stats, mypf, by.x="Country.Code", by.y="codes")
head(merged)
merged$countries = NULL

#Shape
qplot(data = merged, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(3), shape=I(17))
#Transparency
qplot(data = merged, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(3), shape=I(17), alpha=I(0.1))
#Title
qplot(data = merged, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(3), shape=I(17), alpha=I(0.1),main="Birth rate vs Internet users ")


