## Data frame is two dimensional data structure with row and column like structure


kids<-c("Jack","Jill")
age<-c(10,12)

child<-c("Jack","Bill")
class<-c(3,5)


d1 <-data.frame(kids, age, stringsAsFactors=FALSE)

d2 <-data.frame(child, class, stringsAsFactors=FALSE)


d  ## will print d which is a dataframe

##################################################################################
Functions - merge, unique, sort
##################################################################################

## Merge function to merge two data frames

d<-merge(d1,d2)
##merge function assumes that dataframe have one or more column in common.

merge(d1,d2,by.x="kids",by.y="child")
merge(d1,d2,by.x="kids", by.y="child",all=FALSE)  ## inner join
merge(d1,d2,by.x="kids", by.y="child",all=TRUE)   ## outer join
merge(d1,d2,by.x="kids", by.y="child",all.x=TRUE)  ## Left outer join
merge(d1,d2,by.x="kids", by.y="child",all.y=TRUE)  ## right outer join

## Add the conditions for the conditional access of dataframe

##where d1 has columns=kids, ages and d2= child, class

## find a function which can give those rows which are not matching
###################################################################
###############
## Uploading file in  R
##################################################################################

# If we upload the data from a file it will create a data frame

airquality<-read.table("Ozone_data.csv",  ## the name of file
header=TRUE,       ## whether header is present or not
sep=",",                  ## separator of file 
quote="\"",            ## the character used to cite the variables of mode character
dec=".",                 ## the character used for decimal point
nrows=5,               ## the maximum number of lines to read
skip = 1,                ## the number of lines to be skipped
fill = TRUE,           ## if TRUE then blanks needs to be added 
strip.white=TRUE,  ## delete extra space before and after character variable
blank.lines.skip=TRUE)

## When this file is loaded lot of NA will come in the file.
## To clean the NA, following methods can be adopted. 
## complete.cases will return a logical vector indicating which cases are complete.

airquality<-read.table("/home/hadoop/Ozone_data.csv",header=TRUE, sep=",")
airquality_clean<-airquality[complete.cases(airquality),]


## try to answer following questions


1)Extract first two rows of data frame
airquality[1:2,1:6]
2)How may observations are in this data frame
dim(airquality)
3)What is the value of Ozone in 47th row?
airquality$Ozone[[47]]
4)Extract the rows where Ozone value is above 31 and  temp value are above 90.
airquality[airquality$Temp>90&&airquality$Ozone>31,1:6]
Take the mean of Solar.R, use function mean.

crime<-read.table("/home/hadoop/crime.csv",header=TRUE, sep=",")
## It will load the four columns and 50 rows.
## column are state, population, murder,robbery
1) Extract those rows where population>5000000
Crime[crime$Population<5000000,]
2) Extract the name of states where murder>6
Crime[crime$Murder>6,1]
3) Extract the name of states where the number of murder is between 3 and 6. 
Crime[Crime$Murder>3 & Crime$Muder <6 ,1]
4) mean(Crime[Crime$Population>5000000,2])
5) The name of state with maximum number of crime.
Crime[Crime$Murder==max(Crime$Murder),1]
6) The name of state with maximum number of robbery.
Crime[Crime$Robbery==max(Crime$Robbery),1]





