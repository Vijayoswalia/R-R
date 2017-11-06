## Decision tree build a model in the form of tree structure.
## the classification of data begin at root node where it is passed through various decisions in the tree
##  C 5.0 decision tree algorithm.
## initially J Ross wrote ID3, which was modified to C 4.5 and later 5.0 was published.

## C 5.0 uses the entropy for measuring the purity. The entropy of data indicates how mixed the class values are.
## 0 shows that sample is homogenous and 1 is for disorder.

Entropy(s) = sum from 1 to c(-p log(p)

let say we have partition of data with two classes 60 % and 40% so entropy is 

Entropy before ->-0.60 log2(0.60) - 0.40 * log2(0.40)
=0.97

let us find the entropy of left child and right child

entropy of left child = (5 cases) = 0/5 log(0/5) + 5/5(log(5/5)
entropy of right child = (5 cases) = 1/5(log (1/5) + 4/5(log(4/5))


entroy after division = 5/10 * entropy of left child + 5/10 entropy of right child

information gain= entropy before - entropy after.


Entropy(s) = sum(w(i) * Entropy(P(i)))
w(i) is the number of example lying in each partition and multiplying it with entropy of that class.


## download the data credit.csv
credit<- read.csv("credit.csv")
str(credit)
summary(credit)
table(credit)

set.seed(12345) ## it will set the seed to generate the random number

rand_num<-runif(1000) ## it will generate the 1000 random numbers
random<-order(rand_num) ## it will return the vector of position number.
credit_random<-credit[random,]

eg order(c(500,700, 10, 125,1000)) with return  3,4,1,2,5 


credit_train<-credit_rand[1:900, ]
credit_test<-credit_rand[901:1000, ]

table(credit_train$default)
table(credit_test$default)

install.packages("c50")
library(c50)

## credit_train$default is the class variable
credit_model <- c5.0(credit_train[-17], credit_train$default)

credit_model

summary(credit_model)

credit_pred<- predict(credit_model, credit_test)

library(gmodels)
CrossTable(credit_test$default, credit_pred, prop.chisq = FALSE, prop.c= FALSE, prop.r = FALSE,
dnn= c('actual default', 'predicted default'))

























