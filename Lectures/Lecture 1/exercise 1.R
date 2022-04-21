USArrests$Rape
data("USArrests")

USArrests$Rape
USArrests$Rape
length(USArrests$Rape)
x <- USArrests$Rape/length(USArrests$Rape)

# view(USArrests)
# data("USArrests")
# a = USArrests$Assult
# r = USArrests$Rape
# (53-mean(a))/sd(a)
# (10.8-mean(r))/sd(r)

#  z = (53- mean(USArrests$Assault)) / sd(USArrests$Assault)
# z = (10.8- mean(USArrests$Rape)) / sd(USArrests$Rape)

# rape has a lower negative which means it is better in terms of rape to assult


y=c(28.6,17.8,17.9,18.8,30.9,16.7,18.4,28.7,21.1,31.8,22.9,18.5,17.2,19.1,18.2,17.9,18.7,17.9,17.0,17.9,26.2,16.9,17.0,21.0,2.9,22.7,20.1,28.2,18.8,28.9,17.4,22.9,16.4,20.9,21.5,26.8,28.2,17.8,21.9,1.7,27.9,18.6,18.6,23.1,32.0,23.2,24.8,28.0,26.3,19.0,21.0)

z=sort(y)
length(z)
q1=median(z[1:26])
q3=median(z[26:51])
i = q3-q1
wl=q1-1.5*i
wr=q3+1.5*i
boxplot(z, horizontal = TRUE)

