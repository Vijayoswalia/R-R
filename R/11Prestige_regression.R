## Prestige data of Canadian Occupations is present in car package/
## It has following columns
## education :Average education of occupational incumbents, years, in
## income :Average income of incumbents, dollars, in 1971.
## women :Percentage of incumbents who are women.
## prestige: Pineo-Porter prestige score for occupation, from a social survey conducted in the mid-1960s.   
## Type of occupation:  A factor with levels (note: out of order): 
## 'bc', Blue Collar; 'prof', Professional, Managerial,and Technical; 'wc', White Collar.  

scatterplot(Prestige$income,Prestige$education)

## Regression

fit<-lm(income~education,data=Prestige)
plot(Prestige$income,resid(fit))

Residual standard error: 3483 on 100 degrees of freedom
Multiple R-squared:  0.3336,	Adjusted R-squared:  0.3269

########################################################################
## First Regression
########################################################################

fit<-lm(income~education-1,data=Prestige)
plot(Prestige$income,resid(fit))

Call:
lm(formula = income ~ education - 1, data = Prestige)

Coefficients:
education  
      649

Residual standard error: 3537 on 101 degrees of freedom
Multiple R-squared:  0.8067,	Adjusted R-squared:  0.8048 

########################################################################
## Second Regression
########################################################################

x<-Prestige$income
y2<-Prestige$education*Prestige$education
fit<-lm(x~y2-1)

Call:
lm(formula = x ~ y2 - 1)

Coefficients:
   y2  
52.63

Residual standard error: 3485 on 101 degrees of freedom
Multiple R-squared:  0.8122,	Adjusted R-squared:  0.8104 

plot(x,resid(fit))
########################################################################
## Third Regression
########################################################################

x<-Prestige$income
y3<-Prestige$education*Prestige$education*Prestige$education
fit<-lm(x~y3-1)

Call:
lm(formula = x ~ y3 - 1)

Coefficients:
   y3  
3.823


Residual standard error: 3864 on 101 degrees of freedom
Multiple R-squared:  0.7692,	Adjusted R-squared:  0.7669 

plot(x,resid(fit))
########################################################################
## Fourth Regression
########################################################################

fit<-lm(log(income)~education,data=Prestige)
plot(Prestige$income,resid(fit))

Call:
lm(formula = log(income) ~ education, data = Prestige)

Coefficients:
(Intercept)    education  
     7.3847       0.1188

Residual standard error: 0.4972 on 100 degrees of freedom
Multiple R-squared:  0.3004,	Adjusted R-squared:  0.2934 

plot(log(income),resid(fit))
########################################################################
## fifth Regression
########################################################################
fit<-lm(income~exp(education)-1,data=Prestige)
Call:
lm(formula = income ~ exp(education) - 1, data = Prestige)

Coefficients:
exp(education)  
      0.002526

Residual standard error: 3864 on 101 degrees of freedom
Multiple R-squared:  0.7692,	Adjusted R-squared:  0.7669

plot(Prestige$income,resid(fit))

########################################################################
## sixth Regression (Best one)
########################################################################
x<-Prestige$income
y<-Prestige$education*Prestige$education*Prestige$education*Prestige$education

lm(x~y-1)

Residuals:
    Min      1Q  Median      3Q     Max 
-6847.9  -670.4  2469.2  4580.9 19984.2 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
z  0.26092    0.01655   15.77   <2e-16 ***

Residual standard error: 4323 on 101 degrees of freedom
Multiple R-squared:  0.7111,	Adjusted R-squared:  0.7083 

plot(Prestige$income,resid(fit))

########################################################################
scatterplotMatrix(~ prestige + income +education + women, span =0.7, data = Prestige)
########################################################################


