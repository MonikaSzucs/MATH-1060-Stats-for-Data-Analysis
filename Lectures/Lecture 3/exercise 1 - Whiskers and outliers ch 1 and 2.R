USArrests$Rape
data("USArrests")

USArrests$Rape
USArrests$Rape
length(USArrests$Rape)

x <- USArrests$Rape/length(USArrests$Rape)




# view(USArrests)
# data("USArrests")
# a = USArrests$Assault
# r = USArrests$Rape

# Assault x value
# mean - 1.5(SD) = x
XAssaultValue <- mean(a) - 1.5(sd(a))

# Rape x value
XRapeValue <- mean(r) - 1.5(sd(r))

# (53-mean(a))/sd(a)
# (10.8-mean(r))/sd(r)

#  z = (53- mean(USArrests$Assault)) / sd(USArrests$Assault)
# z = (10.8- mean(USArrests$Rape)) / sd(USArrests$Rape)

# rape has a lower negative which means it is better in terms of rape to assult

# define the data points yourself:
y=c(28.6,17.8,17.9,18.8,30.9,16.7,18.4,28.7,21.1,31.8,22.9,18.5,17.2,19.1,18.2,17.9,18.7,17.9,17.0,17.9,26.2,16.9,17.0,21.0,2.9,22.7,20.1,28.2,18.8,28.9,17.4,22.9,16.4,20.9,21.5,26.8,28.2,17.8,21.9,1.7,27.9,18.6,18.6,23.1,32.0,23.2,24.8,28.0,26.3,19.0,21.0)

# Find the outlier and whiskers
z=sort(y)
length(z)
q1=median(z[1:26])
q3=median(z[26:51])
i = q3-q1
wl=q1-1.5*i
wr=q3+1.5*i
boxplot(z, horizontal = TRUE)


# Even number Dataset find the outlier and whiskers
y=c(1:99, 151)
length(y)
q1=median(x[1:50])
q3=median(x[51:100])
i = q3-q1
# anything outside the wiskers threshold will be a outlier
# Whiskers will not show in the graph
wl=q1-1.5*i
wr=q3+1.5*i
boxplot(x)
# you will see the outlier is 151 from the graph
boxplot(x, horizontal=TRUE)

#if you want the point to include a one near 150 change the last values to 150 instead of 151
y=c(1:99, 150)
# now you will see the right max range will include the 150 and there is no outlier anymore
boxplot(y, horizontal=TRUE)



# Find the left and right whisker of the mtcars$wt
x=mtcars$wt
x = sort(x)
length(x)
q1=median(x[1:16])
q3=median(x[17:32])
i=q3-q1
wl=q1-1.5*i
wr=q3+1.5*i
boxplot(x, horizontal = TRUE)

# Find the left and right whisker for qsec
View(mtcars)
boxplot(x, horizontal = TRUE)
View(mtcars$qsec)
x=mtcars$qsec
x=sort(x)
length(x)
q1=median(x[1:16])
q3=median(x[17:32])
i=q3-q1
wl=q1-1.5*i
wr=q3+1.5*i

# if you want to compare all the data in mtcars type
boxplot(mtcars, horizontal=TRUE)

#find the outliers of the USArrests - name of state there is an outlier in Rape
x=USArrests$Rape
x=sort(x)
length(x)
q1=median(x[1:25])
q3=median(x[26:50])
i=q3-q1
wl=q1-1.5*i
wr=q3+1.5*i
boxplot(x, horizontal = TRUE)
# the two outliers are at 44.5 and 46 which are when you look at the data(USArrests$Rape)
# the answers of the location are 44.5 = Alaskan and 46 which is Nevada

#This is the internal data using the data built into this 
data(USArrests)
x=USArrests$Rape

# also you can type in the console mean(USArrests$Rape)
# in the console log write mean(USArrests$Murder)

me = mean(USArrests$Murder)
#7.788
med = median(USArrests$Murder)
#7.25
ma = max(USArrests$Murder)
#17.4
mi = min(USArrests$Murder)

#find the Z-score for colorodo state Murder the 7.9 is from the View(USArrests)
# write in the console log  (7.9 - mean(USArrests$Murder))/sd(USArrests$Murder)
z = (7.9 - mean(USArrests$Murder)) / sd(USArrests$Murder)



# Find the Z score of Assault and Rape
a=USArrests$Assault
r=USArrests$Rape
# the 7.9 is from the View(USArrests) when you look under Murder - Colorodo
z = (7.9 - mean(USArrests$Murder)) / sd(USArrests$Murder)

# Find Z score for Wisconson Assault - 53
z = (53 - mean(a)) / sd(a)

# Find Z score for Wisconson Rape - 10.8
z = (10.8 - mean(r)) / sd(r)
