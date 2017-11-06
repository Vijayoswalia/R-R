################################################################################################################
                                     R ARCHITECTURE
################################################################################################################

## 1)What is R Programming?

R is a programming language meant for statistical analysis and creating graphs.
Instead of data types, it has data objects which are used for calculations.
It is used in the fields of , It have thousands of packages implemented in it,
which are used in different fields like Statistics, Maths, Physics, data analysis,
Neurology, data mining, Regression analysis, Probability estimation etc.

## 2) R language has several packages for solving a particular problem.
     How do you make a decision on which one is the best to use?

CRAN package ecosystem has more than 6000 packages. The best way for beginners to answer this question
is to mention that they would look for a package that follows good software development principles.
The next thing would be to look for user reviews and find out if other data scientists or analysts have
been able to solve a similar problem.

## 7) What is the best way to communicate the results of data analysis using R language?

The best possible way to do this is combine the data, code and analysis results in a single document
using knitr for reproducible research. This helps others to verify the findings,
add to them and engage in discussions. Reproducible research makes it easy to redo
the experiments by inserting new data and applying it to a different problem.

## 8) How many data structures does R language have?

R language has Homogeneous and Heterogeneous data structures. Homogeneous data structures have same
type of objects – Vector, Matrix ad Array. Heterogeneous data structures have different type of objects –
Data frames and lists.

## 9) What is the memory limit in R? $$revisit

8TB is the memory limit for 64-bit system memory and 4GB is the limit for 32-bit system memory.
Close your R and right click R , select properties and select the shortcut tab.Look for the ``Target''
field and after the closing quotes around the location of the R executible, add --max-mem-size=500M

## 10) What is the best way to use Hadoop and R together for analysis?

HDFS can be used for storing the data for long-term. MapReduce jobs submitted from either Oozie,
Pig or Hive can be used to encode, improve and sample the data sets from HDFS into R.
This helps to leverage complex analysis tasks on the subset of data prepared in R.

## 11) What is the difference between library() and require() functions in R language?

There is no real difference between the two if the packages are not being loaded inside the function.
require () function is usually used inside function and throws a warning whenever a particular package
is not found. On the flip side, library () function gives an error message if the desired package
cannot be loaded.


## 12) What are the rules to define a variable name in R programming language?

A variable name in R programming language can contain numeric and alphabets along with special characters
like dot (.) and underline (-). Variable names in R language can begin with an alphabet or the dot symbol.
However, if the variable name begins with a dot symbol it should not be a followed by a numeric digit.

## 13) What do you understand by a workspace in R programming language?

The current R working environment of a user that has user defined objects like lists, vectors, etc.
is referred to as Workspace in R language.
Scalars, Matrices ad Vectors.

## 14) What are the data types in R on which binary operators can be applied?



################################################################################################################
                                       VECTOR
################################################################################################################


###############################################################################################################################
                                                        APPLY FAMILY
###############################################################################################################################

## 37) Differentiate between lapply and sapply.

If the programmers want the output to be a data frame or a vector, then sapply function is used whereas if a
programmer wants the output to be a list then lapply is used. There one more function known as vapply which is preferred
over sapply as vapply allows the programmer to specific the output type. The disadvantage of using vapply is that
it is difficult to be implemented and more verbose.


################################################################################################################
                                      UPLOAD/DOWNLOAD
################################################################################################################

## 2) Explain about data import in R language

R Commander is used to import data in R language. To start the R commander GUI, the user must type in the command Rcmdr into
the console. There are 3 different ways in which data can be imported in R language-

•           Users can select the data set in the dialog box or enter the name of the data set (if they know).
•           Data can also be entered directly using the editor of R Commander via Data->New Data Set. However, this works well when the data set is not too large.
•           Data can also be imported from a URL or from a plain text file (ASCII), from any other statistical package or from the clipboard.


## 4) How missing values and impossible values are represented in R language?

NaN (Not a Number) is used to represent impossible values whereas NA (Not Available) is used to represent missing values.
The best way to answer this question would be to mention that deleting missing values is not a good idea because the
probable cause for missing value could be some problem with data collection or programming or the query.
It is good to find the root cause of the missing values and then take necessary steps handle them.



## Which data object in R is used to store and process categorical data?

The Factor data objects in R are used to store and process categorical data in R.

## How can you load and use csv file in R?

A csv file can be loaded using the read.csv function. R creates a data frame on reading the csv files using this function

################################################################################################################
                                      FUNCTION
################################################################################################################

## What are different ways to call a function in R?

We can call a function in R in 3 ways. First method is to call by using position of the arguments.
Second method id to call by using the name of the arguments and the third method is to call by default arguments.


## What is lazy function evaluation in R?

The lazy evaluation of a function means, the argument is evaluated only if it is used inside the body of the function.
If there is no reference to the argument in the body of the function then it is simply ignored.





## Can we update and delete any of the elements in a list?

## Give the general expression to create a matrix in R.

The general expression to create a matrix in R is - matrix(data, nrow, ncol, byrow, dimnames)




Work on Hands on Projects in Big Data and Data Science

## 6) Which function in R language is used to find out whether the means of 2 groups are equal to each other or not?

t.tests ()


## 9) What is the value of f (2) for the following R code?


b <- 4
f <- function (a)
{
b <- 3
b^3 + g (a)
}
g <- function (a)
{
a*b
}

The answer to the above code snippet is 35. The value of “a” passed to the function is 2 and the value for “b” defined in the function f (a) is 3. So the output would be 3^3 + g (2). The function g is defined in the global environment and it takes the value of b as 4(due to lexical scoping in R) not 3 returning a value 2*4= 8 to the function f. The result will be 3^3+8= 35.

## How do you access the element in the 2nd column and 4th row of a matrix named M?

The expression M[4,2] gives the element at 4th row and 2nd column.

## 21) What is the difference between data frame and a matrix in R?

Data frame can contain heterogeneous inputs while a matrix cannot. In matrix only similar data types can be stored whereas in a data frame there can be different data types like characters, integers or other data frames.



## 10) What is the process to create a table in R language without using external files?

MyTable= data.frame ()

 edit (MyTable)

The above code will open an Excel Spreadsheet for entering data into MyTable.

Learn Data Science in R Programming to land a top gig as an Enterprise Data Scientist!

## 11) Explain about the significance of transpose in R language

Transpose t () is the easiest method for reshaping the data before analysis.

## 12) What are with () and BY () functions used for? $$ revisit
With () function is used to apply an expression for a given dataset and BY () function is used for applying a function each level of factors.

##13) dplyr package is used to speed up data frame management code. Which package can be integrated with dplyr for large fast tables?
data.table



##15) What are the different type of sorting algorithms available in R language?

Bucket Sort
Selection Sort
Quick Sort
Bubble Sort
Merge Sort

## 15) What is the command used to store R objects in a file?

save (x, file=”x.Rdata”)


## 17) What will be the output of log (-5.8) when executed on R console?

Executing the above on R console will display a warning sign that NaN (Not a Number) will be produced because it is not possible to take the log of negative number.

## 18) How is a Data object represented internally in R language?

unclass (as.Date (“2016-10-05″))

## 19) What will be the output of the below code -

printmessage <- function (a) {

                  if (is.na (a))

                             print ("a is a missing value!")

                     else if (a < 0)

                             print ("a is less than zero")

                     else

                            print ("a is greater than or equal to zero")

                    invisible (a)

 }

printmessage (NA)



The output for the above R programming code will be “a is a missing value.” The function is.na () is used to check if
the input passed is a missing value.

## 20) Which package in R supports the exploratory analysis of genomic data?

adegenet

## 22) How can you add datasets in R?

rbind () function can be used add datasets in R language provided the columns in the datasets should be same.

## 23) How do you split a continuous variable into different groups/ranks in R?

## 24) What are factor variable in R language?

Factor variables are categorical variables that hold either string or numeric values. Factor variables are used in
various types of graphics and particularly for statistical modelling where the correct number of degrees of freedom
is assigned to them.



## 27) How do you create log linear models in R language?

Using the loglm () function

## 28) What will be the class of the resulting vector if you concatenate a number and NA?

number

## 29) What is meant by K-nearest neighbour?

K-Nearest Neighbour is one of the simplest machine learning classification algorithms that is a subset of supervised
learning based on lazy learning. In this algorithm the function is approximated locally and any computations are
deferred until classification.


## 31) Write code to build an R function powered by C?

## 32) If you want to know all the values in c (1, 3, 5, 7, 10) that are not in c (1, 5, 10, 12, 14). Which in-built function in R can be used to do this? Also, how this can be achieved without using the in-built function.

Using in-built function - setdiff(c (1, 3, 5, 7, 10), c (1, 5, 10, 11, 13))

Without using in-built function - c (1, 3, 5, 7, 10) [! c (1, 3, 5, 7, 10) %in% c (1, 5, 10, 11, 13).

## 33) How can you debug and test R programming code?

 R code can be tested using Hadley’s testthat package.

## 34) What will be the class of the resulting vector if you concatenate a number and a logical?

number

## 35) Write a function in R language to replace the missing value in a vector with the mean of that vector.

mean impute <- function(x) {x [is.na(x)] <- mean(x, na.rm = TRUE); x}

## 36) What happens if the application object is not able to handle an event?

The event is dispatched to the delegate for processing.


## 38) Differentiate between seq (6) and seq_along (6)

Seq_along(6) will produce a vector with length 6 whereas seq(6) will produce a sequential vector from 1 to 6  c( (1,2,3,4,5,6)).

## 39) How will you read a .csv file in R language?

read.csv () function is used to read a .csv file in R language. Below is a simple example –

filcontent <-read.csv (sample.csv)

print (filecontent)

## 40) How do you write R commands?

The line of code in R language should begin with a hash symbol (#).

##41) How can you verify if a given object “X” is a matric data object?

If the function call is.matrix(X ) returns TRUE then X can be termed as a matrix data object.

##42) What do you understand by element recycling in R?

If two vectors with different lengths perform an operation –the elements of the shorter vector will be re-used to complete the operation. This is referred to as element recycling.

Example – Vector A <-c(1,2,0,4) and Vector B<-(3,6) then the result of A*B will be ( 3,12,0,24). Here 3 and 6 of vector B are repeated when computing the result.

##43) How can you verify if a given object “X” is a matrix data object?

If the function call is.matrix(X) returns true then X can be considered as a matrix data object otheriwse not.

##44) How will you measure the probability of a binary response variable in R language?

Logistic regression can be used for this and the function glm () in R language provides this functionality.

##45) What is the use of sample and subset functions in R programming language?

Sample () function can be used to select a random sample of size ‘n’ from a huge dataset.

Subset () function is used to select variables and observations from a given dataset.

##46) There is a function fn(a, b, c, d, e) a + b * c - d / e. Write the code to call fn on the vector c(1,2,3,4,5) such that the output is same as fn(1,2,3,4,5).

do.call (fn, as.list(c (1, 2, 3, 4, 5)))

##47) How can you resample statistical tests in R language?

Coin package in R provides various options for re-randomization and permutations based on statistical tests. When test assumptions cannot be met then this package serves as the best alternative to classical methods as it does not assume random sampling from well-defined populations.

48) What is the purpose of using Next statement in R language?

If a developer wants to skip the current iteration of a loop in the code without terminating it then they can use the next statement. Whenever the R parser comes across the next statement in the code, it skips evaluation of the loop further and jumps to the next iteration of the loop.

## 49) How will you create scatterplot matrices in R language?

A matrix of scatterplots can be produced using pairs. Pairs function takes various parameters like formula, data, subset, labels, etc.

The two key parameters required to build a scatterplot matrix are –

    formula- A formula basically like ~a+b+c . Each term gives a separate variable in the pairs plots where the terms should be numerical vectors. It basically represents the series of variables used in pairs.
    data- It basically represents the dataset from which the variables have to be taken for building a scatterplot.



## 54) Which function helps you perform sorting in R language?

Order ()

##55) How will you list all the data sets available in all R packages?
Using the below line of code-
data(package = .packages(all.available = TRUE))

##56) Which function is used to create a histogram visualisation in R programming language?
Hist()

##57)  Write the syntax to set the path for current working directory in R environment.
Setwd(“dir_path”)

##58) How will you drop variables using indices in a data frame?

Let’s take a dataframe df<-data.frame(v1=c(1:5),v2=c(2:6),v3=c(3:7),v4=c(4:8))

df

##   v1 v2 v3 v4

## 1  1  2  3  4

## 2  2  3  4  5

## 3  3  4  5  6

## 4  4  5  6  7

## 5  5  6  7  8

Suppose we want to drop variables v2 & v3 , the variables v2 and v3 can be dropped using negative indicies as follows-

df1<-df[-c(2,3)]

df1

##   v1 v4

## 1  1  4

## 2  2  5

## 3  3  6

## 4  4  7

## 5  5  8

##59) What will be the output of runif (7)?

It will generate 7 randowm numbers between 0 and 1.

##60) What is the difference between rnorm and runif functions ?

rnorm function generates "n" normal random numbers based on the mean and standard deviation arguments passed to the function.

Syntax of rnorm function -

rnorm(n, mean = , sd = )

runif function generates "n" unform random numbers in the interval of minimum and maximum values passed to the function.

Syntax of runif function -

 runif(n, min = , max = )



##64) Can you tell if the equation given below is linear or not ?

Emp_sal= 2000+2.5(emp_age)2

Yes it is a linear equation as the coefficients are linear.

##65) What will be the output of the following R programming code ?

var2<-c("I","Love","DeZyre")


 It will give an error.

##66) What will be the output of the following R programming code?

x<-5

##if(x%%2==0)

  print("X is an even number")

##else

  print("X is an odd number")

Executing the above code will result in an error as shown below -

## Error: :4:1: unexpected 'else'

## 3:   print("X is an even number")

## 4: else

##    ^

 R programming language does not know if the else related to the first ‘if’ or not as the first if() is a complete command on its own.

##67) I have a string "contact@dezyre.com". Which string function can be used to split the string into two different strings “contact@dezyre” and “com” ?

This can be accomplished using  the strsplit function which splits a string based on the identifier given in the function call. The output of strsplit() function is a list.

strsplit("contact@dezyre.com",split = ".")

Output of the strsplit function is -

## [[1]]

## [1] " contact@dezyre" "com"

## 68) What is R Base package?

R Base package is the package that is loaded by default whenever R programming environent is loaded .
R base package provides basic fucntionalites in R environment like arithmetic calcualtions, input/output.

##69)  How will you merge two dataframes in R programming language?

##Merge () function is used to combine two dataframes and it identifies common rows or columns between the 2 dataframes. Merge () function basically finds the intersection between two different sets of data.

##Merge () function in R language takes a long list of arguments as follows –

Syntax for using Merge function in R language -

 merge (x, y, by.x, by.y, all.x  or all.y or all )

    X represents the first dataframe.
    Y represents the second dataframe.
    by.X- Variable name in dataframe X that is common in Y.
    by.Y- Variable name in dataframe Y that is common in X.
    all.x - It is a logical value that specifies the type of merge. all.X should be set to true, if we want all the observations from dataframe X . This results in Left Join.
    all.y - It is a logical value that specifies the type of merge. all.y should be set to true , if we want all the observations from dataframe Y . This results in Right Join.
    all – The default value for this is set to FALSE which means that only matching rows are returned resulting in Inner join. This should be set to true if you want all the observations from dataframe X and Y resulting in Outer join.

##70) Write the R programming code for an array of words so that the output is displayed in decreasing frequency order##.

R Programming Code to display output in decreasing frequency order -

tt <- sort(table(c("a", "b", "a", "a", "b", "c", "a1", "a1", "a1")), dec=T)
depth <- 3
tt[1:depth]

Output -

1) a a1  b
2) 3  3  2

##71) How to check the frequency distribution of a categorical variable?

The frequency distribution of a categorical variable can be checked using the table function in R language. Table () function calculates the count of each categories of a categorical variable.

gender=factor(c(“M”,”F”,”M”,”F”,”F”,”F”))

table(sex)

Output of the above R Code –

Gender

F  M

4  2

##Programmers can also calculate the % of values for each categorical group by storing the output in a dataframe and applying the column percent function as shown below -

t = data.frame(table(gender))
t$percent= round(t$Freq / sum(t$Freq)*100,2)
Gender 	Frequency 	Percent
F 	4 	66.67
M 	2 	33.33

##72) What is the procedure to check the cumulative frequency distribution of any categorical variable?

The cumulative frequency distribution of a categorical variable can be checked using the cumsum () function in R language.

Example –

gender = factor(c("f","m","m","f","m","f"))
y = table(gender)
cumsum(y)

Output of the above R code-

Cumsum(y)

f m

3 3

##73) What will be the result of multiplying two vectors in R having different lengths?

The multiplication of the two vectors will be performed and the output will be displayed with a warning message like – “Longer object length is not a multiple of shorter object length.” Suppose there is a vector a<-c (1, 2, 3) and vector b <- (2, 3) then the multiplication of the vectors a*b will give the resultant as 2 6 6 with the warning message. The multiplication is performed in a sequential manner but since the length is not same, the first element of the smaller vector b will be multiplied with the last element of the larger vector a.

##74) R programming language has several packages for data science which are meant to solve a specific problem, how do you decide which one to use?

CRAN package repository in R has more than 6000 packages, so a data scientist needs to follow a well-defined process and criteria to select the right one for a specific task. When looking for a package in the CRAN repository a data scientist should list out all the requirements and issues so that an ideal R package can address all those needs and issues.

The best way to answer this question is to look for an R package that follows good software development principles and practices. For example, you might want to look at the quality documentation and unit tests. The next step is to check out how a particular R package is used and read the reviews posted by other users of the R package. It is important to know if other data scientists or data analysts have been able to solve a similar problem as that of yours. When you in doubt choosing a particular R package, I would always ask for feedback from R community members or other colleagues to ensure that I am making the right choice.

##75) How can you merge two data frames in R language?

Data frames in R language can be merged manually using cbind () functions or by using the merge () function on common rows or columns.

##76)  Explain the usage of which() function in R language.

##which() function determines the postion of elemnts in a logical vector that are TRUE. In the below example, we are finding the row number wherein the maximum value of variable v1 is recorded.

##mydata=data.frame(v1 = c(2,4,12,3,6))
##which(mydata$v1==max(mydata$v1))
It returns 3 as 12 is the maximum value and it is at 3rd row in the variable x=v1.
R Interview Questions for Data Science

##1) What is the need of factorizing variables in R?

##2) List some of your favorite functions in R programming language along with their usage.

##3) Explain the differences between Python and R.

##4) What is multi-threading and how can you implement it in R programming language?

5) Implement string operations in R language.

6) dplyr <- "ggplot2" library(dplyr). Which package will be loaded on executing the command and why?

7) Why you should use R language for statistical work?

8) What according to you are disadvantages of R Programming over Python?

9) Which R objects have you most frequently worked with?

10) Build a binary search tree in R language.

11) How can you produce co-relations and covariances in R lanaguge?

12) How can you develop a package in R language and do version control?

This list of 100 data science interview questions is not an exhaustive one and we know that we have not gotten all the answers here. We request the data science community to help us out with the questions that we did not get the answers to. Please do chime in with any data science interview questions related to R programming that you think ought to be here. We will add it in.

2) Explain about data import in R language

R Commander is used to import data in R language. To start the R commander GUI, the user must type in the command Rcmdr into the console. There are 3 different ways in which data can be imported in R language-

•           Users can select the data set in the dialog box or enter the name of the data set (if they know).

•           Data can also be entered directly using the editor of R Commander via Data->New Data Set. However, this works well when the data set is not too large.

•           Data can also be imported from a URL or from a plain text file (ASCII), from any other statistical package or from the clipboard.


Z <- (3, 4, 4)


18) How is a Data object represented internally in R language?

unclass (as.Date (“2016-10-05″))

19) What will be the output of the below code -

printmessage <- function (a) {

                  if (is.na (a))

                             print ("a is a missing value!")

                     else if (a < 0)

                             print ("a is less than zero")

                     else

                            print ("a is greater than or equal to zero")

                    invisible (a)

 }

printmessage (NA)



The output for the above R programming code will be “a is a missing value.” The function is.na () is used to check if the input passed is a missing value.

20) Which package in R supports the exploratory analysis of genomic data?

adegenet

21) What is the difference between data frame and a matrix in R?

Data frame can contain heterogeneous inputs while a matrix cannot. In matrix only similar data types can be stored whereas in a data frame there can be different data types like characters, integers or other data frames.

22) How can you add datasets in R?

rbind () function can be used add datasets in R language provided the columns in the datasets should be same.

23) How do you split a continuous variable into different groups/ranks in R?

24) What are factor variable in R language?

Factor variables are categorical variables that hold either string or numeric values. Factor variables are used in various types of graphics and particularly for statistical modelling where the correct number of degrees of freedom is assigned to them.

25) What is the memory limit in R?

8TB is the memory limit for 64-bit system memory and 3GB is the limit for 32-bit system memory.

26) What are the data types in R on which binary operators can be applied?

Scalars, Matrices ad Vectors.

27) How do you create log linear models in R language?

Using the loglm () function

28) What will be the class of the resulting vector if you concatenate a number and NA?

number

29) What is meant by K-nearest neighbour?

K-Nearest Neighbour is one of the simplest machine learning classification algorithms that is a subset of supervised learning based on lazy learning. In this algorithm the function is approximated locally and any computations are deferred until classification.

30) What will be the class of the resulting vector if you concatenate a number and a character?

character

31) Write code to build an R function powered by C?

32) If you want to know all the values in c (1, 3, 5, 7, 10) that are not in c (1, 5, 10, 12, 14). Which in-built function in R can be used to do this? Also, how this can be achieved without using the in-built function.

Using in-built function - setdiff(c (1, 3, 5, 7, 10), c (1, 5, 10, 11, 13))

Without using in-built function - c (1, 3, 5, 7, 10) [! c (1, 3, 5, 7, 10) %in% c (1, 5, 10, 11, 13).

33) How can you debug and test R programming code?

 R code can be tested using Hadley’s testthat package.

34) What will be the class of the resulting vector if you concatenate a number and a logical?

number

35) Write a function in R language to replace the missing value in a vector with the mean of that vector.

mean impute <- function(x) {x [is.na(x)] <- mean(x, na.rm = TRUE); x}

36) What happens if the application object is not able to handle an event?

The event is dispatched to the delegate for processing.

37) Differentiate between lapply and sapply.

If the programmers want the output to be a data frame or a vector, then sapply function is used whereas if a programmer wants the output to be a list then lapply is used. There one more function known as vapply which is preferred over sapply as vapply allows the programmer to specific the output type. The disadvantage of using vapply is that it is difficult to be implemented and more verbose.

38) Differentiate between seq (6) and seq_along (6)

Seq_along(6) will produce a vector with length 6 whereas seq(6) will produce a sequential vector from 1 to 6  c( (1,2,3,4,5,6)).

39) How will you read a .csv file in R language?

read.csv () function is used to read a .csv file in R language. Below is a simple example –

filcontent <-read.csv (sample.csv)

print (filecontent)

40) How do you write R commands?

The line of code in R language should begin with a hash symbol (#).

41) How can you verify if a given object “X” is a matric data object?

If the function call is.matrix(X ) returns TRUE then X can be termed as a matrix data object.

42) What do you understand by element recycling in R?

If two vectors with different lengths perform an operation –the elements of the shorter vector will be re-used to complete the operation. This is referred to as element recycling.

Example – Vector A <-c(1,2,0,4) and Vector B<-(3,6) then the result of A*B will be ( 3,12,0,24). Here 3 and 6 of vector B are repeated when computing the result.

43) How can you verify if a given object “X” is a matrix data object?

If the function call is.matrix(X) returns true then X can be considered as a matrix data object otheriwse not.

44) How will you measure the probability of a binary response variable in R language?

Logistic regression can be used for this and the function glm () in R language provides this functionality.

45) What is the use of sample and subset functions in R programming language?

Sample () function can be used to select a random sample of size ‘n’ from a huge dataset.

Subset () function is used to select variables and observations from a given dataset.

46) There is a function fn(a, b, c, d, e) a + b * c - d / e. Write the code to call fn on the vector c(1,2,3,4,5) such that the output is same as fn(1,2,3,4,5).

do.call (fn, as.list(c (1, 2, 3, 4, 5)))

47) How can you resample statistical tests in R language?

Coin package in R provides various options for re-randomization and permutations based on statistical tests. When test assumptions cannot be met then this package serves as the best alternative to classical methods as it does not assume random sampling from well-defined populations.

48) What is the purpose of using Next statement in R language?

If a developer wants to skip the current iteration of a loop in the code without terminating it then they can use the next statement. Whenever the R parser comes across the next statement in the code, it skips evaluation of the loop further and jumps to the next iteration of the loop.

49) How will you create scatterplot matrices in R language?

A matrix of scatterplots can be produced using pairs. Pairs function takes various parameters like formula, data, subset, labels, etc.

The two key parameters required to build a scatterplot matrix are –

    formula- A formula basically like ~a+b+c . Each term gives a separate variable in the pairs plots where the terms should be numerical vectors. It basically represents the series of variables used in pairs.
    data- It basically represents the dataset from which the variables have to be taken for building a scatterplot.

50) How will you check if an element 25 is present in a vector?

There are various ways to do this-

    It can be done using the match () function- match () function returns the first appearance of a particular element.
    The other is to use %in% which returns a Boolean value either true or false.
    Is.element () function also returns a Boolean value either true or false based on whether it is present in a vector or not.

51) What is the difference between library() and require() functions in R language?

There is no real difference between the two if the packages are not being loaded inside the function. require () function is usually used inside function and throws a warning whenever a particular package is not found. On the flip side, library () function gives an error message if the desired package cannot be loaded.

52) What are the rules to define a variable name in R programming language?

A variable name in R programming language can contain numeric and alphabets along with special characters like dot (.) and underline (-). Variable names in R language can begin with an alphabet or the dot symbol. However, if the variable name begins with a dot symbol it should not be a followed by a numeric digit.

53) What do you understand by a workspace in R programming language?

The current R working environment of a user that has user defined objects like lists, vectors, etc. is referred to as Workspace in R language.

54) Which function helps you perform sorting in R language?

Order ()

55) How will you list all the data sets available in all R packages?
Using the below line of code-
data(package = .packages(all.available = TRUE))
56) Which function is used to create a histogram visualisation in R programming language?
Hist()
57)  Write the syntax to set the path for current working directory in R environment.
Setwd(“dir_path”)

58) How will you drop variables using indices in a data frame?

Let’s take a dataframe df<-data.frame(v1=c(1:5),v2=c(2:6),v3=c(3:7),v4=c(4:8))

df

##   v1 v2 v3 v4

## 1  1  2  3  4

## 2  2  3  4  5

## 3  3  4  5  6

## 4  4  5  6  7

## 5  5  6  7  8

Suppose we want to drop variables v2 & v3 , the variables v2 and v3 can be dropped using negative indicies as follows-

df1<-df[-c(2,3)]

df1

##   v1 v4

## 1  1  4

## 2  2  5

## 3  3  6

## 4  4  7

## 5  5  8

59) What will be the output of runif (7)?

It will generate 7 randowm numbers between 0 and 1.

60) What is the difference between rnorm and runif functions ?

rnorm function generates "n" normal random numbers based on the mean and standard deviation arguments passed to the function.

Syntax of rnorm function -

rnorm(n, mean = , sd = )

runif function generates "n" unform random numbers in the interval of minimum and maximum values passed to the function.

Syntax of runif function -

 runif(n, min = , max = )

61) What will be the output on executing the following R programming code –

mat<-matrix(rep(c(TRUE,FALSE),8),nrow=4)

sum(mat)

 8

62) How will you combine multiple different string like “Data”, “Science”, “in” ,“R”, “Programming” as a single string “Data_Science_in_R_Programmming” ?

paste(“Data”, “Science”, “in” ,“R”, “Programming”,sep="_")

63) Write a function to extract the first name from the string “Mr. Tom White”.

substr (“Mr. Tom White”,start=5, stop=7)

64) Can you tell if the equation given below is linear or not ?

Emp_sal= 2000+2.5(emp_age)2

Yes it is a linear equation as the coefficients are linear.

65) What will be the output of the following R programming code ?

var2<- c("I","Love","DeZyre")

var2

 It will give an error.

66) What will be the output of the following R programming code?

x<-5

if(x%%2==0)

  print("X is an even number")

else

  print("X is an odd number")

Executing the above code will result in an error as shown below -

## Error: :4:1: unexpected 'else'

## 3:   print("X is an even number")

## 4: else

##    ^

 R programming language does not know if the else related to the first ‘if’ or not as the first if() is a complete command on its own.

67) I have a string "contact@dezyre.com". Which string function can be used to split the string into two different strings “contact@dezyre” and “com” ?

This can be accomplished using  the strsplit function which splits a string based on the identifier given in the function call. The output of strsplit() function is a list.

strsplit("contact@dezyre.com",split = ".")

Output of the strsplit function is -

## [[1]]

## [1] " contact@dezyre" "com"

68) What is R Base package?

R Base package is the package that is loaded by default whenever R programming environent is loaded .R base package provides basic fucntionalites in R environment like arithmetic calcualtions, input/output.

69)  How will you merge two dataframes in R programming language?

Merge () function is used to combine two dataframes and it identifies common rows or columns between the 2 dataframes. Merge () function basically finds the intersection between two different sets of data.

Merge () function in R language takes a long list of arguments as follows –

Syntax for using Merge function in R language -

 merge (x, y, by.x, by.y, all.x  or all.y or all )

    X represents the first dataframe.
    Y represents the second dataframe.
    by.X- Variable name in dataframe X that is common in Y.
    by.Y- Variable name in dataframe Y that is common in X.
    all.x - It is a logical value that specifies the type of merge. all.X should be set to true, if we want all the observations from dataframe X . This results in Left Join.
    all.y - It is a logical value that specifies the type of merge. all.y should be set to true , if we want all the observations from dataframe Y . This results in Right Join.
    all – The default value for this is set to FALSE which means that only matching rows are returned resulting in Inner join. This should be set to true if you want all the observations from dataframe X and Y resulting in Outer join.

70) Write the R programming code for an array of words so that the output is displayed in decreasing frequency order.

R Programming Code to display output in decreasing frequency order -

tt <- sort(table(c("a", "b", "a", "a", "b", "c", "a1", "a1", "a1")), dec=T)
depth <- 3
tt[1:depth]

Output -

1) a a1  b
2) 3  3  2

71) How to check the frequency distribution of a categorical variable?

The frequency distribution of a categorical variable can be checked using the table function in R language. Table () function calculates the count of each categories of a categorical variable.

gender=factor(c(“M”,”F”,”M”,”F”,”F”,”F”))

table(sex)

Output of the above R Code –

Gender

F  M

4  2

Programmers can also calculate the % of values for each categorical group by storing the output in a dataframe and applying the column percent function as shown below -

t = data.frame(table(gender))
t$percent= round(t$Freq / sum(t$Freq)*100,2)
Gender 	Frequency 	Percent
F 	4 	66.67
M 	2 	33.33

72) What is the procedure to check the cumulative frequency distribution of any categorical variable?

The cumulative frequency distribution of a categorical variable can be checked using the cumsum () function in R language.

Example –

gender = factor(c("f","m","m","f","m","f"))
y = table(gender)
cumsum(y)

Output of the above R code-

Cumsum(y)

f m

3 3

73) What will be the result of multiplying two vectors in R having different lengths?

The multiplication of the two vectors will be performed and the output will be displayed with a warning message like – “Longer object length is not a multiple of shorter object length.” Suppose there is a vector a<-c (1, 2, 3) and vector b <- (2, 3) then the multiplication of the vectors a*b will give the resultant as 2 6 6 with the warning message. The multiplication is performed in a sequential manner but since the length is not same, the first element of the smaller vector b will be multiplied with the last element of the larger vector a.

74) R programming language has several packages for data science which are meant to solve a specific problem, how do you decide which one to use?

CRAN package repository in R has more than 6000 packages, so a data scientist needs to follow a well-defined process and criteria to select the right one for a specific task. When looking for a package in the CRAN repository a data scientist should list out all the requirements and issues so that an ideal R package can address all those needs and issues.

The best way to answer this question is to look for an R package that follows good software development principles and practices. For example, you might want to look at the quality documentation and unit tests. The next step is to check out how a particular R package is used and read the reviews posted by other users of the R package. It is important to know if other data scientists or data analysts have been able to solve a similar problem as that of yours. When you in doubt choosing a particular R package, I would always ask for feedback from R community members or other colleagues to ensure that I am making the right choice.

75) How can you merge two data frames in R language?

Data frames in R language can be merged manually using cbind () functions or by using the merge () function on common rows or columns.

76)  Explain the usage of which() function in R language.

which() function determines the postion of elemnts in a logical vector that are TRUE. In the below example, we are finding the row number wherein the maximum value of variable v1 is recorded.

mydata=data.frame(v1 = c(2,4,12,3,6))
which(mydata$v1==max(mydata$v1))
It returns 3 as 12 is the maximum value and it is at 3rd row in the variable x=v1.
R Interview Questions for Data Science

1) What is the need of factorizing variables in R?

2) List some of your favorite functions in R programming language along with their usage.

3) Explain the differences between Python and R.

4) What is multi-threading and how can you implement it in R programming language?

5) Implement string operations in R language.

6) dplyr <- "ggplot2" library(dplyr). Which package will be loaded on executing the command and why?

7) Why you should use R language for statistical work?

8) What according to you are disadvantages of R Programming over Python?

9) Which R objects have you most frequently worked with?

10) Build a binary search tree in R language.

11) How can you produce co-relations and covariances in R lanaguge?


1). Two vectors X and Y are defined as follows – X <- c(3, 2, 4) and Y <- c(1, 2). What will be output of vector Z that is defined as Z <- X*Y

A – 3,4,0

B – 3,4,4

C – error

D – 3,4,8

Solution: B

Vector recycling takes place when 2 vectors of unequal lengths are multiplied.



2). If you want to know all the values in c (1, 3, 5, 7, 10) that are not in c (1, 5, 10, 12, 14). Which code in R can be used to do this?

A – setdiff(c(1,3,5,7),c(1,5,10,12,14))

B – diff(c(1,3,5,7),c(1,5,10,12,14))

C – unique(c(1,3,5,7),c(1,5,10,12,14))

D – None of the Above.

Solution: A

setdiff() function finds the values which are different in any given two vectors.



3). What is the output of f(2) ?

b <- 4
f <- function (a){
b <- 3
b^3 + g (a)
}

g <- function (a) {
a*b
}

A – 33

B – 35

C – 37

D – 31

Solution: B

g(a) uses b <- 4 because it is globally available. Globally means to every variable in the environment. f(a) uses b <- 3 because it is locally available for the function. Therefore, for a function locally available information takes precedence over global information.



4) The data shown below is from a csv file. Which of the following commands can read this csv file as a dataframe into R?

Male	25.5	0
Female	35.6	1
Female	12.03	0
Female	11.30	0
Male	65.46	1
Table1.csv

A – read.csv(“Table1.csv”)

B – read.csv(“Table1.csv”,header=FALSE)

C – read.table(“Table1.csv”)

D – read.csv2(“Table1.csv”,header=FALSE)

Solution: B

Since the table has no headers, it is imperative to specify it in the read.csv command.


5). The missing values in the data shown from a csv file have been represented by ‘?’. Which of the below code will read this csv file correctly into R?

A	10	Sam
B	?	Peter
C	30	Harry
D	40	?
E	50	Mark
Table2.csv

A – read.csv(“Table2.csv”)

B – read.csv(“Table2.csv”,header=FALSE,strings.na=”?”)

C – read.csv2(“Table2.csv”,header=FALSE,sep=”,”,na.strings=”?”)

D – read.table(“Table2.csv”)

Solution: C

Since missing values comes in many forms and not just standard NA, it is essential to define by what character the NA values are represented. na.strings will tell read.csv to treat every question mark ? as a missing value.



6). The table shown below from a csv file has row names as well as column names. This table will be used in the following questions:

Which of the following code can read this csv file properly into R?

Column 1	Column 2	Column 3
Row 1	15.5	14.12	69.5
Row 2	18.6	56.23	52.4
Row 3	21.4	47.02	63.21
Row 4	36.1	56.63	36.12
Table3.csv

A – read.delim(“Train3.csv”,header=T,sep=”,”,row.names=1)

B – read.csv2(“Train3.csv”,header=TRUE,row.names=TRUE)

C – read.table(“Train3.csv”,header=TRUE,sep=”,”)

D – read.csv(“Train3.csv”,row.names=TRUE,header=TRUE,sep=”,”)

Solution: A

Since the first column has row names, it is important to specify it using row.names while loading data. row.names = 1 says that row names are available in the first column of the table.



7). Which of the following code will fail to read the first two rows of the csv file?

Column 1	Column 2	Column 3
Row 1	15.5	14.12	69.5
Row 2	18.6	56.23	52.4
Row 3	21.4	47.02	63.21
Row 4	36.1	56.63	36.12
Table3.csv

A – read.csv(“Table3.csv”,header=TRUE,row.names=1,sep=”,”,nrows=2)

B – read.csv(“Table3.csv”,row.names=1,nrows=2)

C – read.delim2(“Table3.csv”,header=T,row.names=1,sep=”,”,nrows=2)

D – read.table(“Table3.csv”,header=TRUE,row.names=1,sep=”,”,skip.last=2)

Solution- D

Except D, rest all the options will successfully read the first 2 lines of this table. nrows parameter helps to determine how many rows from a data set should be read.



8). Which of the following code will read only the second and the third column into R?

Column 1	Column 2	Column 3
Row 1	15.5	14.12	69.5
Row 2	18.6	56.23	52.4
Row 3	21.4	47.02	63.21
Row 4	36.1	56.63	36.12
Table3.csv

A – read.table(“Table3.csv”,header=T,row.names=1,sep=”,”,colClasses=c(“NULL”,NA,NA))

B – read.csv(“Table3.csv”,header=TRUE,row.names=1,sep=”,”,colClasses=c(“NULL”,”NA”,”NA”))

C – read.csv(“Table3.csv”,row.names=1,colClasses=c(“Null”,na,na))

D – read.csv(“Table3.csv”,row.names=T,  colClasses=TRUE)

Solution: A

You can skip reading columns using NULL in colclasses parameter while reading data.



9). Below is a data frame which has already been read into R and stored in a variable named dataframe1.

Which of the below code will produce a summary (mean, mode, median etc if applicable) of the entire data set in a single line of code?

V1	V2	V3
1	Male	12.5	46
2	Female	56	135
3	Male	45	698
4	Female	63	12
5	Male	12.36	230
6	Male	25.23	456
7	Female	12	457
Dataframe 1

A – summary(dataframe1)

B – stats(dataframe1)

C – summarize(dataframe1)

D – summarise(dataframe1)

Solution:A

10) dataframe2 has been read into R properly with missing values labelled as NA. This dataframe2 will be used for the following questions:

Which of the following code will return the total number of missing values in the dataframe?
A	10	Sam
B	NA	Peter
C	30	Harry
D	40	NA
E	50	Mark
dataframe2

A – table(dataframe2==NA)

B – table(is.na(dataframe2))

C – table(hasNA(dataframe2))

D – which(is.na(dataframe2)

Solution: B



11). Which of the following code will not return the number of missing values in each column?

A	10	Sam
B	NA	Peter
C	30	Harry
D	40	NA
E	50	Mark
dataframe2

A – colSums(is.na(dataframe2))

B – apply(is.na(dataframe2),2,sum)

C – sapply(dataframe2,function(x) sum(is.na(x))

D – table(is.na(dataframe2))

Solution: D

Rest of the options will traverse through every column to calculate and return the number of missing values per variable.


12). The data shown below has been loaded into R in a variable named dataframe3. The first row of data represent column names. The powerful data manipulation package ‘dplyr’ has been loaded. This data set will be used in following questions:

Which of the following code can select only the rows for which Gender is Male?

Gender	Marital Status	Age	Dependents
Male	Married	50	2
Female	Married	45	5
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	2
Female	Unmarried	18	0
dataframe3

A – subset(dataframe3, Gender=”Male”)

B – subset(dataframe3, Gender==”Male”)

C – filter(dataframe3,Gender==”Male”)

D – option 2 and 3

Solution: D

filter function comes from dplyr package. subset is the base function. Both does the same job.



13). Which of the following code can select the data with married females only?

Gender	Marital Status	Age	Dependents
Male	Married	50	2
Female	Married	45	5
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	2
Female	Unmarried	18	0
dataframe 3

A – subset(dataframe3,Gender==”Female” & Marital Status==”Married”)

B – filter(dataframe3, Gender==”Female” , Marital Status==”Married”)

C – Only 1

D – Both 1 and 2

Solution: D



14). Which of the following code can select all the rows from Age and Dependents?

Gender	Marital Status	Age	Dependents
Male	Married	50	2
Female	Married	45	5
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	2
Female	Unmarried	18	0
dataframe3

A – subset(dataframe3, select=c(“Age”,”Dependents”))

B – select(dataframe3, Age,Dependants)

C – dataframe3[,c(“Age”,”Dependants”)]

D – All of the above

Solution: D

If you got this wrong, refer to the basics of sub-setting a data frame.



15). Which of the following codes will convert the class of the Dependents variable to a factor class?

Gender	Marital Status	Age	Dependents
Male	Married	50	2
Female	Married	45	5
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	2
Female	Unmarried	18	0
Dataframe 3

A – dataframe3$Dependents=as.factor(dataframe3$Dependents)

B – dataframe3[,’Dependents’]=as.factor(dataframe3[,’Dependents’])

C – transform(dataframe3,Dependents=as.factor(Dependents))

D – All of the Above

Solution: D

as.factor() is used to coerce class type to factor.



16). Which of the following code can calculate the mean age of Female?

Gender	Marital Status	Age	Dependents
Male	Married	50	2
Female	Married	45	5
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	2
Female	Unmarried	18	0
Dataframe3

A – dataframe3%>%filter(Gender==”Female”)%>%summarise(mean(Age))

B – mean(dataframe3$Age[which(dataframe3$Gender==”Female”)])

C – mean(dataframe3$Age,dataframe3$Female)

D – Both 1 and 2

Solution: D

Option A describes the method using dplyr package. Option B uses the base functions to accomplish this task.



17). The data shown below has been read into R and stored in a dataframe named dataframe4. It is given that Has_Dependents column is read as a factor variable. We wish to convert this variable to numeric class. Which code will help us achieve this?

Gender	Marital Status	Age	Has_Dependents
Male	Married	50	0
Female	Married	45	1
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	1
Female	Unmarried	18	0
dataframe4

A – dataframe4$Has Dependents=as.numeric(dataframe4$Has_Dependents)

B – dataframe4[,”Has Dependents”]=as.numeric(as.character(dataframe4$Has_ Dependents))

C – transform(dataframe4,Has Dependents=as.numeric(Has_Dependents))

D – All of the above

Solution: B



18). There are two dataframes stored in two respective variables named Dataframe1 and Dataframe2.

Dataframe1
Feature1	Feature2	Feature3
A	1000	25.5
B	2000	35.5
C	3000	45.5
D	4000	55.5	Dataframe2
Feature1	Feature2	Feature3
E	5000	65.5
F	6000	75.5
G	7000	85.5
H	8000	95.5
Which of the following codes will produce the output as shown below?

Feature1	Feature2	Feature3
A	1000	25.5
B	2000	35.5
C	3000	45.5
D	4000	55.5
E	5000	65.5
F	6000	75.5
G	7000	85.5
H	8000	95.5
A – merge(dataframe1,dataframe2,all=TRUE)

B – merge(dataframe1,dataframe2)

C – merge(dataframe1,dataframe2,by=intersect(names(x),names(y))

D – None of the above

Solution: A

The parameter all=TRUE says to merge both the data sets, and even if there is no match found for a particular observation, return NA.



19). Which of the following codes will create a new column named Size(MB) from the existing Size(KB) column? The dataframe is stored in a variable named dataframe5. Given 1MB = 1024KB

Package Name	Creator	Size(kB)
Swirl	Sean Kross	2568
Ggplot	Hadley Wickham	5463
Dplyr	Hadley Wickham	8961
Lattice	Deepayan Sarkar	3785
dataframe5

A –  dataframe5$Size(MB)=dataframe$Size(KB)/1024

B – dataframe5$Size(KB)=dataframe$Size(KB)/1024

C – dataframe5%>%mutate(Size(MB)=Size(KB)/1024)

D – Both 1 and 3

Solution: D



20). Following question will use the dataframe shown below:

Gender	Marital Status	Age	Has Dependents
Male	Married	50	0
Female	Married	45	1
Female	Unmarried	25	0
Male	Unmarried	21	0
Male	Unmarried	26	1
Female	Married	30	1
Female	Unmarried	18	0
Dataframe6

Certain Algorithms like XGBOOST work only with numerical data. In that case, categorical variables present in dataset are converted to DUMMY variables which represent the presence or absence of a level of a categorical variable in the dataset. From Dataframe6, after creating the dummy variable for Gender, the dataset looks like below.

Gender_Male	Gender_Female	Marital Status	Age	Has Dependents
1	0	Married	50	0
0	1	Married	45	1
0	1	Unmarried	25	0
1	0	Unmarried	21	0
1	0	Unmarried	26	1
0	1	Married	30	1
0	1	Unmarried	18	0
Which of the following commands would have helped us to achieve this?

A – dummies:: dummy.data.frame(dataframe6,names=c(“Gender”))

B – dataframe6[,”Gender”] <- split(dataframe6$Gender, ifelse(dataframe6$Gender == “Male”,0,1))

C – contrasts(dataframe6$Gender) <- contr.treatment(2)

D – None of the above

Solution: A

For Option A, install and load dummies package. With its fairly easy code syntax, one hot encoding in R was never easy before.



21). We wish to calculate the correlation between column 2 and column 3. Which of the below codes will achieve the purpose?

 	Column1	Column2	Column3	Column4	Column5	Column6
Name1	Male	12	24	54	0	Alpha
Name2	Female	16	32	51	1	Beta
Name3	Male	52	104	32	0	Gamma
Name4	Female	36	72	84	1	Delta
Name5	Female	45	90	32	0	Phi
Name6	Male	12	24	12	0	Zeta
Name7	Female	32	64	64	1	Sigma
Name8	Male	42	84	54	0	Mu
Name9	Male	56	112	31	1	Eta
Dataframe 7

A – cor(dataframe7$column2,dataframe7$column3)

B – (cov(dataframe7$column2,dataframe7$column3))/(sd(dataframe7$column4)*sd(dataframe7$column3))

C – (cov(dataframe7$column2,dataframe7$column3))/(var(dataframe7$column4)*var(dataframe7$column3))

D – All of the above

Solution: A

cor is the base function used to calculate correlation between two numerical variables.



22). Column 3 has 2 missing values represented as NA in the dataframe below stored in the variable named dataframe8. We wish to impute the missing values using the mean of the column 3. Which code will help us do that?

 	Column1	Column2	Column3	Column4	Column5	Column6
Name1	Male	12	24	54	0	Alpha
Name2	Female	16	32	51	1	Beta
Name3	Male	52	104	32	0	Gamma
Name4	Female	36	72	84	1	Delta
Name5	Female	45	NA	32	0	Phi
Name6	Male	12	24	12	0	Zeta
Name7	Female	32	NA	64	1	Sigma
Name8	Male	42	84	54	0	Mu
Name9	Male	56	112	31	1	Eta
Dataframe 8

A – dataframe8$Column3[which(dataframe8$Column3==NA)]=mean(dataframe8$Column3)

B – dataframe8$Column3[which(is.na(dataframe8$Column3))]=mean(dataframe8$Column3)

C – dataframe8$Column3[which(is.na(dataframe8$Column3))]=mean(dataframe8$Column3,na.rm=TRUE)

D – dataframe8$Column3[which(is.na(dataframe8$Column3))]=mean(dataframe8$Column3,rm.na=TRUE)

Solution: C

Option na.rm=TRUE says that impute the missing values by calculating the mean of all available observations.



23). Column7 contains some names with the salutations. In such cases, it is always advisable to extract salutations in a new column since they can provide more information to our predictive model.  Your work is to choose the code that cannot extract the salutations out of names in Column7 and store the salutations in Column8.

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24	54	0	Alpha	Mr.Sam
Name2	Female	16	32	51	1	Beta	Ms.Lilly
Name3	Male	52	104	32	0	Gamma	Mr.Mark
Name4	Female	36	72	84	1	Delta	Ms.Shae
Name5	Female	45	NA	32	0	Phi	Ms.Ria
Name6	Male	12	24	12	0	Zeta	Mr.Patrick
Name7	Female	32	NA	64	1	Sigma	Ms.Rose
Name8	Male	42	84	54	0	Mu	Mr.Peter
Name9	Male	56	112	31	1	Eta	Mr.Roose
Dataframe 9

A – dataframe9$Column8<-sapply(strsplit(as.character(dataframe9$Column7),split = “[.]”),function(x){x[1]})

B – dataframe9$Column8<-sapply(strsplit(as.character(dataframe9$Column7),split = “.”),function(x){x[1]})

C – dataframe9$Column8<-sapply(strsplit(as.character(dataframe9$Column7),split = “.”,fixed=TRUE),function(x){x[1]})

D – dataframe9$Column8<-unlist(strsplit(as.character(dataframe9$Column7),split = “.”,fixed=TRUE))[seq(1,18,2)]

Solution: B

strsplit is used to split a text variable based on some splitting criteria. Try running these codes at your end, you’ll understand the difference.



24). Column 3 in the data frame shown below is supposed to contain dates in ddmmyyyy format but as you can see, there is some problem with its format. Which of the following code can convert the values present in Column 3 into date format?

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24081997	54	0	Alpha	Mr.Sam
Name2	Female	16	30062001	51	1	Beta	Ms.Lilly
Name3	Male	52	10041998	32	0	Gamma	Mr.Mark
Name4	Female	36	17021947	84	1	Delta	Ms.Shae
Name5	Female	45	15031965	32	0	Phi	Ms.Ria
Name6	Male	12	24111989	12	0	Zeta	Mr.Patrick
Name7	Female	32	26052015	64	1	Sigma	Ms.Rose
Name8	Male	42	18041999	54	0	Mu	Mr.Peter
Name9	Male	56	11021994	31	1	Eta	Mr.Roose
Dataframe 10

A – as.Date(as.character(dataframe10$Column3),format=”%d%m%Y”)

B – as.Date(dataframe10$Column3,format=”%d%m%Y”)

C -as.Date(as.character(dataframe10$Column3),format=”%d%m%y”)

D -as.Date(as.character(dataframe10$column3),format=”%d%B%Y”)

Solution: A



25). Some algorithms work very well with normalized data. Your task is to convert the Column2 in the dataframe shown below into a normalised one. Which of the following code would not achieve that? The normalised column should be stored in a column named column8.

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24081997	54	0	Alpha	Mr.Sam
Name2	Female	16	30062001	51	1	Beta	Ms.Lilly
Name3	Male	52	10041998	32	0	Gamma	Mr.Mark
Name4	Female	36	17021947	84	1	Delta	Ms.Shae
Name5	Female	45	15031965	32	0	Phi	Ms.Ria
Name6	Male	12	24111989	12	0	Zeta	Mr.Patrick
Name7	Female	32	26052015	64	1	Sigma	Ms.Rose
Name8	Male	42	18041999	54	0	Mu	Mr.Peter
Name9	Male	56	11021994	31	1	Eta	Mr.Roose
dataframe 11

A – dataframe11$Column8<-(dataframe11$Column2-mean(dataframe11$column2))/sd(dataframe11$Column2)

B – dataframe11$Column8<-scale(dataframe11$Column2)

C – All of the above

Solution: C

Option A describes simply the mathematical formula for standarization i.e x – µ/s



26). dataframe12 is the output of a certain task. We wish to save this dataframe into a csv file named “result.csv”. Which of the following commands would help us accomplish this task?

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24081997	54	0	Alpha	Mr.Sam
Name2	Female	16	30062001	51	1	Beta	Ms.Lilly
Name3	Male	52	10041998	32	0	Gamma	Mr.Mark
Name4	Female	36	17021947	84	1	Delta	Ms.Shae
Name5	Female	45	15031965	32	0	Phi	Ms.Ria
Name6	Male	12	24111989	12	0	Zeta	Mr.Patrick
Name7	Female	32	26052015	64	1	Sigma	Ms.Rose
Name8	Male	42	18041999	54	0	Mu	Mr.Peter
Name9	Male	56	11021994	31	1	Eta	Mr.Roose
dataframe 12

A – write.csv(“result.csv”, dataframe12)

B – write.csv(dataframe12,”result.csv”, row.names = FALSE)

C – write.csv(file=”result.csv”,x=dataframe12,row.names = FALSE)

D – Both 2 and 3.

Solution: C



27) y=seq(1,1000,by=0.5)

What is the length of vector y ?

A – 2000

B – 1000

C – 1999

D – 1998

Solution: C



28). The dataset has been stored in a variable named dataframe13. We wish to see the location of all those persons who have “Ms” in their names stored in Column7. Which of the following code will not help us achieve that?

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24081997	54	0	Alpha	Mr.Sam
Name2	Female	16	30062001	51	1	Beta	Ms.Lilly
Name3	Male	52	10041998	32	0	Gamma	Mr.Mark
Name4	Female	36	17021947	84	1	Delta	Ms.Shae
Name5	Female	45	15031965	32	0	Phi	Ms.Ria
Name6	Male	12	24111989	12	0	Zeta	Mr.Patrick
Name7	Female	32	26052015	64	1	Sigma	Ms.Rose
Name8	Male	42	18041999	54	0	Mu	Mr.Peter
Name9	Male	56	11021994	31	1	Eta	Mr.Roose
dataframe13

A – grep(pattern=”Ms”,x=dataframe13$Column7)

B – grep(pattern=”ms”,x=dataframe13$Column7, ignore.case=T)

C – grep(pattern=”Ms”,x=dataframe13$Column7,fixed=T)

D – grep(pattern=”ms”,x=dataframe13$Column7,ignore.case=T,fixed=T)

Solution- D

In option D, we tell the function to find the match irrespective of lower or upper case i.e. it just matches the spelling the and return the output.



29). The data below has been stored in a variable named dataframe14. We wish to find and replace all the instances of Male in Column1 with Man. Which of the following code will not  help us do that?

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24081997	54	0	Alpha	Mr.Sam
Name2	Female	16	30062001	51	1	Beta	Ms.Lilly
Name3	Male	52	10041998	32	0	Gamma	Mr.Mark
Name4	Female	36	17021947	84	1	Delta	Ms.Shae
Name5	Female	45	15031965	32	0	Phi	Ms.Ria
Name6	Male	12	24111989	12	0	Zeta	Mr.Patrick
Name7	Female	32	26052015	64	1	Sigma	Ms.Rose
Name8	Male	42	18041999	54	0	Mu	Mr.Peter
Name9	Male	56	11021994	31	1	Eta	Mr.Roose
dataframe 14

A – sub(“Male”,”Man”,dataframe14$Column1)

B – gsub(“Male”,”Man”,dataframe14$Column1)

C – dataframe14$Column1[which(dataframe14$Column1==”Male”)]=”Man”

D – None of the above.

Solution: D

Try running these codes at your end. Every option will do this task gracefully.



30) Which of the following command will display the classes of each column for the following dataframe ?

 	Column1	Column2	Column3	Column4	Column5	Column6	Column7
Name1	Male	12	24081997	54	0	Alpha	Mr.Sam
Name2	Female	16	30062001	51	1	Beta	Ms.Lilly
Name3	Male	52	10041998	32	0	Gamma	Mr.Mark
Name4	Female	36	17021947	84	1	Delta	Ms.Shae
Name5	Female	45	15031965	32	0	Phi	Ms.Ria
Name6	Male	12	24111989	12	0	Zeta	Mr.Patrick
Name7	Female	32	26052015	64	1	Sigma	Ms.Rose
Name8	Male	42	18041999	54	0	Mu	Mr.Peter
Name9	Male	56	11021994	31	1	Eta	Mr.Roose
A – lapply(dataframe,class)

B – sapply(dataframe,class)

C – Both 2 and 3

D – None of the above

Solution: C

The only difference in the answer of lapply and sapply is that lapply will return a list and sapply will return a vector/matrix.



31).The questions below deal with the tidyr package which forms an important part of the data cleaning task in R.

Which of the following command will combine Male and Female column into a single column named Sex and create another variable named Count as the count of male or female per Name.

Name	Male	Female
A	1	6
B	5	9
Initial dataframe

Name	Sex	Count
A	Male	1
B	Male	5
A	Female	6
B	Female	9
Final dataframe

A – collect(dataframe,Male:Female,Sex,Count)

B – gather(dataframe,Sex,Count,-Name)

C – gather(dataframe,Sex,Count)

D – collect(dataframe,Male:Female,Sex,Count,-Name)

Solution: B



32). The dataframe below contains one category of messy data where multiple columns are stacked into one column which is highly undesirable.

Sex_Class	Count
Male_1	1
Male_2	2
Female_1	3
Female_2	4
Which of the following code will convert the above dataframe to the dataframe below ? The dataframe is stored in a variable named dataframe.

Sex	Class	Count
Male	1	1
Male	2	2
Female	1	3
Female	2	4
A – separate(dataframe,Sex_Class,c(“Sex”,”Class”))

B – split(dataframe,Sex_Class,c(“Sex”,”Class”))

C – disjoint(dataframe,Sex_Class,c(“Sex”,”Class”))

D – None of the above

Solution: A



33). The dataset below suffers from a problem where variables “Term” and “Grade” are stored in separate columns which can be displayed more effectively. We wish to convert the structure of these variables into each separate variable named Mid and Final.

Name	Class	Term	Grade
Alaska	1	Mid	A
Alaska	1	Final	B
Banta	2	Mid	A
Banta	2	Final	A
Which of the following code will convert the above dataset into the one showed below? The dataframe is stored in a variable named dataframe.

Name	Class	Mid	Final
Alaska	1	A	B
Banta	2	A	A
A – melt(dataframe, Term, Mid,Final,Grade)

B – transform(dataframe,unique(Term),Grade)

C – spread(dataframe,Term,Grade)

D – None of the above

Solution: C



34). The ________ function takes an arbitrary number of arguments and concatenates them one by one into character strings.

A – copy()

B – paste()

C – bind()

D – None of the above.

Solution: B





Solution:D



36) What will be the output of the following code ?

> x <- 1:3
> y <- 10:12
> rbind(x, y)

1-  [,1] [,2] [,3] x      1      2    3
y     10    11  12

2-  [,1] [,2] [,3] x       1     2     3
y      10 11

3-  [,1] [,2] [,3] x       1     2     3
y       4     5     6

4 –  All of the above

Solution: A


37). Which of the following method make vector of repeated values?

A – rep()

B – data()

C – view()

D – None of the above

Solution: A


38). Which of the following finds the position of quantile in a dataset ?

A – quantile()

B – barplot()

C – barchart()

D – None of the Above

Solution: A


39) Which of the following function cross-tabulate tables using formulas ?

A – table()

B – stem()

C – xtabs()

D – All of the above

Solution: D


40) What is the output of the following function?

>     f <- function(num = 1) {
                 hello <- "Hello, world!\n"
        for(i in seq_len(num)) {
                  cat(hello)
         }
         chars <- nchar(hello) * num
         chars
 }

> f()
A – Hello, world!

14

B – Hello, world!\n

14

C – Hello, world!

13

D – Hello, world!\n

13

Solution: A



41- Which is the missing value from running the quantile function on a numeric vector in comparison to running the summary function on the same vector ?

A – Median

B – Mean

C – Maximum

D – Minimum

Solution: B


42- Which of the following command will plot a blue boxplot of a numeric vector named vec?

A – boxplot(vec,col=”blue”)

B – boxplot(vec,color=”blue”)

C – boxplot(vec,color=”BLUE”)

D – None of the above

Solution: A



43- Which of the following command will create a histogram with 100 buckets of data ?

A – hist(vec,buckets=100)

B – hist(vec,into=100)

C – hist(vec,breaks=100)

D – None of the above

Solution: C



44- What does the “main” parameter in barplot command does ?

A – x axis label

B – Title of the graph

C – I can’t tell

D – y axis label

Solution: B



45- The below dataframe is stored in a variable named sam:

A	B
12	East
15	West
13	East
15	East
14	West
We wish to create a boxplotin a single line of code per B i.e a total of two boxplots (one for East and one for West). Which of the following command will achieve the purpose ?

A – boxplot(A~B,data=sam)

B – boxplot(A,B,data=sam)

C – boxplot(A|B,data=sam)

D – None of the above

Solution: A


46- Which of the following command will split the plotting window into 3 X 4 windows and where the plots enter the window row wise.

A – par(split=c(3,4))

B – par(mfcol=c(3,4))

C – par(mfrow=c(3,4))

D – par(col=c(3,4))

Solution – C



47- A dataframe named frame contains two numerical columns named A and B. Which of the following commands will draw a scatter plot between the two columns of the dataframe?

A – with(frame,plot(A,B))

B – plot(frame$A,frame$B)

C – ggplot(data = frame, aes(A,B))+geom_point()
D – All of the above

Solution: D


48- The dataframe below is stored in a variable named frame.

A	B	C
15	42	East
11	31	West
56	54	East
45	63	East
12	26	West
Which of the following command will draw a scatter plot between A and B differentiated by different color of C like the one below.

Q.8 Image 1

A – plot(frame$A,frame$B,col=frame$C)

B – with(frame,plot(A,B,col=C)

C- 1 and 2

D- None of the above.

Solution: A



49- Which of the following does not apply to R’s base plotting system ?

A – Can easily go back once the plot has started.(eg: to change margins etc)

B – It is convenient and mirrors how we think of building plots and analysing data

C – starts with plot(or similar) function

D – Use annotation functions to add/modify (text, lines etc)

Solution: A



The following questions revolve around the ggplot2 package, which is the most widely used plotting package used in the R community and provides great customisation and flexibility over plotting.

50- Which of the following function is used to create plots in ggplot2 ?

A – qplot

B – gplot

C – plot

D – xyplot

Solution: A



51- What is true regarding the relation between the number of plots drawn by facet_wrap and facet_grid ?

A – facet_wrap > facet_grid

B – facet_wrap < facet_grid

C – facet_wrap <= facet_grid

D – None of the above

Solution: C



52- Which function in ggplot2 allows the coordinates to be flipped? (i.e x bexomes y and vice-versa) ?

A – coordinate_flip

B – coord_flip

C – coordinate_rotate

D – coord_rotate

Solution: B



53- The below dataset is stored in a variable called frame.

A	B
alpha	100
beta	120
gamma	80
delta	110
Which of the following commands will create a bar plot for the above dataset with the values in column B being the height of the bar?

A – ggplot(frame,aes(A,B))+geom_bar(stat=”identity”)

B – ggplot(frame,aes(A,B))+geom_bar(stat=”bin”)

C – ggplot(frame,aes(A,B))+geom_bar()


D – None of the above

Solution: A



54- The following dataframe is stored in a variable named frame and is a subset of a very popular dataset named mtcars.

qa

We wish to create a stacked bar chart for cyl variable with stacking criteria being vs variable .which of the following commands will help us do this ?

A – qplot(factor(cyl),data=frame,geom=”bar”,fill=factor(vs))

B – ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar()

C – All of the above

D – None of the above

Solution: C



55 – The question is same as above . The only difference is that you have to create a dodged bar chart instead of a stacked one. Which of the following command will help us do that ?

A – qplot(factor(cyl),data=frame,geom=”bar”,fill=factor(vs),position=”dodge”)

B – ggplot(mtcars,aes(factor(cyl),fill=factor(vs)))+geom_bar(position=”dodge”)

C – All of the above

D – None of the above

Solution: B

