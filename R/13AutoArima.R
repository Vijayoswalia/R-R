install.packages("/home/hadoop/ape_4.0.tar.gz", repos=NULL,type="source")
install.package("forecast")
install.package("fracdiff")
install.package("timeDate")
install.package("RcppArmadillo")
install.packages("fpp")
install.packages("tseries") ## time series function
install.packages("expssmooth") ## exponential smoothing
install.packages("lmtest")

######################################################################################################################
   DATASET-1 - GERMAN UNEMPLOYMENT
######################################################################################################################

## Data of German unemployment from 1975 to 1979 september)
v<-c(60572,52461,47357,48320,60219,84418,119916,124350,87309,57035,39903,34053,29905,28068,26634,29259,38942,65036,110728,108931,71517,54428,42911,37123,
33044,30755,28742,31968,41427,63685,99189,104240,75304,43622,33990,26819,25291,24538,22685,23945,28245,47017,90920,89340,47792,28448,19139,16728,
16523,16622,15499)

german<-ts(v,start=c(1975,7),frequency=12)

## to decompose this data into various componenets

plot(stl(german, s.window="period"))

######################################################################################################################
   DATASET-2 AIRPASSENGERS
######################################################################################################################

library(forecast)
data(AirPassengers)
AP <- AirPassengers

class(AP)
start(AP);
end(AP);
frequency(AP)
summary(AP)

## Plot the time series
plot(AP, ylab= "Passengers (1000's)")
## decompose the time series
plot(decompose(AirPassengers))
## Fuller test for the stationarity of the time series.
apts <- ts(AirPassengers, frequency=12)
f<- decompose(apts)
library(tseries)
adf.test(apts, alternative ="stationary", k=12)
##
##  Augmented Dickey-Fuller Test
##
## data:  apts
## Dickey-Fuller = -1.5094, Lag order = 12, p-value = 0.7807
## alternative hypothesis: stationary
##Rejecting the null hypothesis suggests that a time series is stationary
## Here p-value is 0.7 hence we do not reject null hypothesis and time series is non stationary

#############################################################################################################3
 MODEL DATA USING ARIMA model
#############################################################################################################3

findbest <- auto.arima(AirPassengers)
findbest #Check the arma values: [1]  0  1  0  0 12  1  1

## Series: AirPassengers
## ARIMA(0,1,1)(0,1,0)[12]
##
## Coefficients:
##           ma1
##       -0.3184
## s.e.   0.0877
##
## sigma^2 estimated as 137.3:  log likelihood=-508.32
## AIC=1020.64   AICc=1020.73   BIC=1026.39

  plot(forecast(findbest,h=20))


#############################################################################################################3
Create ARIMA prediction model
#############################################################################################################3

fit <- arima(AirPassengers, order=c(0, 1, 1), list(order=c(0, 1, 0), period = 12))
fit


## Series: AirPassengers
## ARIMA(0,1,1)(0,1,0)[12]
##
## Coefficients:
##           ma1
##       -0.3184
## s.e.   0.0877
##
## sigma^2 estimated as 137.3:  log likelihood=-508.32
## AIC=1020.64   AICc=1020.73   BIC=1026.39

#############################################################################################################3
Compute prediction intervals of 95% confidence level for each prediction
#############################################################################################################3


fore <- predict(fit, n.ahead=24)
# calculate upper (U) and lower (L) prediction intervals
U <- fore$pred + 2*fore$se # se: standard error (quantile is 2 as mean=0)
L <- fore$pred - 2*fore$se
# plot observed and predicted values
ts.plot(AirPassengers, fore$pred, U, L, col=c(1, 2, 4, 4), lty=c(1, 1, 2, 2))
library(graphics)
legend("topleft", c("Actual", "Forecast", "Error Bounds (95% prediction interval)"),
       col=c(1, 2, 4),lty=c(1, 1, 2))

#############################################################################################################3
Residual Analysis
#############################################################################################################3

 res <- residuals(fit)  # get residuals from fit
 # check acf and pacf of residuals
 acf(res)
 pacf(res)

The sample autocorrelation function (ACF) for a series gives correlations between the series xt and
lagged values of the series for lags of 1, 2, 3, and so on.
The lagged values can be written as xt-1, xt-2, xt-3,and so on.
The ACF gives correlations between xt and xt-1, xt and xt-2, and so on.
The ideal for a sample ACF of residuals is that there aren’t any significant correlations for any lag.

The partial autocorrelation function (PACF) plays an important role in data analyses aimed at
identifying the extent of the lag in an autoregressive model. By plotting the partial autocorrelative
functions one could determine the appropriate lags p in an AR (p) model or in an extended ARIMA (p,d,q) model.


The above figure shows the ACF of the residuals for a model. The “lag” (time span between observations) is
shown along the horizontal, and the autocorrelation is on the vertical. The red lines indicated bounds for
statistical significance. This is a good ACF for residuals. Nothing is significant;
that’s what we want for residuals.

The lag at which the PACF cuts off is the indicated number of AR terms (i.e. p).
The lag at which the ACF cuts off is the indicated number of MA terms (i.e. q)

#############################################################################################################3
Test for stationarity using ADF test
#############################################################################################################3

To cross check the stationarity of timeseries, use Augemented Dickey-Fuller test (from tseries package).
Rejecting the null hypothesis suggests that a time series is stationary


library(tseries)
adf.test(fit$residuals, alternative ="stationary")

##
##  Augmented Dickey-Fuller Test
##
## data:  fit$residuals
## Dickey-Fuller = -5.0027, Lag order = 5, p-value = 0.01
## alternative hypothesis: stationary


#############################################################################################################3
                          BASIC METHOD
#############################################################################################################3
#Average Method: Forecast of all future values is equal to mean of historical data.

meanf(x,h=20)

#Naive Method: Forecast equal to last value

naive(x,h=20)

#seasonal naive method: forecast equal to last value from same season.

snaive(x,h=20)

#Drift method, forecast=last value+average change

#############################################################################################################3
                          DIFFERENT PLOTTING METHOD
#############################################################################################################3

beer<-window(ausbeer, start=1992)
plot(beer)
seasonplot(beer)
monthplot(beer)

Trend: when there is a long-term increase or decrease in the
Seasonal: pattern exists when a series is influenced by seasonal factors
Cyclic:pattern exists when data exhibit rises and falls that are not of fixed
period (duration usually of at least 2 years).


Covariance and correlation: measure extent of linear relationship between
two variables (y and X)
Autocovariance and autocorrelation: measure linear relationship between
lagged values of a time series y.
We measure the relationship between: yt and yt-1
yt and yt-2
yt and yt-3 etc.

lag.plot(beer,lags=9,do.lines=FALSE)

Residuals in forecasting: difference between observed value and its forecast
based on all previous observations: et = yt - yˆtjt-1.
Assumptions
1.  uncorrelated. If they aren’t, then information left in residuals
that should be used in computing forecasts.
2.  have mean zero. If they don’t, then forecasts are biased.
Useful properties (for Forecast intervals)
3.  have constant variance.
4.  are normally distributed.

white noise :

White noise data is uncorrelated across time with zero mean and constant
variance.
(Technically, we require independence as well.)
Think of white noise as completely uninteresting with no predictable
patterns.

## statistical test for white noise
Sampling distribution of autocorrelations of white noise must lie within 1:96=pT .

