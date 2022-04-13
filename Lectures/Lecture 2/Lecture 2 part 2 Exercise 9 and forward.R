
# Creating the Data
# in the console write x=c(1:99, 151)
# length(x)
# find number in position x[100] will return 151

# if you want a range in the data x[11:15]

# find quartiles
# q1=median(x[1:50])
# q3=median(x[51:100])

# iqr
# i = q3-q1

# whisker left
# w1=q1-1.5*i

# whisker right
# wr=q3+1.5*i


# boxplot(x)
# boxplot(x, horizontal=TRUE)

w=c(1,2,3,4,5,6,7,8,13)
boxplot(w)
# q1 = 3    you can type q1t=median(w[1:5])
# q3 = 7    you can type q1t2=median(w[5:9])
# i=q3-q1   answer is 4
# w1=q1-1.5*i   answer is -3
# wr=q3+1.5*i   answer is 13


# Boxplot example 2
# in the console type:
# w=c(1,2,3,4,5,6,7,8,14)
# boxplot(w, horizontal=TRUE)



# NEVER use the comment summary(x) and quantile(x) and dont use IQR this is wrong!! 
# use the regular mean, median etc


# Example 3 
# using the data mtcars$wt
# x=sort(mtcars$wt)
# length(mtcars$wt)
# q1=median(x[1:16])
# q2=median(x[17:32])
# i = q2-q1
# wl=q1-1.5*i
# wr=q2+1.5*i
# boxplot(x, horizontal = TRUE)

# Example 4
# x=sort(mtcars$qsec)
# length(mtcars$qsec)
# q1=median(x[1:16])
# q3=median(x[17:32])
# i = q3-q1
# wl=q1-1.5*i
# wr=q3+1.5*i
# boxplot(x, horizontal = TRUE)

# What are the outliers for Rape? Alaska and Nevada
# boxplot(USArrests$Rape, horizontal =TRUE)
# x=USArrests$Rape
# sort(x)
# View(USArrests)

