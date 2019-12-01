#default is double
e <- 2
typeof(e)

#add L, integer type
x <- 2L
typeof(x)

#double
y <- 2.5
typeof(y)

#complex
z <- 2 + 2i
typeof(z)

#character
h <- "a"
typeof(h)

#logical
q1 <- T
typeof(q1)
q2 <- FALSE
typeof(q2)

greeting <- 'hello'
name <- 'yoon'
#paste converts its arguments to character strings
message <- paste(greeting,name)

result <- 4 < 5
result2 <- !result

isTRUE(result)

rm(answer)
x <- rnorm(1)
if(x > 1){
  answer = 'greater than 1'
}


