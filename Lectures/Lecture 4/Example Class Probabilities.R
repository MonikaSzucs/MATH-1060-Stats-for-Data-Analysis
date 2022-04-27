choose(5,0)+choose(5,1)


# calc binomial distribution
# ?dbinom and pbinom is what we will use
# 3 variables x = number fo success , number of experienment and probability of success the P value
# dbinom(2,3,0.5)
# gives you 2 heads out of 3 with the probability of 0.5 if you are looking for 2 heads out of 3 flips



#dbinom(14,30,0.2)

# dbinom(14,30,0.5)

# dbinom(15,30,0.5)



### Using pbinom()
# pbinom(3,10,0.5)
# this gives you the success of having 0,1,2,3 successes consideres everything including and beloeve 3

# what ever it is after 4
# pbinom(4,10,0.5, lower.tail = FALSE)
# contains 5 and after that for that formula. It is better to use the one above


# Possion
# ?dpois - everything after x and including x
# dpois()
# 10 earthquate in 100 years when average is 96
# dpois(10,96)

# 100 earthquakes if average is 96
# dpois(100,96)

# ppois - verything after x