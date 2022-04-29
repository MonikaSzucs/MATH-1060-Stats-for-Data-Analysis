#Coin toss:  Probability of getting heads 
n <- 1:1000
P<-rep(0, times=length(n))
for(m in n){
  x <- sample(c(0,1), m, replace=TRUE)
  P[m] <- sum( x )/ m
}
plot(n, P)
P[length(P)]

# dice prob of getting 1
n <- 1:1000
P<-rep(0, times=length(n))
for(m in n){
  x <- sample(c(1,0,0,0,0,0), m, replace=TRUE)
  P[m] <- sum( x )/ m
}
plot(n, P)
P[length(P)]


# prob of getting 1 on dice and heads on coin. Verify multiplication Rule for independent events
n <- 1:1000
P <- rep(0, times=length(n))
for(m in n){
  x <- sample(c(1,0,0,0,0,0), m, replace=TRUE)*sample(0:1, m, replace=TRUE)
  P[m] <- sum( x )/ m
}
plot(n, P)
P[length(P)]
