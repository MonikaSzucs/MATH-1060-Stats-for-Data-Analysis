# Lab 2 Cumulative distribution by Monika Szucs A00878763

# 1 and 2 Importing the file 
beaver <- read.csv("C:/Users/mszuc/Desktop/MATH-1060-Stats-for-Data-Analysis/Lab & R codes/Lab 2/beaver.csv")

# 16 Generating random numbers
x = rnorm(1000)

# 3 grabbing a range
r <- range(x)

# 4 Grabbing the low and upper bounds of the histogram
xmin <- round(r[1],1)-0.1
xmax <- round(r[2],1)+0.1 

# 5 number of classes
#N <- 10
# 15 changing the values of N
#N <- 50
#N <- 100
# 17 creating a smooth curve
N <- 1000

# 6 defining class width
step <- (xmax - xmin) / N

# 7 Computing values of class boundaries
boundaries <- seq(xmin, xmax, by=step)

# 8 Telling you which class each element belongs to
xcut <- cut(x, breaks=boundaries, right=FALSE) 

# 9 Compiles the freqeuncy table then displays it
ft <- table(xcut)
plot(ft, type='h')

# 10 calculate the profitability
total = sum(ft)

# 11 Solving the quadratic equation
cube <- function(x){x^3}

# 12 probability of randomely picked data point
prob <- function(i) { sum(ft [1:i]) / total }

# 13 Substitute Numbers
cp <- sapply(1:N, prob)

# 14
plot(boundaries[2:(N+1)], cp, type="l", main="Cumulative Probability: P(X < x)", xlab="x", ylab="Probability")

