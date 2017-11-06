
#######################################################################################################
                                 GRAPHS
#######################################################################################################

## We can send a graph to a output file.

pdf("mygraph.pdf") 	     ##pdf file
win.metafile("mygraph.wmf")  ##windows metafile
png("mygraph.png") 	     ##png file
jpeg("mygraph.jpg") 	     ##jpeg file
bmp("mygraph.bmp") 	     ##bmp file
postscript("mygraph.ps")     ##postscript file
dev.off() ## Will return output to terminal

## We can divide the screen into parts and accordingly display graph in each part

mat <- matrix(c(1,2),2,1)
layout(mat)
layout.show(2)
mat <- matrix(c(1,2,3,4,),2,2)
layout(mat)
layout(mat,widths=c(1,3),heights=c(3,1)) ## change the dimension of eachs section of screen
layout.show(4)
mat <- matrix(c(1,2,3,4,4,4),3,2)
layout(mat)
layout.show(4)



Example
######################################################################
pdf("myplot.pdf")   ## for sending output to file
layout(matrix(c(1,1,2,3), 2, 2))  ##Set the layout of output screen
x<-c(1,2,2,3,4,5,5,6,7,8,8,8,9,9,9,10,10)
plot(x)
hist(x)
boxplot(x)
dev.off()  ## bring control back to console
######################################################################


## Graphs for group data
######################################################################
## 1. Histogram
######################################################################
##R groups the data into bins so that reasonable number of data points falls in each bin.
## or histograms are the groups are typically intervals of another continuous variable.
##i.e hist plot the frequency of the data

x<-c(21,22,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40)
hist(x,xlab="weight",ylab="freq",xlim=c(20,40),ylim=c(0,5),breaks=c(20,24,28,32,36,40), density=10,angle=45, col="blue", border="red",plot=TRUE,
labels=c("lw","lw","mw","hw","hw")

##x= vector of data
##breaks = vector giving breakpoints between histogram cells. like c(21,23,34,38,40) or c(21,25,30,35,40)
##       = function to compute the vector of breakpoints
##freq= TRUE(hist is representation of frequency)/FALSE (probability density function is plotted)
##density= density of tilted lines in the bar (lines per inch)/NULL means no line is drawn
##angle=angle of tilted lines
##border= border of bar
##col=colour of
lines
##border=colour of border around the bars
##labels=character string/draw labels on the top of bars

######################################################################
## 2. Scatter Plot
## They pair up value of two quantitative variables in a dataset and display
## them as points in cartersian diagram
######################################################################
## There are many ways for creating scatter plot.
1) plot
2) scatterplot
3) scatterplot3D

##1) plot
x<-c(25,34,45,67,89)
y<-c(30,35,40,50,70)
plot(x,y, type="b", xlab="Maths Marks", ylab="Stat Marks")

##Type can have following value
##1) p for points
##2) l for lines
##3) b for both
##4) h for histogram
##5) s for stairs
##6) n for no plotting

##2) scatterplot
##scatterplot(formula, data, subset, xlab, ylab, reg.line, boxplots, labels)
## formula - formula of relationship between variables
## data - dataset
## subset - subset of data
## xlab - label of x axis
## ylab - label of y axis
## reg.line - flag to display regression line
## boxplots - flag to display boxplots
## It has boxplots in the margins, regression line, outlier identification,

scatterplot(prestige ~ income, data=Prestige, ellipse=TRUE, reg.line=TRUE)


##3) scatterplot3D
##scatterplot3d(x, y, z,main="Title", sub="Sub title",
##               xlim=c(x,y), ylim=c(x,y), zlim=c(x,y)
##               xlab="label of x axis", ylab="label of y axis", zlab="label of z axis",
##               scale.y=1, angle=40 (angle between x and y axis),
##               axis=TRUE (if axis needs to be drawn), tick.marks=TRUE, label.tick.marks=TRUE,
##               col.axis="blue", col.grid="blue", col.lab="blue",color="red")

install.packages("scatterplot3d")
install.packages("cars")
require("scatterplot3d")
load("Prestige")

##prepare dataset in 3 dimensions
time=c(25,37,49,61,73,85,97,109,121,133,145,157,169,181,193,205,217)
count1=c(0,7,9,12,7,30,8,12,33,16,16,30,29,19,28,29,11)
mass1=c(220,110,210,340,330,560,635,80,605,150,688,422,1511,642,681,1961,1645)
scatterplot3d(count1,time,mass1,angle=30,highlight.3d=FALSE,
              axis=TRUE,tick.marks=TRUE,label.tick.marks=TRUE,
              col.axis="blue", col.grid="red",col.lab="blue" color="red")


##Multiple scatter plot


pairs(~education+income+women+prestige, data=Prestige,main="scatterplot Matrix")


######################################################################
## 3. Pie-Chart
######################################################################
## pie charts are best way if we want to display percentage of various things.

##pie(data,labels,edges,radius,clockwise=TRUE/FALSE,density,angle,col,border)
##data = data for the pie charts
##labels = labels of the data
##edges= number of edges in case chart is in the form of polygon
##radius= radius of circle from -1 to +1
##clockwise= data will be displayed clockwise or anticlockwise

head<-c("coal","wind","water","solar","Nuclear")
pieval<-c(40,8,5,3,24,20)
percent <- round(val/sum(val)*100) ## in case values are not in percent.
pielabels<-paste(head, paste(val, "%", sep="") , sep="-")
pie(pieval,pielabels,radius=1,clockwise=TRUE,density=10,angle=45,col="pink",border="blue")


## for 3d pie charts
##pie3D(data, edges, radius, height,border,col, labels, labelcol, explode)
##data 	   a numeric vector for which each value will be a sector
##edges    the number of lines forming an ellipse
##radius   the radius of the pie in user units
##height   the height of the pie in user units
##border   The color of the sector border lines
##col 	   The colors of the sectors
##labels    Optional labels for each sector
##labelpos  Optional positions for the labels
##labelcol  The color of the labels
##explode   The amount to "explode" the pie in user units

library(plotrix)
pieval<-c(2,4,6,8)
pielabels<-  c("We hate\n pies","We oppose\n  pies","We don't\n  care","We just love pies")
pie3D(pieval,radius=0.9,labels=pielabels,explode=0.1,main="3D PIE OPINIONS")

######################################################################
## 4. Bar Chart
######################################################################
##In bar charts, the groups are typically categorical variables.

barplot(val,width, space, beside,horiz,xlab,ylab,main,names.arg,col)

sales<-c(30,50,55,30,35,45,50,52,55,70,56,89)
month<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
barplot(sales,names.arg=month,width=1,space=1,xlab="Month",ylab="Sales")

sales1<-c(35,45,20,65,38,74,45,60,50,80,40,60)
Sales2<-c(30,50,55,30,35,45,50,52,55,70,56,89)
month<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
sale<-rbind(sales1,sales2)
barplot(sale,names.arg=month,xlab="Month",ylab="Sales",beside=TRUE/FALSE, horiz=FALSE,col=c("blue","green"),border="red")



######################################################################
## 5. Boxplots
## A boxplot provides a graphical view of the median, quartiles, maximum, and minimum of a data set.
######################################################################

## Boxplots
load("Prestige")
boxplot(Prestige$income,data=Prestige,col="blue")
category<-factor(Prestige$type)
boxplot(Prestige$income~category,data=Prestige,col="blue") ## A better way of viewing data as per category

######################################################################
## 6. Q-Q chart
## Normal quantile plot. This plot is used to determine if our data is close to being normall distributed.
######################################################################

## Normal QQ plot
qqnorm(Prestige$income, col="blue")
qqline(Prestige$income, col="red")


######################################################################
## 7. Association plot
## The area of boxes are proportional to the difference in observed and expected frequency.
## boxes above line shows positive association.( more than expected)
## boxes below line shows negative association. ( less than expected)
######################################################################

M<-as.table(cbind(c(18,28,14),c(20,51,28),c(12,25,9)))
dimnames(M)<-list(husband=c("Tall","Medium","Short"), Wife = c("Tall","Medium","Short"))
assocplot(M, col=c("green","red"))


######################################################################
## 7. Spline plot
######################################################################

## Spline Plot
## This is the data of smallpox in five cities of UK below and above 10 years of age
## Spline plot

r1=c(7.9 ,67.6,28.3,53.6)
r2=c(4.4 ,54.5,29.9,57.6)
r3=c(10.2,50  ,27.7,53.4)
r4=c(2.5 ,35.3,22.2,47 )
r5=c(8.5 ,46.3,32.2,50 )

data<-as.table(rbind(r1,r2,r3,r4,r5))

dimnames(data)<-list(Town = c("Sheffield","Warrington","Dewsbury","Leicester","Gloucester"),
                     Vaccinated=c("Yes(<10)","No(<10)","Yes(>10)","No(>10)"))

spineplot(data)

######################################################################
## 8. Mosaic Plot
## This is the data of smallpox in five cities of UK below and above 10 years of age
## Mosaic Plot
######################################################################

mosaicplot(data, color=1:4)
mosaicplot(data, color=2:5,las=1)

######################################################################
## 9.Dendogram, Radial, Cladogram, Unrooted, fan
######################################################################

install.packages("ape")
require("ape")
##download the crime2005.csv
## Place crime2005.csv in your working folder and set the path( if required)
setwd("home/hadoop")
data<-read.csv("crime2005.csv",header=TRUE)

rownames(data)=data[,1]
hc<-hclust(dist(data),"average")  ## dist will calculate the distance of each entity.
data_dist<-as.phylo(hc)   ## this one is necessary for the radial, cladogram, unrooted, fan
plot(hc, edge.color = rainbow(length(hc$edge)/2), tip.color="brown", edge.width = 2, font =2)
title("closeness of crime aross eleven US states", line=-29, cex.main=1.8)
title(" (US census Department - 2005)", line=-30, cex.main=0.8, col = "grey")

axisPhylo(1, las = 1)

plot(data_dist, edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "radial", no.margin=TRUE, cex=0.8)
plot(data_dist, edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "Cladogram", no.margin=TRUE, cex=0.8)
plot(data_dist, edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "Unrooted", no.margin=TRUE, cex=0.8)
plot(data_dist, edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "fan", no.margin=TRUE, cex=0.8)


## Basic graphics with R

In the graphics model that R uses, there is (for a single plot) a figure region
containing a central plotting region surrounded by margins. Coordinates
inside the plotting region are specified in data units (the kind generally
used to label the axes).

## Plot the x axis and y axis without any data.
plot(0:20,0:20,type="n", xlab="Maths Marks",ylab="Stat Marks" , main="Plotting of Maths and Stat marks",sub="subtitle")

Type can have following value
1) p for points
2) l for lines
3) b for both
4) h for histogram
5) s for stairs
6) n for no plotting


Inside the plotting region you can place points and lines that are either
specified in the plot call or added later with points and lines. You
can also place a text with text

##) Adding symbols to the graph

symbols(x,y,circles, squares, stars, thermometers, boxplots, inches, fg, bg, xlab, ylab, main, xlim ylim)

circles :  Vector giving radii of circles
squares: vector giving side of square
stars: matrix with 	3 or more columns to define the length of rays
rectangle : matrix with 2 column for length and bredth
boxplot: matrix with 5 columns- length, breadth, lower-upper whiskers, proportion
inches :  Will limit the size of circle.

##) Adding points to graph

point(x,y,type="o",  pch=21, bg="light blue", fg="green" cex=.6)

pch : It control the shape of point

32:127 for ASCII value

64     for A
70     for F
85     for U
97     for a
122    for z
19     for Solid circle
20     for bullet
21     for filled circle
22     for filled square
23     for filled diamond
24     for filled triangle point up
25     for filled triangle point down


##) Adding lines to graph

lines(x,y, type="l", lwd, col, lend, ljoin, lmitre)

##) Adding a polygon to the graph

polygon(x,y,col, density, ...)

##1) cex function allow to shrink or expand the character or symbol in a graph

text(2.5,4,"Graph", cex=1.5)

##2) Add title  this will add title to the graph where col.main defines the colour and cex.main defines the size

title("class X",col="black",line=1,cex=2)
title("Comparison of Stat and Maths marks",col="black",line=2,cex=2)

##3) bg and fg helps to change the foreground and background color of text,line,symbol,title etc
par(bg="white")
par(fg="blue")

##4) Add legend to the graph

legend(14,70,c("English","Stat","Maths"),col=c(1,2,4), pch=c(1,3,5))


## Example 1 :Example of creating graph
##################################################################
x<-c(10,20,30,40,50)
y<-c(15,25,35,45,55)
z<-c(10,20,30,40,50)
plot(1:100,1:100, type="n", xlab="Marks", ylab="Student")
points(x,z,type="o",pch=1,col=1)
points(y,z,type="o",pch=3,col=2)
legend(14,70,c("English","Stat","Maths"),col=c(1,2,4), pch=c(1,3,5))
##################################################################
x




