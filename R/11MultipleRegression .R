#############################################################################
## download the dataset from internet.
## ozone.csv
## load the data
## clean the data
##########################################################################3

ozone <- read.csv("C:/R/Ozone_data.csv", header=TRUE, sep=",")

str(ozone)
summary(ozone)
hist(insurance$Ozone)


##########################################################################3
##Before fitting a model to data it is useful to see how the independent variable are
##related to dependent variable and each other

cor(insurance[c("age","bmi","children","charges")])

## None of correlation matrix are strong but age and bmi have moderate correlation
## and charges is related to all other variables.

pairs(insurance[c("age","bmi","children","charges")])
pairs.panels(insurance[c("age","bmi","children","charges")])

## It will generate the scatter plot of the intersection of each row and column.

##########################################################################3
## now perform the regression
## . can be used to spectify the all the data except mentioned.
rmodel <- lm(charges ~ age+children+sex+smoker+region, data= insurance)
or
rmodel <- lm(charges ~ ., data= insurance)

## rmodel contains the regression information of analysis 
## on prompt writting rmodel we get following.
#############################################################################
## Perform the prediction
############################################################################

-test)
predict <- predict(rmodel, insurance_test)














