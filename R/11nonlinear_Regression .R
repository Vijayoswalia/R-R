######################################################################################################
## Non linear relationship is used in lot of disciplines as biology, microbiology, chemistry etc.
## R has nls package to perform non linear regression

##Step 1: Define the function 
(It is possible that there are two functions for entire range of y
x=y  where y<0.6
x=Y^2 where Y>0.6
x=log(y) 
x=e^y
x=y^y+y+a


x<-c(3,7,11,15,17,20,23,27,32,35,40,50,60,70,80,90,100,110)
y<-c(9,45,120,230,290,410,530,740,1000,1300,1650,2550,3690,4850,6300,7700,10100,13300)

data<-cbind(x,y)

##apply(data,2,mean)
x          y 
43.88889 3045.22222


##apply(data,2,sd)
x          y 
33.54346 3919.50548

##apply(data,2,var)
x            y 
1125.163 15362523.242

##cov(data[,1],data[,2])
[1] 126269.8  ## very high value

##cor(data[,1],data[,2])
[1] 0.9604182  ## very strong correlation

scatterplot(x,y)

############################################################################################################
linear regression
linear<-lm(y~x-1)
############################################################################################################
##Call:
lm(formula = y ~ x - 1)

Coefficients:
    x  
84.62

###summary

Residuals:
    Min      1Q  Median      3Q     Max 
-1734.6 -1512.5 -1110.8  -488.8  3992.3 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
x   84.615      6.848   12.36 6.42e-10 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1588 on 17 degrees of freedom
Multiple R-squared:  0.8998,	Adjusted R-squared:  0.8939 
F-statistic: 152.7 on 1 and 17 DF,  p-value: 6.421e-10

## plot
plot(y,resid(linear))   ## plot the residuals, they are not random, ie they have pattern
############################################################################################################
nonlinear<-lm(sqrt(y)~x-1)
############################################################################################################

Call:
lm(formula = sqrt(y) ~ x - 1)

Coefficients:
    x  
1.009
##summary
Residuals:
    Min      1Q  Median      3Q     Max 
-3.0677 -0.3959 -0.0836  0.0610  4.3267 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
x 1.009081   0.005954   169.5   <2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.381 on 17 degrees of freedom
Multiple R-squared:  0.9994,	Adjusted R-squared:  0.9994 
F-statistic: 2.872e+04 on 1 and 17 DF,  p-value: < 2.2e-16

## plot
plot(sqrt(y),resid(nonlinear))   ## plot the residuals, they are not random





