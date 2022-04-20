# Coint toss: Probaility of getting heads

n <- 1: 1000
P<- rep(0, times=length(n))
for(m in n){
  x<- sample(c(0,1),m,replace=TRUE)
  P[m]<-sum(x)/m
}
plot(n,P)
P[length(n)]