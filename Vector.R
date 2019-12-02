#Vector start index  0
#numeric vector, character vector 

myVector <- c(1,2,2312,12 )
is.numeric(myVector) #true
is.integer(myVector) #false
is.double(myVector) #true
 
v3 <- c(12,"ABC");
is.numeric(v3) #false
is.character(v3) #true

seq() #sequence - like :
rep() #replicate

seq(1,5)
v1 <- 1:5
seq(1,15,2) #seq(from, to, by=)

rep(2,3)
x <- c(1,20)
y <- rep(x,10)

z <- c(1,2,3,4,5)
z[-1] #except index 1, return 2,3,4,5
z[1:3] # return 1,2,3
z[c(2, 5)] #return  2,5
z[-3:-5] # return 1,2
z[c(-3,-5)] #return 1,2,4

#vectorized operations
a <- c(1,3,4)+ c(2,42,1) #3,45,5
b <- c(1) + c(51,124) # c(1) recursive, 52,125
