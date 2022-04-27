##############
###
#   Law of Large Numbers
###
##############

# Coin toss: Probaility of getting heads
n <- 1: 1000
P<- rep(0, times=length(n))
# What do you think the following statement will do?
# for (i in c(3,1,4,1,5,9)) print(i)
# this will print out each number one by one in the for loop
for(m in n){
  x<- sample(c(0,1),m,replace=TRUE)
  P[m]<-sum(x)/m
}
plot(n,P)
vector1 = P[length(n)]
P[length(n)]



# How about sample (1:10, 100, replace=TRUE)
n <- 1: 1000
P<- rep(0, times=length(n))
for(m in n){
  #if you want to do 1 to 100 just do 1:100
  x<- sample(1:10,100,replace=TRUE)
  P[m]<-sum(x)/m
}
plot(n,P)
plot(1:5, c(0,1,-1,2,-2))
vector1 = P[length(n)]
P[length(n)]

#What does P[length(P)] mean?
v <- 1050:1060
v[length(v)]
# it is taking the v'th component of the vector P which is the last value of vector P.
# P will contain the values of heads or the number 6 from the dice rolls


#Question 2 Modify code to see if i can get probability of 6 when i throw a die
n <- 1: 1000
P<- rep(0, times=length(n))
for(m in n){
  x<- sample(c(0,0,0,0,0,1),m,replace=TRUE)
  P[m]<-sum(x)/m
}
plot(n,P)
vector2 = P[length(n)]
P[length(n)]





##############
###
#   Multiplication Rule for Independent Events
###
##############

# Head and Dice: Probability of getting a 6 and Head
n2 <- 1: 1000
P2<- rep(0, times=length(n2))
for(m in n2){
  x2<- sample(c(0,0,0,0,0,1),m,replace=TRUE)*sample(c(1,0),m,replace=TRUE)
  P2[m]<-sum(x2)/m
}
plot(n2,P2)
P2[length(n2)]


