## Probability

##Sample space: The collection of all possible outcomes of an experiment

If we toss a die we get any number1,2,3,4,5,6. This is a sample space

##Event: It is a subset of samplespace S. It can be one or more outcome. 

##Outcome: The result of one trial





## Statistics 

## Sample: A subset of the population from which data is actually collected

## Population: The entire set of possible observations in which we are interested

## Descriptive Statistics: Methods for summarizing data (e.g., mean, median, mode, range, variance, graphs)

## Measures of Central Tendency

## Mean: The numerical average; calculated as the sum of all of the data values divided by the number of values; represented as mean.
## Median: The central value where half of the value are less than median and rest half are greater.
## Mode: It is the value which occurs most.
 v<-c(2,4,6,8,10)
 mean(v) 
 median(v)
 mode(v)
 summary(v)

##Standard deviation: Roughly the average difference between individual data and the mean; for a sample, represented as s, s=√∑(x−x)^2/(n−1)
  sd(v)
## Variance :s^2
  var(v)
## Quartile
## Decile
## Percentile

## Skewness 
If data is skewed very much then might be possible that there is a bias or an outlier in the data

## Kurtosis

## Inferential statistics: Methods for using sample data to make conclusions about a population

## Probability

Mutually Exclusive event

 Theorem of Addition

Overlapping event

Complementary event

Independent event

Theorem of Multiplication

Non Independent event

  Bayes Theorem


## Sampling
##
## R is very efficint in generating sample as per our requirements
sample(data, size of sample, replace=TRUE/FALSE, prob=NULL)

1) sample(1:40,5)

## It will pick five numbers from sample

2) sample(c("H","T"), 10, replace=T)

replace means that value can be reused.

## It will simulate the ten Head and Tail of coin tossing.

3) sample(c(succ,fail),10, replace=T, prob=(.9,.1))

## Random Variable: Whose value is determined by the outcome of a random experiment.

##Discrete : A random variable that can take finite or countably infinite numbers of values are called discrete randome variable.

##Continuous: A random variable that can take noncountably infinite number of values are called nondiscrete random variable.



## Probability Distribution

A probility distribution explains how the outcomes of an experiment are expected to vary.
example if we toss a die then probability of each number is 1/6. Now if die is tossed 120 times 
then we expect each number to come 20 times.

##Discrete random variable- They take only discrete values ( rolling die, number of cakes sold in a day)
For a discrete random variable, probability distribution is a table or graph which gives each possible and its probability.
eample - Flip 4 coins , now give the probability distribution of 0,1,2,3,4 heads
0     1     2     3     4
1/16  4/16  6/16  4/16  1/16
  
##Discrete continuous variable- They can take any value in the range ( like height/weight/distance)
continuous random variable is such that all values (to any number of decimal places) within some interval are possible outcomes. A continuous random variable has an infinite number of possible values so we can't assign probabilities to each specific value. If we did, the total probability would be infinite, rather than 1, as it is supposed to be.
To describe probabilities for a continuous random variable, we use a probability density function. 
Probability density function (PDF): A curve such that the area under the curve within any interval of values along the horizontal gives the probability for that interval

Cumulative distribution: A listing of all possible values along with the probability of that value and all lower values occuring (i.e., the cumulative probability)

mean of probility distribution mu=sum(variable*probbility(variable))
example: Lets roll a die.
output = 1,2,3,4,5,6
probility= 1/6 for all of them
mean=1*1/6+2*1/6+3*1/6+4*1/6+5*1/6+6*1/6
mean=(1+2+3+4+5+6)/6=21/6= 3.46
variance= (sigma)^2=sum(p*(x-mu)^2) =
standard deviation = underoot(variance)

## 1) Binomial Distribution

When the probability are defined by binomial distribution then number follow binomial distribution.
Following are the cases when a variable becomes binomial random variable.
    1)There are a fixed number of trials (a fixed sample size)
    2)On each trial, the event of interest either occurs or does not
    3)The probability of occurrence (or not) is the same on each trial
    4)Trials are independent of one another 

It need two inputs, n=number of trials, p = probability of each trail. 
x= number of successes we are trying to find out.

  f(x)= (nCx)(p^x)(1-p)(n-x) where x=0,1,2,3...

Binomial Random Variable Formulas

μ=np

σ=√np(1−p)

##Question: There are 10 questions of True/False in paper. Find the probability of getting all or none correct.
##Answer:
         probability of getting one correct = 0.5, now getting all correct will be.
         dbinom(10,size=10,prob=0.5)+dbinom(0,size=10,prob=0.5)
         Probability of getting 4 or less is 
         pbinom(4,size=10,prob=0.5)

## 2) Poission Distribution

The Poisson distribution is the probability distribution of independent event occurrences in an interval. 
If λ is the mean occurrence per interval, then the probability of having x occurrences within a given interval is: 
   f(x)= (λ^x*e^-λ)/x!   where x = 0,1,2,3,... x!

##Question:If there are twelve cars crossing a bridge per minute on average, find the probability of having seventeen or more cars crossing the bridge in a particular minute. 

> ppois(16, lambda=12, lower=TRUE/FALSE)   # lower tail 
[1] 0.89871 It is answer of 16 or less cars crossing 
[2] 0.10129 It is answer of 17 or more cars crossing

	

## 3) Uniform Distribution

The continuous uniform distribution is the probability distribution of random number selection from the continuous interval between a and b. Its density function is defined by the following. 
Its graph will be straight line between 2 numbers.
f(x) ={ 1/(b−a) when a ≤ x ≤ b 
f(x) ={ 0 when x < a or x > b

runif(10, min=1, max=3)

It will generate 10 random numbers of uniform distribution between 1 and 3.

## 4) Normal Distribution

It is a bell shaped curve and mean, median, mode, mid-range, mid-hinge are all equal.

## Question :Assume that the test scores of a college entrance exam fits a normal distribution. Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is the percentage of students scoring 84 or more in the exam? 

since we are looking for students scoring 84 or more hence we will find out upper tail.

pnorm(84,mean=72,sd=15.2, lower.tail=FALSE)

answer is 21.5 percent


## 5)Exponential Distribution
The exponential distribution describes the arrival time of a randomly recurring independent event sequence. If μ is the mean waiting time for the next event recurrence, its probability density function is: 

f(x)=1/mu(e^(-x/mu))

##Question: Suppose the mean checkout time of a supermarket cashier is three minutes. Find the probability of a customer checkout being completed by the cashier in less than two minutes. 

##answer:The checkout processing rate is equals to one divided by the mean checkout completion time. Hence the processing rate is 1/3 checkouts per minute. We then apply the function pexp of the exponential distribution with rate=1/3.
> pexp(2, rate=1/3) 
[1] 0.48658 


Poission distribution and Exponential distribution are related to each other. Poission tells the occurances in an interval
but exponential explains the length of interval between occurances.














    Seabourn & Matplotlib - Introduction

    Take multiple data with same mean but different sd, same mean and sd but different kurtosis: find mean, sd, plot
    Multiple data with different distributions
    Bootstrapping and sub-setting
    Making samples from the Data
    Making stratified samples - covered in bivariate analysis
    Find the mean of sample
    Central limit theorem
    Plotting
    Hypothesis testing + DOE
    Bivariate analysis
    Correlation
    Scatter plots
    Making stratified samples
    Categorical variables
    Class variable

