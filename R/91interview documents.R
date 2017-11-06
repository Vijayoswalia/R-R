## What is R Programming?

R is a programming language meant for statistical analysis and creating graphs for this purpose.Instead of data types, it has data objects which are used for calculations. It is used in the fields of data mining, Regression analysis, Probability estimation etc., using many packages available in it.


## What are the different data objects in R?

There are 6 data objects in R. They are vectors, lists, arrays, matrices, data frames and tables.

## What makes a valid variable name in R?

A valid variable name consists of letters, numbers and the dot or underline characters. The variable name starts with a letter or the dot not followed by a number. 

## What is the main difference between an Array and a matrix?

A matrix is always two dimensional as it has only rows and columns. But an array can be of any number of dimensions and each dimension is a matrix. For example a 3x3x2 array represents 2 matrices each of dimension 3x3.

## Which data object in R is used to store and process categorical data?

The Factor data objects in R are used to store and process categorical data in R.

## How can you load and use csv file in R?

A csv file can be loaded using the read.csv function. R creates a data frame on reading the csv files using this function

## How do you get the name of the current working directory in R?

The command getwd() gives the current working directory in the R environment

## What is R Base package?

This is the package which is loaded by default when R environment is set. It provides the basic functionalities like input/output, arithmetic calculations etc. in the R environment.

## How do you access the element in the 2nd column and 4th row of a matrix named M?

The expression M[4,2] gives the element at 4th row and 2nd column.

## What is recycling of elements in a vector? Give an example.

When two vectors of different length are involved in a operation then the elements of the shorter vector are reused to complete the operation. This is called element recycling. Example - v1 <- c(4,1,0,6) and V2 <- c(2,4) then v1*v2 gives (8,4,0,24). The elements 2 and 4 are repeated.

## What are different ways to call a function in R?

We can call a function in R in 3 ways. First method is to call by using position of the arguments. Second method id to call by using the name of the arguments and the third method is to call by default arguments.


## What is lazy function evaluation in R?

The lazy evaluation of a function means, the argument is evaluated only if it is used inside the body of the function. If there is no reference to the argument in the body of the function then it is simply ignored.


## How do you install a package in R?

install.packages("package Name")

## Can we update and delete any of the elements in a list?

## Give the general expression to create a matrix in R.

##The general expression to create a matrix in R is - matrix(data, nrow, ncol, byrow, dimnames)














































