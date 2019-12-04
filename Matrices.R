?matplot
?t
matplot(FieldGoals)

FieldGoals
# t(x) t returns the transpose of x
t(FieldGoals)
matplot(t(FieldGoals),type="b",pch=15:18,col=c(1:4,6))
?legend
legend("bottomleft",inset=0.01,legend=Players,pch=15:18, col=c(1:4,6))
Games[1,]
Games[c(1,2),] #is matrix
is.matrix((Games[c(1,2),]))
is.vector((Games[c(1,2),])) 
(Games[c(1),]) #is vector
is.vector((Games[c(1),])) 
is.vector(Games[1,]) #true
is.vector(Games[2,3 ]) #true

is.vector(Games[1,5,drop=F]) #false
is.vector(Games[1,5,drop=T]) #true 

#Row가 하나인 경우 vector이므로 matrix형태로 변경 필요.
Data <- MinutesPlayed[1,]
Data
matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))

Data2 <- MinutesPlayed[1,,drop=F]
is.matrix(Data2)
matplot(t(Data2),type="b",pch=15:18,col=c(1:4,6))

myFunc <- function(data,rows=1:10 ){
  Data <- data[rows,]
  matplot(t(Data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],pch=15:18, col=c(1:4,6))
}

myFunc(Games,1:5)




