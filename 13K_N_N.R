## we are going to utilize data of Breast Cancer Wisconsin Diagnostic
## available at http://archives.ics.uci.edu.ml
## we downloaded this file in wisc_bc_data.csv
## It contains 569 examples of cancer biopsies, each with 32 features. first one is identification number, other is cancer dianosis
## and rest 30 are numeric measurements. There are 3 values of each of below mean,standard error, worst
## Radius, Texture, Perimeter, Area, Smoothness, Compactness, Concavity, Concave points, Symmetry, Fractal dimension


wbcd <- read.csv("E:/Data Science/rWork/rProjects/R-R/R/Data/wisc_bc_data.csv")
wbcd <- read.table("E:/Data Science/rWork/rProjects/R-R/R/Data/wisc_bc_data.csv", header=TRUE, sep=",", na.strings="NA", dec=".",  strip.white=TRUE)

## str command shows the internal structure of the command
str(wbcd)

## the first variable is unique and if we consider this column then each row will be considered as distinct and classification will be overfitted.
wbcd <- wbcd[-1]
wbcd
##The next variable is diagnosis is important as it is the outcome. it indicate whether the example is from benign or malignant mass.
table(wbcd$diagnosis)

B   M
357 212

##########################################################################################################################
Now we can see that data range of radius and area is very different. so while calculating the distance they both will have
different impact hence we need to normaliz the data. For this we will write normalize function.
##########################################################################################################################

normalize <- function(x)
{
return ( (x-min(x) ) / ( max(x)-min(x) ) )
}

##Now we need to apply this function on all the 30 values of the dataframe.
## So we have normalized data in wbcd_n

summary(wbcd)
wbcd_n<-as.data.frame(sapply(wbcd[2:31],normalize))
## we can check this through wbcd_n
summary(wbcd_n)

## we will see that min and max value of each variable is 0 and 1 and rest are lying in between
## Now all 569 biopsies are labeled with a benign or malignant status. and we dont have test data.
## In this situation we devide our data into two parts. 469 records will be used for training and rest to simulate new patients.

wbcd_train <- wbcd_n[1:469,]
wbcd_test <- wbcd_n[470:569,]

## Since this data was not ordered so we just took 100 samples, In case data is in some ordered manner
## then we have to randomly select the test data.Right now training data and test data dont have target variables.

wbcd_train_labels <- wbcd[1:469, 1]
wbcd_test_labels <- wbcd[470:569, 1]

install.packages("class")
library(class)

wbcd_pred_3<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=3)
wbcd_pred_5<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=5)
wbcd_pred_7<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=7)
wbcd_pred_9<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=9)
wbcd_pred_11<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=11)
wbcd_pred_13<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=13)
wbcd_pred_15<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=15)
wbcd_pred_17<-knn(train=wbcd_train, test=wbcd_test, cl=wbcd_train_labels, k=17)

## Now next step is to evaluate how well the predicted classes in the pred vector match up with the known value in the wbcd_test_labels.
## for this we use crosstable function in the gmodels package.

install.packages("gmodels")
library(gmodels)

CrossTable(x=wbcd_test_labels, y= wbcd_pred_3,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_5,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_7,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_9,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_11,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_13,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_15,prop.chisq=FALSE)
CrossTable(x=wbcd_test_labels, y= wbcd_pred_17,prop.chisq=FALSE)
## this is the output of one CrossTable command


Cell Contents
|-------------------------|
|                       N |
|           N / Row Total |
|           N / Col Total |
|         N / Table Total |
|-------------------------|


Total Observations in Table:  100


                 | wbcd_pred
wbcd_test_labels |    Benign | Malignant | Row Total |
-----------------|-----------|-----------|-----------|
          Benign |        72 |         5 |        77 |
                 |     0.935 |     0.065 |     0.770 |
                 |     0.986 |     0.185 |           |
                 |     0.720 |     0.050 |           |
-----------------|-----------|-----------|-----------|
       Malignant |         1 |        22 |        23 |
                 |     0.043 |     0.957 |     0.230 |
                 |     0.014 |     0.815 |           |
                 |     0.010 |     0.220 |           |
-----------------|-----------|-----------|-----------|
    Column Total |        73 |        27 |       100 |
                 |     0.730 |     0.270 |           |




## Improving the model
## one variation is to use alternate method for normalization which is z-score standardization.
## In this z score standardization values are not compressed towards centre.
## It allow outliers to be weighted more heavily in the distance calculation.
## for this we can use scale() function.


















