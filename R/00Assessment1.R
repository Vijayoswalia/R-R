
aVector
###############################################################################################################

## Question 1:
v<-c(1,2,3,4,5,6,7,8,9,10)
v
#1) Find all elements greater than 8
v[v>8]
#2) Find all elements which are even
v[v%%2==0]
#3) Remove last element of vector
v[1:length(v)-1]
#4) convert all even elements of vector to next odd.
v[v%%2==0]+1

##  Question 2: 
##  The percentage of profit earned by a company for first, second, 
##        third and fourth quarter is 2,5,9,12 percent
##  If the sales of the company is 1 million dollar each month, 
##        Find the annual profit of company.
v <- c(rep(2,3),rep(5,3),rep(9,3),rep(12,3))
v
profit <- (v*1000000)/100 
sum(profit)

#Question 3 :
## A person takes a loan of 1 lakh rupees in the month of Jan at annual 
#interest rate of 20%. For each upcoming month his principal amount
## get reduced by 5000 rupess and rate by 1 percent.
#Find the total amount of interest paid from Jan to Dec.
amount <- seq(100000, by=-5000, lenght=12)
amount
interest <- seq(20, by=-1, length=12)
interest
int_amount <-sum(interest*amount)/100


#question 4:
## The sales figure in percentage are 50,55,60,65,70,75,80 on 7 days of week starting from Monday to Sunday.
## find mean, max, min sales and his best and worst day in the week.


Matrix
###############################################################################################################
## question 5
##The sales percentage of two branches for 4 weeks is as follows 
#( Week start from Monday and end on Sunday).
1) 40,45,34,67,56,87,45,23,45,27,37,87,98,45,25,35,54,56,76,84,65,35,56,45,67,67,77,87
2) 34,37,39,41,45,49,51,46,45,49,52,55,58,60,67,55,54,58,65,69,70,74,75,65,64,68,69,74

##Find the following.
1) Average, max, min sales of both stores.
2) which day was best and worst of both stores. Answer can be either way a) - 2,4 (Second week fourth day) b) 14 (th day of month)
3) Week average, week min, week max sales of both store.
4) Average sales of both the stores in the form of matrix.
5) When the store1/store2 performing better in the form of matrix with values 1/2
Run the following code

v1<-c(40,45,34,67,56,87,45,23,45,27,37,87,98,45,25,35,54,56,76,84,65,35,56,45,67,67,77,87)
sum(v1)/length(v1)
min(v1)
v1[min(v1)]
v1[56]
max(v1)
v2<-c(34,37,39,41,45,49,51,46,45,49,52,55,58,60,67,55,54,58,65,69,70,74,75,65,64,68,69,74)
avg(v2)
min(v2)
max(v1)
sum(v2)/length(v2)

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
 
2) How many rows  and columns are there in this data.
  
3) find the value of Ozone from last row
 
4) find the value of data where Ozone > 31 and temp >91
  
5) Find average, max, min temp for month=5 

  ## create a fuction which will return everything in one function.


6) What is the average of temperature when ozone>100 
   

7) find days and month when the ozone<30 and ozone>100  
   
 
8) find standard deviation and mean of ozone for each month.
   

9) Find day and month for max(temp), max(wind), max(ozone), max(solar.R) and likewise for min ( use any apply function)

 
10) use aggregate function to calculate the variance of temp, wind, ozone and solar.R for each month.

 









