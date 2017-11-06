##A list can store any thing.

a<-list(“Jow”,1001,c(45,55,60,70,90))
b<-list(“Ana”,1002,c(65,75,90,70,90))
c<-list(“Amy”,1003,c(80,80,70,60,90))

l<-list(Jow=a, Ana=b,Amy=c)

##now l[1]  will return the first element of list in a form of list which is (“Jow”,1001,c(45,55,60,70,90))
##l[[1]] will return the first element of list in the form of 3 vectors.

##l[[1]][1] It will return the first element of first element of list which is Jow in the form of list
##l[[1]][[1]] It will return the first element of first element of list in the form of vector

##l[[1]][3] It will return the third element of first element of list in the form of list. So (45,55,60,70,90) is one element of list. You can not access each element separately unless converted to vector.
##l[[1]][[3]]  It will return third element of first element of list in the form of vector. Now since it is a vector, you can access each     element separately
## l[[1]][[3]][1] It will return 45

##. [ always returns an object of the same class as the original; can be used to select more than one element.
##.[[ is used to extract elements of a list or a data frame; it can only be used to extract a single element and the class
##  of the returned object will not necessarily be a list or data frame.
##.$ is used to extract elements of a list or data frame by name; semantics are similar to hat of [[.


## Adding components to the list

l[[4]]<-28
l[5:7]<-c(FALSE, TRUE, TRUE)

## removing components

l$c<-NULL

## to unlist the list

unlist(l)  ## converts list to vectors
unname(l) ## remove the names of list

## Merge list

list1<-list(d1="Sun",d2="Mon")
list2<-list(d3="Tue",d4="Wed",d5="Thr",d6="Fri",d7="Sat")
list<-c(list1,list2)
list
$d1
[1] "Sun"

$d2
[1] "Mon"

$d3
[1] "Tue"

$d4
[1] "Wed"

$d5
[1] "Thr"

$d6
[1] "Fri"

$d7
[1] "Sat"

list[8:9]<-c("ho","hu")

list
$d1
[1] "Sun"

$d2
[1] "Mon"

$d3
[1] "Tue"

$d4
[1] "Wed"

$d5
[1] "Thr"

$d6
[1] "Fri"

$d7
[1] "Sat"

[[8]]
[1] "ho"

[[9]]
[1] "hu"






