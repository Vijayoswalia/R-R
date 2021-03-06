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
nrows()
ncols()
dim()

sal <- c(100000,200000,300000,400000,200000,300000,250000,500000)
gendr <- c("M","F","M","F","M","M","F","F")
df=data.frame(sal,gendr)
split(df$sal, df$gendr)
v1 <- seq(100,1000, by=100)
v1
v2 <- rep(c("f","M"),5)
v2
df1 <- data.frame(v1,v2)
split(v1,v2)
df

V <- c(1,1,2,2,2,3,3,4,4,4,5,5,5,5,5,6,6,6,6,7,7,7,7,8)
unique(V)

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


# Text

strsplit("R is easy", split = "")
v=c("R is easy", "C is difficult")
V <- strsplit(v, split = "")
unlist(V)
v <- c("Led","TV","Bulb")
nchar(v)
substr <- substr("R is easy", 1,4)
substr <- substr("R is easy", 6,6)
substr
v1= c("M", "na", "i", "vij")
v2 <- c("y","me", "s", "ay" )
paste(v1,v2,sep = "$")  #wonly for vectors
paste(v1,v2,sep = "")
paste(v1,v2,sep = "", collapse = "")
v <-c("led","tv$","bulb","zled")
grep("led",v)
v[grep("[[:punct:]]",v)]
v
library(stringr)
str_replace_all(v, "tv","led")

#Statistics

mean()
median()
summary()
sd()
var()
quantile()  #Q1,Q2,Q3
decile()   #not availbale
percentile()  #not available
table(v)
table(V)
table(v1)
v1 <- c(1,2,3,4,5,6,1,2,3,4,5,6,2,3,4,4,3,2,3,2,32,3)
cumsum(v1)
cumprod(v1)
cummax(v1)
cummin(v1)

# Date

Sys.Date()
v<-Sys.Date()
mode(v)

# 1-31 -> %d
# 01-12 -> %m
# Jan-Dec -> %b
# January-December -> %B
# 17 -> %y
# 2017 -> %Y
v <- c("01-Jan-2017", "10-Feb-2017")
vdate <- as.Date(v,"%d-%b-%Y")
vdate

vd <- format(vdate,"%d")
vd
vd1 <- format(vdate,"%d")
vd1
vd3 <- format(vdate,"%Y")
vd3
vd4 <- format(vdate,"%B")
vd4
dob <- c("02-10-91", "14-10-93")
dobD <- as.Date(dob, "%d-%m-%y")
dob
dobD
dobtoday = c(Sys.Date() - dob)
v <- c("01-3-1991", "02-10-1992","14-10-1993")
v1 <- c("01-3-1994", "02-10-1995","14-10-1996")

v
v1 <- as.Date(v, "%d-%m-%Y")
v2 <-round((Sys.Date() - v1)/365)
v2
library("eeptools")
floor(age_calc(as.Date(v, "%d-%m-%Y"),units = "years"))
Sys.Date()
?age_calc
v <- c(17,18,NA,19,20,23,24,NA,NaN)
is.na(v)
sum(is.na(v))
v[is.na(v)]
v[!is.na(v)]
which(is.na(v))
which(!is.na(v))
log(-10)
13/0
10^1000000000000000000000000000000000000000000000000000000000000000
is.na(v)
is.nan(v)

version


# Apply
dir()
ozone = read.table("Ozone_data.csv", header = TRUE, sep = ",")
ozone
getwd()
complete.cases(ozone)
ozone_clean = ozone[complete.cases(ozone),]
ozone_clean
dim(ozone_clean)
ozone_clean
v3 = lapply(ozone_clean,sum)  #list
?lapply
v = sapply(ozone_clean,sum)   #simplify
v
dim(v)
summary(v)
str(v)
v1 = sapply(ozone_clean, unique)
v1
str(ozone)
str(v3)
v4 = sapply(ozone_clean, prod)
v4
apply(ozone_clean,2,sum)
apply(ozone_clean,1,sum)
a=array(1:8, c(2,2,2))
a
apply(a,3,sum)
apply(a,1,sum)
apply(a,c(1,2),sum)
sapply(ozone_clean,sum)  #give output in any datastructure
lapply(ozone_clean,sum)  #gives output only in list
tapply(ozone_clean$Ozone, ozone_clean$Month, sum)  #only apply funct() used on vector,
                                                    #used for grouping
aggregate(ozone_clean[,c(1,2,3,4)], list(ozone_clean$Month),summary) 
#used for grouping more than 1 column
apply(ozone_clean,2,sum)
age<-function(x){
  return(floor((Sys.Date() - as.Date(x,"%d-%m-%Y"))/365))
}
age("02-10-1991") 
v <- c("01-3-1991", "02-10-1992","14-10-1993")
v1<- c("01-3-1994", "02-10-1995","14-10-1996")
mapply(age,v1,v2)  #multiple
age_cal<-function(x,y){
  return(floor((x - y)/365))
}
mapply(age_cal, v,v1)

loop <- function(x){
  x=2
  for(i in 1:10){
    x=x+1
    print(x)
    }
return(x)
}
loop()


mean_var<- function(x){
  y <- mean(x)
  z <- var(x)
  v <- c(y,z)
  names(v) <- c("mean","var")
  return(v)
}
mean_var(c(1,2,3,4,5,6,7,9))
mean_var(1)

#tapply
tapply(ozone_clean$Ozone, ozone_clean$Month, sum)
aggregate(ozone_clean[,c(1,2,3,4)], list(ozone_clean$Month),summary)
