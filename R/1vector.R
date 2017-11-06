############################vector#############################

# Method 1 #  A vector can be created by command vector

v<-vector(length=2)
v[1]<-5
v[2]<-12

# Method 2 # A vector is one dimesnional set of data
v<-c(1:6);
v<-c(4,8,9);

# Method3 # seq will generate the seq as per starting value and ending value.
v<-seq(1,10,by=2)

# Method4 # rep will repeat the number given by user
v<-rep(2,10)

# Method5 # by using :
v<-1:20

## Allocating names to all the fields of a vector
names(v)<-c("height","width","length")

## It will return the vector with names
v

## Accessing elements of vecotr

v[1];
v["height"];

## Attributes of vector
v[mode(v);
length(v)


## Other methods of creating vector


## It will repeat the vector (0,1,2) 10 times
rep(c(0,1,2), times=10)  ## 0,1,2,0,1,2,0,1,2,....
rep(c(0,1,2), each = 10) ## 0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2

## It will generate the sequence of numbers 1 to 20
1:20
## It will generate the sequence of numbers pi to 10
pi:10
## It will generate the reverse sequence
15:1
## It will generate the sequnce starting at 5 and ending at 10 of 30 elements. (10-5)/30 will be the difference between each element.
my_seq<-seq(5,10,length=30)
length(my_seq)

## Now to create another vector of same length as my_seq
1:length(my_seq)

## Mathematical operations on vectors.

v<-c(16,36,49)
sqrt(v)      ## It will generate a vector 4 6 7
v/100        ## It will also generate a vector [0.16 0.36 0.49]
v/sqrt(v)*100  ## It will return vector [400 600 700]

## Recycling of vectors

v1<-c(1,2,3,4)
v2<-c(1,2)

v1+v2  ##It will give [2 4 4 6]

v1*v2  ## It will give 1 4 3 8

##If one of the vector is small then R recycles or reuses the vector.


## Accessing the matrix
x<-c("a","b","c","c","d","a")
x[1]  ## first element of matrix
[1] "a"

x[2]  ## second element of matrix
[1] "b"

x[1:4]  ## it will return first to fourth element

[1] "a" "b" "c" "c"

x[x > "a"] ## it will return all elements greater than a
[1] "b" "c" "c" "d"


## last element of vector

x[length(z)]

x[1:length(z)-1] ## last but one element of the vector

v<-c(1,2,3,4,5,6,7,8)

we need element 2 and 8
v[v==2 | v==8]

## Modifying data in vector

v<-c(1,2,3,4,5)

v[2]<-0

## delete a vector

v<-NULL

How to find prime numbers from a vector

## delete an element ??








