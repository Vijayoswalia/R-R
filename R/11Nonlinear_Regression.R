############################################################
##Non linear regression between Home size and electricity consumption
############################################################
size<-c(1290,1350,1470,1600,1710,1840,1980,2230,2400,2930,3200)
kwh<-c(1182,1172,1264,1493,1571,1711,1804,1840,1956,1954,2000)

plot(size,kwh,main="Variation of consumption vs size",xlab="size",ylab="kwh",col="blue")


model=nls(kwh~a*size+b*(size*size),start=list(a=1,b=1))
model
plot(model)
############################################################
##Output of model
############################################################
Nonlinear regression model
  model: kwh ~ a * size + b * (size * size)
   data: parent.frame()
         a          b
 1.2031707 -0.0001764
 residual sum-of-squares: 74654

Number of iterations to convergence: 1
Achieved convergence tolerance: 1.368e-08

###########################################################
##Summary of model
############################################################

Formula: kwh ~ a * size + b * (size * size)

Parameters:
    Estimate Std. Error t value Pr(>|t|)
a  1.203e+00  5.027e-02  23.934 1.85e-09 ***
b -1.765e-04  2.048e-05  -8.615 1.22e-05 ***
---
Signif. codes:  0 ?***? 0.001 ?**? 0.01 ?*? 0.05 ?.? 0.1 ? ? 1

Residual standard error: 91.08 on 9 degrees of freedom

Number of iterations to convergence: 1
Achieved convergence tolerance: 1.368e-08

#get some estimation of goodness of fit
cor(kwh,predict(model))

#plot the fit
plot(size,kwh,main="Variation of consumption vs size",xlab="size",ylab="kwh",col="blue")
lines(size,predict(model),col="red")

############################################################
##Logarithmic regression between x and y
############################################################
x<-c(0.12,	0.18,	0.25,	0.37,	0.51,	0.76,	1.12,	1.71,	2.63,	3.84,	5.85,	8.96)
y<-c(-2.51,	-2.22,	-1.53,	-1.01,	-0.37,	0,	0.48,	1.05,	1.57,	1.98,	2.48,	3.02)

plot(x,y,main="Variation of x vs y",xlab="x",ylab="y",col="blue")

model=nls(y~a*log(x),start=list(a=1))
model
############################################################
Nonlinear regression model
  model: y ~ a * log(x)
   data: parent.frame()
    a
1.295
 residual sum-of-squares: 1.046

Number of iterations to convergence: 1
Achieved convergence tolerance: 4.42e-09

summary(model)
############################################################
Formula: y ~ a * log(x)

Parameters:
  Estimate Std. Error t value Pr(>|t|)
a  1.29548    0.06595   19.64 6.49e-10 ***
---
Signif. codes:  0 ?***? 0.001 ?**? 0.01 ?*? 0.05 ?.? 0.1 ? ? 1

Residual standard error: 0.3083 on 11 degrees of freedom

Number of iterations to convergence: 1
Achieved convergence tolerance: 4.42e-09

#get some estimation of goodness of fit
cor(y,predict(model))

#plot the fit
plot(x,y,main="Variation of x vs y",xlab="x",ylab="y",col="blue")
lines(x,predict(model),col="red")
