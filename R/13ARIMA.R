######################################################################################################################
   DATASET-1 - GERMAN UNEMPLOYMENT
######################################################################################################################

v<-c(60572,52461,47357,48320,60219,84418,119916,124350,87309,57035,39903,34053,29905,28068,26634,29259,38942,65036,110728,108931,71517,54428,42911,37123,
33044,30755,28742,31968,41427,63685,99189,104240,75304,43622,33990,26819,25291,24538,22685,23945,28245,47017,90920,89340,47792,28448,19139,16728,
16523,16622,15499)

german<-ts(v,start=c(1975,7),frequency=12)
plot(stl(german, s.window="period"))

######################################################################################################################
Lets plot the autocorrelation of this data
######################################################################################################################
plot(stl(german, s.window="period"))
acf(german)
pacf(german)

Lets try to model the linear trend
y=b0+b1t+e ( y is a function of time)
Partition your data into training and test
train.linear.trend<-tslm(train.ts~trend)
lm.linear.trend.pred<-forecast(train.linear.trend,h=4)

######################################################################################################################
                           Moving Average method OF DATA TO REVEAL THE TREND
######################################################################################################################
##Method1-Trailing method
install.package("smooth")
require(smooth)
require(Mcomp)
sma(german,12)  ## trailing moving average

##Time elapsed: 0.06 seconds
##Model estimated: SMA(12)
##Initial values were produced using backcasting.
##2 parameters were estimated in the process
##Residuals standard deviation: 29701.041
##Cost function type: MSE; Cost function value: 847557627.05
##Information criteria:
##     AIC     AICc      BIC 
##1197.183 1197.433 1201.047

## Method2- Center moving average
mat <- matrix(c(1,2,3,4),2,2)
layout(mat)
plot(rollmean(german,k=12,align="center"),col="blue")
plot(german,col="blue")
plot(rollmean(german,k=12,align="left"),col="blue")
plot(german,col="blue")

######################################################################################################################
                           Differencing method OF DATA TO REVEAL THE TREND
######################################################################################################################

mat <- matrix(c(1,2,3,4),2,2)
layout(mat)
plot(german,col="blue")
plot(diff(german,lag=1,differences=1)) ## Good for differencing the trend
plot(diff(german,lag=8,differences=1)) ## Good for differening the seasonality



######################################################################################################################
                           Regression TO fit linear models to time series including linear trend 
######################################################################################################################

fit<-tslm(german~trend)
plot(forecast(fit,h=6))

######################################################################################################################
                           Regression TO fit linear models to time series including exponential trend 
######################################################################################################################

fit<-tslm(german~exp(trend))
plot(forecast(fit,h=6))

######################################################################################################################
                           Regression TO capture seasonality
######################################################################################################################

fit<-tslm(german~season,lembda=0)
plot(forecast(fit,h=72))









