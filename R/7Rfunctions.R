## R provides a lot of functions. Boolean functions, summary functions etc

########################################################################
## Functions related to the environment
########################################################################


##1) ls()
##It will list all objects of current environment.

ls()

##2) rm(object)
##It will delete the variables

rm(list=ls(all.names=TRUE))

##3) save.image()
##It will save the image anytime.
save.image()


##4) savehistory(filename)
##It will save all the commands run in console in a file.
savehistory("15mar.Rhistory")

##5) loadhistory(filename)
##It will load all the commands in console from the file.	

loadhistory("15mar.Rhistory")

##6) getwd()
##It will return the working directory of R

getwd()
[1] "C:/R"

##7) setwd("/PATH")
##It will set the working directory for R

setwd("C:/R")

##8) list.files()
##It will list the list of files in the working directory.

list.files()

##9)Sys.Date()
##Will return the system date

Sys.Date()
[1] "2017-03-10"

##10) Sys.time()
##Will return the system time.

Sys.time()
[1] "2017-03-10 20:49:38 IST"

########################################################################
## Function to search or find or compare something
########################################################################
x<-c(2,4,6,8,10)


## 1) all()
## will return a boolean value(T/F) if condition is true for all values of the object
all[x>0]
TRUE

## 2) any()
## will return a boolean value(T/F) if condition is true for any values of the object

any[x>8]
TRUE

## 3) which()
## It will return index of the value satisfying the condition

x<-c(2,4,6,8,10)
which(x>4) 
[1] 3 4 5

##)4) which.min()
## It will return index of the minimum value
which.min(x)
[1] 1

## 5) which.max()
## It will return index of the maximum value
which.max(x)
[1] 5


## 6) subset function
## It generates the subset of data as per condition. It removes the NA while normal filtering does not.

subset(x,x>5)
[1] 6 8 10

## 7) ifelse(condition,val1,val2) function
## It is like ifelse (condition) then val1 else val2

ifelse( x > 6, 1 , 0)
[1] 0 0 0 1 1

########################################################################
## Functions Related to the objects
########################################################################


## 1) dim(object) function
## Returns dimension of the object ( can be vector,matrix,dataframe or anyother)

m<-matrix(1:10,5,2)
dim(m)
[1] 5 2

## 2) head(object,number) function 
## return n number of rows of object from top

head(m, 2)
      [,1] [,2]
[1,]    1    6
[2,]    2    7

## 3) tail(object,number) function
## return n number of rows of object from bottom

tail(m,2) 

      [,1] [,2]
[4,]    4    9
[5,]    5   10

## 4) str(object) 
return the structure of the object/function
str(head)
function (x, ...)

## 5) sort(object,decreasing=FALSE)
## It will sort the object in decreasing or increasing order
sort(c(4,2,7,1,3,9,10,16,13))
[1]  1  2  3  4  7  9 10 13 16

## 6) order(object,decreasing=FALSE)
## 'order' returns a index numbers of object in ascending or descending order
> order(c(4,2,7,1,3,9,10,16,13))
[1] 4 2 5 1 3 6 7 9 8


## 7) split(x,f)
##'split' divides the data in the vector 'x' into the groups defined by 'f'.
## unsplit reverses the effect
data(energy)
expand stature
9.21  Obese
7.53  lean
7.48  lean
8.08  lean
8.09  lean
10.15  lean
8.40  lean
10.88  lean
6.13  lean
7.90  lean
11.51  Obese
12.79  Obese
7.05  lean
11.85  Obese
9.97  Obese
7.48  lean
8.79  Obese
9.69  Obese
9.68  Obese
7.58  lean
9.19  Obese
8.11  lean

l<-split(energy$expand,energy$stature)
##now we will get two list, one of lean and other of obese
l
$lean
7.53 7.48.....
$obese
9.21 11.51......

## 8) unique(object) function returns the unique value inside a object
> unique(c(1,1,1,2,2,3,3,3,4,4,4))
[1] 1 2 3


## 9) aggregate function
## Splits the data into subsets, computes summary statistics for each, and returns the result in a convenient form.
## we are aggregating the ozone, Solar.R, Wind, Temp by Month. 
## In the output we got mean of Ozone, Solar.R, Wind and Temp for each month.
## we can put more than one criteria for group by clause, that is central term.
> aggregate(ozone[,c(1,2,3,4)],list(ozone$Month),mean)

Group.1    Ozone  Solar.R      Wind     Temp
1       5 24.12500 182.0417 11.504167 66.45833
2       6 29.44444 184.2222 12.177778 78.22222
3       7 59.11538 216.4231  8.523077 83.88462
4       8 60.00000 173.0870  8.860870 83.69565
5       9 31.44828 168.2069 10.075862 76.89655





################################################################################################
## Functions related to text
################################################################################################
## split the text into parts
strsplit("R is easy",split=" ")
[[1]]
[1] "R"    "is"   "easy"

## length of string
nchar("R is easy")
[1] 9

## substring of a string
substr("R is easy",1,2)
[1] "R "

## 4) paste(vector1, vector2) It Concatenate vectors after converting to character.

part1<-c("M","na","i", "Te")
part2<-c("y","me","s","st")
paste(part1,part2,sep="" ,collapse=" ")
[1] "My name is Test"

> paste(part1,part2,sep="-" ,collapse="***")
[1] "M-y***na-me***i-s***Te-st"

## 5) grep ## It helps to find a pattern inside a text

grep("pattern",x) ## It will return the index of pattern in vector or dataframe


##6) to remove a pattern
install.package("stringR")

## to Remove all alphanumeric
str_replace_all(x, "[^[:alnum:]]", " ")
## to Remove all punctuation
str_replace_all(x, "[[:punct:]]", " ")

## to search a string inside another string

sweep 


################################################################################################
## reshape package.
## It has two important function melt and cast
## melt converts two columns of dataframe into one column and rest of data will be replicated.
################################################################################################


data
Name 	class 	Marks1 	Marks2
Amy 	8 	35 	36
Amy	7 	30 	30
Ben	8 	43 	39
Ben	7 	29 	44

mdata<-melt(mydata, id=c("id","time"))
##The column Name and id will be replicated and Marks1 and Marks will be melted into 1 column

Name 	class 	variable value
Amy 	8 	Marks1 25
Amy	7 	Marks1 30
Ben	8 	Marks1 43
Ben	7 	Marks1 29
Amy 	8 	Marks2 36
Amy	7 	Marks2 30
Ben	8 	Marks2 39
Ben	7 	Marks2 44

## Now we can summarize this data in any manner we want
submean<-cast(mdata,Name~variable,mean)

Name     Mark1      Marks2
Amy 	 (25+30)/2  (36+30)/2
Ben	 (43+29)/2  (39+44)/2 	

submean<-cast(mdata,class~variable,mean)

class     Mark1      Marks2
7	 (29+30)/2  (44+30)/2
8	 (43+25)/2  (39+36)/2 




########################################################################
## Functions Related to the Statistics
########################################################################


## 1) mean()/weighted.mean()
## return the  mean of numbers

mean(c(1,2,3,4,5,5,6,7,8,9)) 
[1] 5

## 2) median()
## return the median of numbers

median(c(1,2,3,4,5,5,6,7,8,9)) 
[1] 5



## 4) summary()
##It returns the mean, median, mode, max, min, 1 Qu, 3 Qu of numbers

summary(c(1,2,3,4,5,5,6,7,8,9))
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1.00    3.25    5.00    5.00    6.75    9.00

## 4) quantile()
##It returns the quantiles of data

quantile(c(1,2,3,4,5,5,6,7,8,9))
0%  25%  50%  75% 100% 
1.00 3.25 5.00 6.75 9.00


## 5) table()

##table function provides the tabluar view or frequency table of data. It apply group by clause on data

table(c(10,11,23,45,12,11,10,9,12,8,8,3))
3  8  9 10 11 12 23 45 
1  2  1  2  2  2  1  1

### 6) cumsum() cumulative sum

v<-c(1,2,3)
cumsum(v)
1,3,7

## 7) cumprod() cumulative product

v<-c(1,2,3)
cumprod(v)
1,2,6

## 8) var(x) Variance 

var(c(1,2,3,4,5,6,7,8,9,10))
[1] 9.166667	

## 9) Standard Deviation

sd(c(1,2,3,4,5,6,7,8,9,10))
[1] 3.02765

## There are four type of function for each distribution.
## d = density function
## p = cumulative distribution function
## q = quantile function
## r = draw random number from the function


## 10) norm()/
##It is used for normal distribution


dnorm(x) ## find value of density function value for normal distribution
pnorm(q) ## cumulative normal probability for q 
qnorm(p)/qnorm(0.95) ## give value of 95% quantile for standard normal distribution
rnorm(5,mean=2,sd=2) ## geneate the random number from normal distribution which has mean=5 and sd=2


## 11) binom() for binomial distribution
dbinom(x, size, prob) ## find density function value for binomial distribution where size is sample size and prob is probability of success
pbinom(q, size, prob) ## calculate cumulative binomial probability 
qbinom(p, size, prob) ## calculate the quantile 
rbinom(n, size, prob) ## geneate the n random number for binomial distribution where size is sample size and prob is probability of success 

## 12) pois() for Poission distribution
## It is used when the occurance is given in terms of rate. 

dpois(x, lamda) ## find density function value for poission distribution for given lamda
ppois(q, lamda) ## calculate cumulative poission probability 
qpois(p, lamda) ## calculate the quantile of poission distribution
rpois(n, lamda) ## geneate the n random number for poission distribution


## 12) unif() for uniform distribution

dunif(x, min=, max=1) ## density function
punif(q, min=, max=1) ## cumulative distribution function
qunif(p, min=, max=1) ## quantile function
runif(n, min=a, max=b) ## geneate the n uniform random variable between a and b.

## 13) gamma() for gamma distribution

dgamma(x, shape, rate = 1, scale = 1/rate, log = FALSE)
pgamma(q, shape, rate = 1, scale = 1/rate, lower.tail = TRUE,
       log.p = FALSE)
qgamma(p, shape, rate = 1, scale = 1/rate, lower.tail = TRUE,
       log.p = FALSE)
rgamma(n, shape, rate = 1, scale = 1/rate)


## 13) exp() exponential distribution

dexp(x, rate = 1, log = FALSE)
pexp(q, rate = 1, lower.tail = TRUE, log.p = FALSE)
qexp(p, rate = 1, lower.tail = TRUE, log.p = FALSE)
rexp(n, rate = 1)


## 15) t.test() for Student t-test
## It can be one sample, two sample or paired t-test
   t.test(z)  ## It is one sample t-test where null hypothesis is that true mean is 0
   t.test(x,y) ## It is two sample t-test where null hypothesis is that μ 1 − μ 2 = d (diff in mean is d)
                 ## and altername hypothesis is μ 1 − μ 2 != d  (diff in mean is not d)


## 16) ks.test() for one or two sample kolmogorov-smirnov test

########################################################################
## Functions Related to the Maths
########################################################################

## It calculates the value e^x
exp(3)
[1] 20.08554

## It calculates the value log x (natural log)
log(2.718)
[1] 0.9998963

## It calculates the value log x with base 10 (common log)
log10(100)
[1] 2

## It calculates the squareroot
sqrt(4)
[1] 2

## It calculates the absolute value
abs()

## It calculates the round value
round(3.475, digits=2) 
3.48

## It calculates the floor value. 
floor(3.475)
[1] 3

## It calculates the ceil value. 
ceiling(3.475)
[1] 4

## trignometric functions
sin()

cos()

tan()

## Sum and product of all values in an object
sum(c(1,2,3))
[1] 6

prod(c(4,5,6))
[1] 120

## It calculates the 5!=5*4*3*2*1
factorial(5)
[1] 120

## pmin() pairvise min
##we can pass rows or columns of the matrix.

v1<-c(1,2,3)
v2<-c(3,1,2)
pmin(v1,v2)
[1] 1 1 2

## pmax() pairwise max

v1<-c(1,2,3)
v2<-c(3,1,2)
pmax(v1,v2)
[1] 3,2,3


## Matrix transpose
m<-matrix(1:6,2,3)
      [1,] [2,] [3,]
[1,]  1    3    5
[2,]  2    4    6

t(m)
      [1,] [2,] 
[1,]  1    2    
[2,]  3    4    
[3,]  5    6

## sweep function
sweep(m,margin=c(1,2), stat=min(m),fun="-")
sweep(m,margin=c(1,2), stat=min(m),fun="-")
sweep(m,MARGIN=c(1,2), STATS=max(m),FUN="/")





