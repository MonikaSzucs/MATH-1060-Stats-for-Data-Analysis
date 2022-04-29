# import the beaver data we used in Lab 1
beaver <- read.csv("./beaver.csv") 

x <- beaver$temp
#x <- rnorm(1000)

r <- range(x)
xmin <- round(r[1], 1)-0.1 #min x for histogram
xmax <- round(r[2], 1)+0.1 #max x for histogram
N <- 100 # number of classes of the histogram. 
step <- (xmax - xmin)/N # class width
boundaries <- seq(xmin, xmax, by=step) # class boundaries  
xcut <- cut(x, breaks=boundaries, right=FALSE)
ft <- table(xcut)
plot(ft, type='h') 
total = sum(ft)

prob <- function(i){
  sum(ft[1:i])/total
  }

cp = sapply(1:N, prob)

plot(boundaries[2:(N+1)],cp, type="l", main="Cumulative Probability: P(X < x)", xlab="x", ylab="Probability")

prob(57)
