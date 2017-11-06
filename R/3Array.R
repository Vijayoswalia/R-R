############################Array#############################
###############################################################
## Array can be created by following method.
## method 1 by array
  a<-array(1:40,c(2,2,10), dimnames=list(c("A","B"),c("Scince","Maths"),
  c(2001:2010)))

## method 2 by matrix
 m<-matrix(1:40,4,10,byrow=T)
 a<-array(m,c(2,2,10))

## method 3 by vector
## first create a vector of data then add dimensions to this data
  a<-1:40
  dim(a)<-c(2,2,10)


##Access


a[1,1,]
a[,,1]


## properties
class(a)
dim(a)
attributes(a) ## It will return the dimensions and dimnames

colnames(a)
rownames(a)
dimnames(a)

dimnames(a)[[1]]
dimnames(a)[[2]]
dimnames(a)[[3]]

a<-array(1:8,c(2,2,2))
b<-array(1:8,c(2,2,2))

a*b  ## it will multiple each element with respective eement.
a/b  ## it will divide each element with respective element
a%*%b  ## true matrix multiplication like in mathematic



