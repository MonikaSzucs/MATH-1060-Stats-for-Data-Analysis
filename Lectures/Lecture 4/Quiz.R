# Find the left and right whisker for qsec
View(mtcars)
boxplot(x, horizontal = TRUE)
View(mtcars$hp)
x=mtcars$hp
x=sort(x)
length(x)
q1=median(x[1:16])
q3=median(x[17:32])
i=q3-q1
wl=q1-1.5*i
wr=q3+1.5*i
boxplot(x, horizontal = TRUE)


z = (215 - mean(mtcars$hp)) / sd(mtcars$hp)
