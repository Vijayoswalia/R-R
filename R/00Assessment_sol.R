Vector
###############################################################################################################


## Question 1:
v<-c(1,2,3,4,5,6,7,8,9,10)
1) Find all elements greater than 8
2) Find all elements which are even
3) Remove last element of vector
4) convert all even elements of vector to next odd.

##Ans
1) v[v>8]
2)b)v[v%%2==0]
3) c) v[1:length(v)-1]
4) d)v[v%%2==0]+1

##  Question 2:
##  The percentage of profit earned by a company for first, second, third and fourth quarter is 2,5,9,12 percent
##  If the sales of the company is 1 million dollar each month, Find the annual profit of company.

##Ans
profit<-c(rep(2,3),rep(5,3),rep(9,3),rep(12,3))
sum(profit*1000000)/100



## Question 3 :
## A person takes a loan of 1 lakh rupees in the month of Jan at annual interest rate of 20%. For each upcoming month his principal amount
## get reduced by 5000 rupess and rate by 1 percent.Find the total amount of interest paid from Jan to Dec.

##Ans
amount=seq(100000,by=-5000, length=12)
rate=seq(20,by=-1, length=12)
time=seq(12,by=-1,length=12)
sum((amount*rate*time)/12)


## question 4:
## The sales figure in percentage are 50,55,60,65,70,75,80 on 7 days of week starting from Monday to Sunday.
## find mean, max, min sales and his best and worst day in the week.

##Ans
x=seq(50,80,by=5)names(x)=c("mon","tue","wed","thurs","fri","sat","sun")
mean(x)
max(x)
min(x)
which.max(x)
which.min(x)

Matrix
###############################################################################################################
## question 5
##The sales percentage of two branches for 4 weeks is as follows ( Week start from Monday and end on Sunday).
1) 40,45,34,67,56,87,45,23,45,27,37,87,98,45,25,35,54,56,76,84,65,35,56,45,67,67,77,87
2) 34,37,39,41,45,49,51,46,45,49,52,55,58,60,67,55,54,58,65,69,70,74,75,65,64,68,69,74

##Ans first prepare the data
store1=matrix(c(40,45,34,67,56,87,45,23,45,27,37,87,98,45,25,35,54,56,76,84,65,35,56,45,67,67,77,87),7,4)
dimnames(store1)=list(c("mon","tue","wed","thurs","fri","sat","sun"),c("week1","week2","week3","week4"))
store2=matrix(c(34,37,39,41,45,49,51,46,45,49,52,55,58,60,67,55,54,58,65,69,70,74,75,65,64,68,69,74),7,4)
dimnames(store2)=list(c("mon","tue","wed","thurs","fri","sat","sun"),c("week1","week2","week3","week4"))
data<-array(,c(7,4,2))
data[,,1]=store1
data[,,2]=store2

##Find the following.
1) Average, max, min sales of both stores.
apply(data,3,mean)
apply(data,3,max)
apply(data,3,min)

2) which day was best and worst of both stores. Answer can be either way a) - 2,4 (Second week fourth day) b) 14 (th day of month)
apply(data,3,which.max)

3) Week average, week min, week max sales of both store.
apply(data,c(2,3),mean)
apply(data,c(2,3),min)
apply(data,c(2,3),max)

##4) Average sales of both the stores in the form of matrix.
apply(data,c(1,2),mean)


##5) When the store1/store2 performing better in the form of matrix with values 1/2

apply(data,3,which.max)  ## method 1
matrix(mapply(function(a,b){ifelse(a>b,1,2)},data[,,1], data[,,2]),7,4) ## method 2


Run the following code

v1<-c(40,45,34,67,56,87,45,23,45,27,37,87,98,45,25,35,54,56,76,84,65,35,56,45,67,67,77,87)
v2<-c(34,37,39,41,45,49,51,46,45,49,52,55,58,60,67,55,54,58,65,69,70,74,75,65,64,68,69,74)
plot(v1,type="l",col="red",xlab="Days",ylab="Sales")
lines(v2,type="l",col="blue")
/
This will give you graphical view of data. Which one is better store and why?
If required you can take help of statistics to support your view. There is no right or wrong but it will
help you develop approach of analytics.




##Data frame and functions
###############################################################################################################
## Ozone Solar.R  Wind	Temp	Month	Day

##Load Ozone_data.csv in R.

ozone_data<-read.table("c:\R\Ozone.csv",sep=",",header=TRUE)
good<-complete.cases(ozone_data)
ozone<-ozone_data[good,]

1) Extract first 8 rows of data
   ozone[1:8,]
2) How many rows  and columns are there in this data.
   dim(ozone)
3) find the value of Ozone from last row
   tail(ozone,1)
4) find the value of data where Ozone > 31 and temp >91
   subset(ozone,Ozone>31&Temp>91)
5) Find average, max, min temp for month=5

  ## create a fuction which will return everything in one function.
  Multi<-function(a)
  {
   x=min(a)
   y=max(a)
   z=mean(a)
   w<-c(x,y,z)
   names(w)<-c("Min","Max","Mean")
   return(w)
  }

   Multi(subset(ozone,Month==5,Temp)[,1])


6) What is the average of temperature when ozone>100

   mean(subset(ozone,Ozone>100,Temp)[,1])

7) find days and month when the ozone<30 and ozone>100

   ozone[ozone$Ozone<30|ozone$Ozone>100,c[4,5])
   subset(ozone,Ozone<30|Ozone>100,c("Day","Month"))

8) find standard deviation and mean of ozone for each month.

  tapply(ozone$Ozone,ozone$Month,mean,na.rm=TRUE)
  tapply(ozone$Ozone,ozone$Month,sd,na.rm=TRUE)

9) Find day and month for max(temp), max(wind), max(ozone), max(solar.R) and likewise for min ( use any apply function)

   subset(ozone,Temp==max(Temp),c("Day","Month")) ## Method1

   ozone[ozone$Temp==max(ozone$Temp),5:6]  ## Methods2
   ozone[ozone[,4]==max(ozone[,4]),5:6]

   ozone[which.max(ozone$Temp),5:6]  ## Method3
   ozone[which.max(ozone[,4]),5:6]

   max_day_month<-function(x){ozone[which.max(ozone[,x]),5:6]}    ## Method4 make a function
   v=c(1,2,3,4,5,6)
   mapply(max_day_month ,v)


10) use aggregate function to calculate the variance of temp, wind, ozone and solar.R for each month.

   aggregate(ozone[,c(1,2,3,4)],list(ozone$Month),var)

## What will be the answer of below given commands?

paste(1:3,c("X","Y","Z"),sep="", collapse=" ")
paste(LETTERS,1:4,sep="-")










