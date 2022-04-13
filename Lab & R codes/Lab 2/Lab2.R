beaver <- read.csv("C:/Users/mszuc/Desktop/MATH-1060-Stats-for-Data-Analysis/Lab & R codes/Lab 2/beaver.csv")
# Extract the values from the "temp" (Body temperature of beaver)
x <- beaver$temp

# Range will give you the minimum and maximum values
r <- range(x)

# Giving the minimum data value using [1] and the value 1
xmin <- round(r[1],1)-0.1
# Giving the maximum data value using [2] and the value 1
xmax <- round(r[2],1)+0.1

# Giving the minimum data value using [1] and the value 0
xmin <- round(r[1],0)-0.1
# Giving the maximum data value using [2] and the value 0
xmax <- round(r[2],0)+0.1


# Giving the minimum data value using [1] and the value 2
xmin <- round(r[1],2)-0.1
# Giving the maximum data value using [2] and the value 2
xmax <- round(r[2],2)+0.1

N <- 10
step <-(xmax-xmin/N)

boundaries <-seq(xmin, xmax, by=step)
boundaries <-seq(-5, 5, by=0.5)
boundaries <-seq(0, 1, by=0.25)
boundaries <-seq(0, 1, by=0.3) # One will not be included in this output

xcut <- cut(x,breaks=boundaries, right=FALSE)

ft <- table(xcut)
plot(ft, type='h')

total = sum(ft)

cube <- function(x){x^3}
# cube(3)  then the answer is 27

#i = 10
#prob <- function(i){sum(ft[1:i])/total}

cp <- sapply(1:N, prob)

plot(boundaries[2:(N+1)], 
     cp, 
     type="1",
     main="Cumulative Probablity: P(X<r)",
     xlab="x",
     ylab="Probability")

