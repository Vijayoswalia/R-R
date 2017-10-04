#Environment

ls() #list all variable
getwd() # get working directory
setwd() # change the working directory
dir()  # all files in directory
savehistory() 
savehistory("D://R//04oc, ") 
loadhistory()

#Search

x<- c(1,2,3,4,5,9,9)
x1<-c(9,6,3,4,5,6,7)
all(x>0)
any(x>0)
which(x==9)
which.max(x)
which.min(x)
pmax(x,x1)
pmin(x,x1)
sort(x1)
sort(x1, decreasing = T)
sort(x1, decreasing = F)
order(x1)
order(x1)[1]
x1[order(x1)[1]]


#Maths

x<- c(1,2,3,4,5,9,9)
x1<-c(9,6,3,4,5,6,7,NA)
sum(x1)
prod(x)
cumsum(x)
cumprod(x)
round(2.346)
round(2.346, 2)
floor(2.346)
ceiling(2.346)
head(df)
subset(df, Ozone>50&Temp>90)
ifelse(sum(x1)>39,1,0)
ifelse(sum(x1)>45,1,0)
ifelse(is.na(x1),1,0)
