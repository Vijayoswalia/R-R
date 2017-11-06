## Factor might be viewed as a  vector but they spectify a discrete classification of the components of other vectors

##################################################################################
## Method 1 converting vector to factor
##################################################################################


x <-c(1,2,1,3,4,2,1,2)
xf<-facror(x)

> x1
[1] 1 2 1 3 4 2 1 2
Levels: 1 2 3 4


> str(x1)
 Factor w/ 4 levels "1","2","3","4": 1 2 1 3 4 2 1 2


> length(x1)
[1] 8
## It will be determined by number of values in xf


##################################################################################
## Method 2
##################################################################################


x<-c(1,2,1,3,2,1,2)
xff<-factor(x,levels=c(1,2,3,4),labels=c("Quarter1","Quarter2","Quarter3","Quarter4"))



##by default it will set levels as per data but we can also set levels as per our requirement and later on add it in data.
## but we can not add a value in data which is not existing in levels

xff[6]<-4 ## This is fine
xff[6]<-5 ## it will error out





##################################################################################
## ts is a function that create timeseries data
##################################################################################

ts(data, start, end, frequency, deltat, ts.eps, class, names)

data = vector or matrix
start =  time of the first observati
end = the time of last observation
frequency = number of observation per unit of time
deltat= fraction of sampling period between successive observation
class = class to be given to result
names= vector of names

ts(data =NA, start=1, end=, frequency=1, deltat = 1, ts.eps = getOption(“ts.eps”), class, names)

ts(1:10,start=2000, frequency=1) ## yearly data
ts(1:24,start=2000, frequency=12 ,calender=TRUE) ## monthly data
ts(1:12,start=2000, frequency=4) ## quaterly data
ts(1:24,start=2000, frequency=24) ## 15 days data
ts(1:52,start=2000, frequency=52) ## 15 days data


plot(t)
plot(z, plot.type = "single", lty = 1:3)



