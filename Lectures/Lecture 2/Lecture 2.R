#This is the internal data using the data built into this 
data(USArrests)
x=USArrests$Rape

# also you can type in the console mean(USArrests$Rape)
# in the console log write mean(USArrests$Murder)

#mean(USArrests$Murder)
#7.788
#median(USArrests$Murder)
#7.25
#max(USArrests$Murder)
#17.4
#min(USArrests$Murder)

#closer to min because the median is lower 

#find the Z-score for colorodo state Murder the 7.9 is from the data()
# write in the console log  (7.9 - mean(USArrests$Murder))/sd(USArrests$Murder)
z = (7.9 - mean(USArrests$Murder)) / sd(USArrests$Murder)

                                                                                                                               
