#############################################################################
## This is the data set of marks of 10 students in maths and stat.
## we are trying to find out relationship between two variable.
## We are checking if there exist a relation between maths marks and stat marks
## or in other words if a student scores good in maths then he will also score in Stat.
Maths_num<-c(30,40,50,60,65,68,70,75,80,90)
Stat_num<-c(50,60,65,70,75,80,82,85,90,95)

## Basic stat functions
mean(Maths_num)
median(Maths_num)
quantile(Maths_num)
min(Maths_num)
max(Maths_num)

## Standard Deviation

sd(Maths_num)
sd(Stat_num)
summary(Maths_num)

logistic growth model.



## Graph to see the data

stripchart(Maths_num, method="Stack",main="Maths Marks", xlab="Marks")

## Histogram + stripchart + boxplot + plot
hist(Maths_num,main="Maths Marks",xlab="Maths Marks", ylab="Number of Students",ylim=c(0,6),xlim=c(0,100))
?stripchart
stripchart(Maths_num,add=TRUE,at=6)
boxplot(Maths_num,horizontal=TRUE,at=6,add=TRUE,axes=FALSE)
plot(Maths_num,Stat_num,main="Variation of Maths vs Stat",xlab="Maths",ylab="Stat")

## variance, covariance, correlation
var(Maths_num, Stat_num, na.rm = FALSE)
cov(Maths_num, Stat_num,   method = c("pearson", "kendall", "spearman"))
cor(Maths_num, Stat_num,  method = c("pearson", "kendall", "spearman"))

## We plot the data using scatter plot and notice that it looks linear.
## then we use least square regression to determine the line.
## we need to decide what is explanatory and what is response variable.
## least square regression is done with lm command.
## here we take maths as explanatory and stat as response.
## stat= slope(maths) + intercept
fit <- lm(Stat_num ~ Maths_num)
fit
summary(fit)
## fit contains the regression information of analysis on writting fit
## on prompt we get following.
#############################################################################
Call:
lm(formula = Stat_num ~ Maths_num)

Coefficients:
(Intercept)    Maths_num
    27.5269       0.7591
#############################################################################

## plot the two dataset along with regression line.

plot(Maths_num,Stat_num,main="Variation of Maths vs Stat",xlab="Maths",ylab="Stat")
abline(lm(Stat_num ~ Maths_num),cex=1,pch=5)


attributes(fit)
## it will show all the attributes of regression fit

$names
 [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"
 [7] "qr"            "df.residual"   "xlevels"       "call"          "terms"         "model"

$class
[1] "lm"


## display all the attributes

fit$coefficients ## It will give coefficients
fit$residuals    ## It will give residuals
fit$effects      ##
fit$rank         ## the numeric rank of the fitted linear model.
fit$fitted.value ## the fitted mean values.
fit$assign
fit$qr
fit$df.residual  ## the residual degrees of freedom.
fit$xlevels      ## (only where relevant) a record of the levels of the factors used in fitting.
fit$call
fit$terms
fit$model  ## it will give data

summary(fit)
## to see the summary of linear regression

#############################################################################


Call:
lm(formula = Stat_num ~ Maths_num)

Residuals:
   Min     1Q Median     3Q    Max
-3.074 -0.757  0.119  1.214  2.108

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept) 27.52695    2.06039   13.36 9.42e-07 ***
Maths_num    0.75913    0.03161   24.01 9.64e-09 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.742 on 8 degrees of freedom
Multiple R-squared:  0.9863,	Adjusted R-squared:  0.9846
F-statistic: 576.6 on 1 and 8 DF,  p-value: 9.644e-09


################################################################################
################################################################################
################################################################################

Assigmnent1 : Now try to to regression analysis of following data.

# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# The resposne vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

Assignment2: To use regression for predicting a value.

## Prediction of regression analysis
# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# The resposne vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)

# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)

## The answer is 76.22869

















