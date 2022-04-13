# Lab/Assignment 1 by Monika Szucs A00878763

# 1 producing a histogram to show distribution of body temperatures of
# beavers for over two days in the dataset
hist(beaver$temp)

# changing the number of classes in the histogram with breaks=20
hist(beaver$temp, breaks=20)

# breaks=10 test
hist(beaver$temp, breaks=10)

#adding a title, label x, label y by consulting the help file and colors
hist(beaver$temp, breaks=10, 
     main="Body Temperature of beaver over 2 days",
     xlab="Body Temperature Degree Celcius", 
     ylab="Hours",
     col = "lightsteelblue", 
     border="blue",
     bg="red",
     lty=2)

# Grab some descriptive statistics
# Mean (average)
mean(beaver$temp)
# Median (Middle Value)
median(beaver$temp) 
# Standard Deviation (a measure of how variable the data is)
sd(beaver$temp)

# Box plot
boxplot(beaver$temp,
        horizontal = TRUE,
        notch = TRUE,
        col = rgb(0, 0.5, 1, alpha = 0.5),
        lty = 2
        )

