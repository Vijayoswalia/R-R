## Read the datafile.

soil_ann <- read.table("/home/hadoop/Nikita/soil_ANN.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)

summary(soil_ann)

 Seq                    Type         depth             ph          condictivity       carbon..     
 Min.   :   1.0   Bixa         : 18   Min.   :1.000   Min.   : 5.600   Min.   :  40.0   Min.   :0.0150  
 1st Qu.: 254.2   BRC Leg-15   : 16   1st Qu.:1.000   1st Qu.: 8.200   1st Qu.: 265.0   1st Qu.:0.1200  
 Median : 507.5   BRC Leg-25   : 16   Median :2.000   Median : 8.810   Median : 410.0   Median :0.2350  
 Mean   : 507.5   BRC-Nonleg-15: 16   Mean   :2.427   Mean   : 8.804   Mean   : 499.1   Mean   :0.3949  
 3rd Qu.: 760.8   BRCnonleg-25 : 16   3rd Qu.:3.000   3rd Qu.: 9.700   3rd Qu.: 660.0   3rd Qu.:0.5887  
 Max.   :1014.0   KGRFB-Grass  : 16   Max.   :4.000   Max.   :11.500   Max.   :1720.0   Max.   :2.3500  
                  (Other)      :916                                                                     
    Nitrogen        Phosphorus      Potassium           WHC           Porosity             class    
 Min.   :  3.98   Min.   : 4.00   Min.   :  60.0   Min.   :27.60   Min.   :29.30   highfertile:137  
 1st Qu.: 17.00   1st Qu.:14.43   1st Qu.: 200.0   1st Qu.:42.00   1st Qu.:40.00   lowfertile :440  
 Median : 30.52   Median :19.84   Median : 290.0   Median :46.33   Median :44.50   MedFertile :437  
 Mean   : 37.08   Mean   :24.29   Mean   : 379.9   Mean   :47.37   Mean   :44.96                    
 3rd Qu.: 50.40   3rd Qu.:32.30   3rd Qu.: 400.0   3rd Qu.:52.54   3rd Qu.:49.00                    
 Max.   :185.00   Max.   :82.42   Max.   :3000.0   Max.   :76.80   Max.   :65.72                    

     
soil_new<-soil_ann[,-1]   ## remove the first column
soil_new[,1]=soil_new[,11]  ## copy last column to first one
soil_new$class<-NULL  ## remove the last column

## It will not work.
##soil_new$Type<-factor(soil_new$Type, levels=c("highfertile","lowfertile","MedFertile"), labels=c(1,3,2))

## Since the measurement of data is different it needs to be normalized

install.packages("tabplot")
library(tabplot, pos=4)
tableplot(soil_new)
 
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
chart.Correlation(Soil[,2:10],col=Soil$f)




## for running Artificial Neural Network
## for this input is soil data which has 9 variable and 1 class variable
## First we need to normalize the data as the data has different range.

normalize <- function(x)
{
return ( (x-min(x) ) / ( max(x)-min(x) ) )
}


soil_n<-as.data.frame(lapply(soil_new,normalize))


## Generally we need to normalize the data but this svm package will perform this activity.
## Now we need to divide the data into testing and training phase

test_index<-sample(nrow(soil_n),200)
soil_test<- soil_n[test_index, ]
soil_train<- soil_n[-test_index, ]


install.packages("neuralnet")
library("neuralnet")

soil_model<-neuralnet(Type ~ depth + ph + conductivity + carbon + nitrogen + potassium + phosphorus + WHC + porosity , data = soil_train, hidden=5)

plot(soil_model)

model_results<-compute(soil_model,soil_test[2:10])
predicted_class<-model_results$net.result
cor(predicted_class,soil_test$Type)


0     5     7
.48, .52, .55




