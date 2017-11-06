############################matrix#############################
###############################################################
## Matrix can be created in following methods
## method 1
  m<-matrix(c(45,50,55,60),2,2)

## method 2
  m<-matrix(1:6,nrow=2,ncol=2)

## method 3
## first create a vector of data then add dimensions to this data
  m<-1:10
  dim(m)<-c(2,5)




## method 4

x<-1:3
y<-10:12

cbind(x,y)   ## it will make x and y as columns of matrix.
rbind(x,y)   ## it will make x and y as rows of matrix.

## method 5

m<-matrix(nrow=2, ncol=2)
m[1,1]= 2
m[1,2]= 3
m[2,1]= 4
m[2,2]= 5

## We saw that matrix is filled columnwise. To do otherwise set byrow=TRUE
## Class and attributes of matrix

class(m)
attributes(m)
dim(m)
colnames(m)
rownames(m)


## Addding names to the matrix.
## We can provide name to columns as well as rows
dimnames(m)<-list(c("Sumit","Nikita"),c("R","C"))
m  ## matrix will be printed along with names
m["Sumit","R"]
m[1,1]

## dimensions of matrix
dim(m)

## Matrix addition and multiplication
x<-matrix(1:4,2,2);
y<-matrix(rep(10,4),2,2);

x*y  ## it will multiple each element with respective element.
x/y  ## it will divide each element with respective element
x%*%y  ## true matrix multiplication like in mathematics

##Filtering matrix

x<-matrix(1:6,nrow=3,ncol=2)

1 4
2 5
3 6

x[x[,]>=2 & x[,]<=5]

[1] 2 3 4 5

## Another example
x<-matrix(1:12,nrow=3,ncol=4)

> x[,4]>=10
[1] TRUE TRUE TRUE

> x[3,]>=3
[1] TRUE TRUE TRUE TRUE


> x[2:3,3:4]
     [,1] [,2]
[1,]    8   11
[2,]    9   12

> x[c(TRUE,FALSE)]
[1]  1  3  5  7  9 11

> x[1,,drop=FALSE]  # now the result is a 1X3 matrix rather than a vector
    [,1] [,2] [,3]
[1,]    1    4    7   10

> x[-1,-1]

## modifying the matrix

m[1,1]<-10

m[m<4]<-1

## transpose a matrix

t(m)

## diagonal matric

diag(m)

## Solve a set of equations/inverse(m)

x+2y=7
3x+y=11

a=matrix(c(1,3,2,1),2,2)
b=matrix(c(7,11),2,1)

solve(a,b)

When b is not given then it will return the inverse of a

## Eigenvalue and Eigenvectors

e<-eigen(m)

e$value
e$vector

## determinant of Matrix

det(m)










