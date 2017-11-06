data(package = .packages(all.available = TRUE))
## install the package if you dont already have it
install.packages("e1071")

## load package
library(e1071)

## train model
m<-naiveBayes(traindata[,1:3],traindata(,4]

## evaluate test data
predict(m,testdata[,1:3])


naiveBayes{e1071}

## Naive Bayes Algorithm
## It computes the posterior proabilities of a categorical class variable given independent predictor variables using the Bayes Rule.

naiveBayes(formula, data, ..., subset, na.action = na.pass)
naiveBayes(x,y, ...)

## x : A numeric matrix, or a data frame of categorical and numeric valuesY
## y : class vector

## formula  :formula A formula of the form class ~ x1 + x2 +.... Interactions are not allowed.
## data     :Either a data frame of predictors or a contingency table
## subset   : As index vector specifying the cases to be used in training sample.
## na.action : A functiont to specify the action to be taken if NAs are found.

## we can take saveral data models to perform the task

## The first one is iris.

data(iris)
m <- naiveBayes(Species ~ ., data = iris)


One of the key problems of predictive analytics is to classify entities or events based on a knowledge of their attributes.  An example: one might want to classify customers into two categories, say, ‘High Value’ or ‘Low Value,’ based on a knowledge of their buying patterns.  Another example: to figure out the party allegiances of  representatives based on their voting records.  And yet another:  to predict the species a particular plant or animal specimen based on a list of its characteristics. Incidentally, if you haven’t been there already, it is worth having a look at Kaggle to get an idea of some of the real world classification problems that people tackle using techniques of predictive analytics.

To introduce the Naive Bayes algorithm, I will use the HouseVotes84 dataset, which contains US congressional voting records for 1984. The data set is in the mlbench package which is not part of the base R installation. You will therefore need to install it if you don’t have it already.  Package installation is a breeze in RStudio – just go to Tools > Install Packages and follow the prompts.


library(mlbench)
#set working directory if needed (modify path as needed)
setwd(“C:/R”)
#load HouseVotes84 dataset
data(“HouseVotes84”)

#barplots for specific issue
plot(as.factor(HouseVotes84[,2]))
title(main=”Votes cast for issue”, xlab=”vote”, ylab=”# reps”)
#by party
plot(as.factor(HouseVotes84[HouseVotes84$Class==’republican’,2]))
title(main=”Republican votes cast for issue 1″, xlab=”vote”, ylab=”# reps”)
plot(as.factor(HouseVotes84[HouseVotes84$Class==’democrat’,2]))
title(main=”Democrat votes cast for issue 1″, xlab=”vote”, ylab=”# reps”)

## function needed for imputation
#function to return number of NAs by vote and class (democrat or republican)
na_by_col_class <- function (col,cls){return(sum(is.na(HouseVotes84[,col]) &
HouseVotes84$Class==cls))}

#function to compute the conditional probability that a member of a party will cast
a 'yes' vote for
#a particular issue. The probability is based on all members of the party who
#actually cast a vote on the issue (ignores NAs).

p_y_col_class <- function(col,cls){
sum_y<-sum(HouseVotes84[,col]=='y' & HouseVotes84$Class==cls,na.rm = TRUE)
sum_n<-sum(HouseVotes84[,col]=='n' & HouseVotes84$Class==cls,na.rm = TRUE)
return(sum_y/(sum_y+sum_n))
}

#impute missing values.
for (i in 2:ncol(HouseVotes84)) 
{
if(sum(is.na(HouseVotes84[,i])>0)) 
{
c1 <- which(is.na(HouseVotes84[,i])& HouseVotes84$Class=='democrat',arr.ind = TRUE)
c2 <- which(is.na(HouseVotes84[,i])& HouseVotes84$Class=='republican',arr.ind =TRUE)
HouseVotes84[c1,i] <-ifelse(runif(na_by_col_class(i,'democrat'))<p_y_col_class(i,'democrat'),'y','n')
HouseVotes84[c2,i] <-ifelse(runif(na_by_col_class(i,'republican'))<p_y_col_class(i,'republican'),'y','n')
}
}

#divide into test and training sets
#create new col "train" and assign 1 or 0 in 80/20 proportion via random uniform
dist
HouseVotes84[,"train"] <- ifelse(runif(nrow(HouseVotes84))<0.80,1,0)
#get col number of train / test indicator column (needed later)
trainColNum <- grep("train",names(HouseVotes84))
#separate training and test sets and remove training column before modeling
trainHouseVotes84 <- HouseVotes84[HouseVotes84$train==1,-trainColNum]
testHouseVotes84 <- HouseVotes84[HouseVotes84$train==0,-trainColNum]
#train model
nb_model <- naiveBayes(Class~.,data = trainHouseVotes84)
nb_model
summary(nb_model)
str(nb_model)

#...and the moment of reckoning
nb_test_predict <- predict(nb_model,testHouseVotes84[,-1])
#confusion matrix
table(pred=nb_test_predict,true=testHouseVotes84$Class)



#fraction of correct predictions
mean(nb_test_predict==testHouseVotes84$Class)
#function to create, run and record model results
nb_multiple_runs <- function(train_fraction,n){
fraction_correct <- rep(NA,n)
for (i in 1:n){
HouseVotes84[,"train"] <- ifelse(runif(nrow(HouseVotes84))<train_fraction,1,0)
trainColNum <- grep("train",names(HouseVotes84))
trainHouseVotes84 <- HouseVotes84[HouseVotes84$train==1,-trainColNum]
testHouseVotes84 <- HouseVotes84[HouseVotes84$train==0,-trainColNum]
nb_model <- naiveBayes(Class~.,data = trainHouseVotes84)
nb_test_predict <- predict(nb_model,testHouseVotes84[,-1])
fraction_correct[i] <- mean(nb_test_predict==testHouseVotes84$Class)
}
return(fraction_correct)
}


#20 runs, 80% of data randomly selected for training set in each run
fraction_correct_predictions <- nb_multiple_runs(0.8,20)
fraction_correct_predictions
#summary of results
summary(fraction_correct_predictions)
#standard deviation
sd(fraction_correct_predictions)









 



























