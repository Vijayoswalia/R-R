## Read the datafile.

soil_svm <- read.table("/home/hadoop/Nikita/soil_SVM.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)

summary(soil_svm)

soil_svmn<-soil_svm[,-1]   ## remove the first column
soil_svmnn[,1]=soil_svmn[,11]  ## copy last column to first one
soil_svmn$class<-NULL  ## remove the last column

 summary(soil_svmn)
                                                                                                                                                                   
 
## Since the measurement of data is different it needs to be normalized

install.packages("tabplot")
library(tabplot, pos=4)
tableplot(Soil)
 
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
chart.Correlation(Soil[,2:8],col=Soil$f)


## for running support vector machine
## for this input is soil data which has 9 variable and 1 class variable
## SVM learner require all features to be numneric
## Generally we need to normalize the data but this svm package will perform this activity.
## Now we need to divide the data into testing and training phase

test_index<-sample(nrow(soil_svmn),200)
soil_stest<- soil_svmn[test_index, ]
soil_strain<- soil_svmn[-test_index, ]

install.packages("kernlab")
install.packages("e1071")
library(e1071)
library(kernlab)

model<-ksvm(Type ~ .,data=soil_strain, kernel="vanilladot")
model<-ksvm(Type ~ .,data=soil_strain, kernel="polydot",c=1)

Soil_predict<-predict(model,soil_stest)
table(Soil_predict,soil_stest$Type)




