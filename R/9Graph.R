## I got lot of problem in installling this version
##install.packages("/home/hadoop/ape_4.0.tar.gz", repos=NULL,type="source")
## this gave error of verison.
## first of all we need :w !sudo tee % to change a readonly file. then type :q! to exit 
## Need to add following lines in the /etc/apt/sources.list
## deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu trusty/
## sudo apt-get update
## sudo apt-get install r-base
## sudo apt-get install r-base-dev

## Now we will learn to display different type of graph.

## Association Plot
## This is the marriage data of tall,medium and short height people.
## Association plot of data
## The area of boxes are proportional to the difference in observed and expected frequency
## boxes above line shows positive association.( more than expected)
## boxes below line shows negative association. ( less than expected)

install.packages(vcd)
library(vcd)	

install.packages(graphics)
library(graphics)
require{graphics}

M<-as.table(cbind(c(18,28,14),c(20,51,28),c(12,25,9)))
dimnames(M)<-list(husband=c("Tall","Medium","Short"), Wife = c("Tall","Medium","Short"))
assocplot(M, col=c("green","red"))


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

## Mosaic Plot
## This is the data of smallpox in five cities of UK below and above 10 years of age
## Mosaic Plot

mosaicplot(data, color=1:4)
mosaicplot(data, color=2:5,las=1)

###########################################################################################
## Dendogram, Radial, Cladogram, Unrooted, fan
## They are helpful in exploring similarities using trees.
###########################################################################################

install.packages("ape")
require("ape")

## download the crime2005.csv
setwd("home/hadoop/Nikita")
rawdata<-read.csv("crime2005.csv",header=TRUE)
rownames(rawdata)=data[1:10,1]
## dist will calculate the distance of each entity and pass it to hierarchical cluster analysis.
hc<-hclust(dist(rawdata[1:30,]),"average") 
## this one is necessary for the radial, cladogram, unrooted, fan
data<-as.phylo(hc)  
plot(hc, edge.color=rainbow(length(hc$edge)/2), tip.color="brown", edge.width = 2, font =2)
title("closeness of crime aross eleven US states", line=-29, cex.main=1.8)
title(" (US census Department - 2005)", line=-30, cex.main=0.8, col = "grey")

axisPhylo(1, las = 1)

plot(data,edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "radial", no.margin=TRUE, cex=0.8)
plot(data,edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "cladogram", no.margin=TRUE, cex=0.8)
plot(data,edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "unrooted", no.margin=TRUE, cex=0.8)
plot(data,edge.color=rainbow(length(data_dist$edge)/2) , tip.color="brown", edge.width = 2, font =2, type = "fan", no.margin=TRUE, cex=0.8)

## Tree Maps and market map data
## Tree map is a graphical form used to represent hierarchical data. Example population data may be gathered at the level of countries,
## and then for continents. 

require(treemap)

setwd("home/hadoop/Nikita")
data<-read.csv("countries.csv",header=TRUE, sep=",")
## id,Name, name(german), name(local), code, continent,capital,  population, area, coastline, govt, currency, code, dialing, brate,drate,life exp
data_n<-data[,c(1,2,5,6,8,9)]
install.package("portfolio")
library(portfolio)
z=rank(data$Population)

map.market(id=data_n$Code, area=data_n$Area, group = data_n$Continent, color= z, main="Population map")

data<-read.csv("countries.csv",header=TRUE, sep=",")
data_n<-data[ ,c(1,2,5,6,8,9)]
treemap(data_n, index=c("Continent","Country"),vSize="Area",vColor="Population",type="value")


## Contour plot of Iris data

install.packages("extracat")
install.packages("reshape")
require(extracat)
require(reshape)
tips
boxplot2g(tips$total_bill,tips$tip,tips$day)

##casestudy5 
## treemap-1
## Corrleation visulations
## corrleation network

install.packages("performanceAnalytics")
install.packages("tseries")

## Bubble plot

require(datasets)
require(graphics)

nations<-c("Chile","Denmark","Greece","Iceland")
savings<-c(1000,2000,3000,4000)
rate<-c(2,4,6,8)
data<-as.table(rbind(nations,savings,rate))

par(bg="white")
plot(0:10,0:10,type="n", xlab="Personal rate",ylab="Growth rate",frame.plot=F)
symbols(data$1,data$2,circles=sqrt(data$pop15/pi), fg="white", inches=0.25, bg="orange", add=T)


## correlation plot
install.packages("qgraph")
library(qgraph)

data <- read.table("/home/hadoop/Nikita/soil_15nov_ANN.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)
data_n=data[,3:10]
cor=cor(data_n)
qgraph(cor,shape="circle", posCol="darkgreen", negCol="darkred",layout="spring",vsize=10, minimum =0.5)


## rosegraph

install.packages("openair")
require(openair)

data(mydata)
pollutant<-c("co")
title=c("Carbon mono oxide concentration in London")
sub=c("1-jan-1998 to 23 June 2005")
pollutionRose(mydata,pollutant=pollutant)

## with two pollutants
## We need a function which will convert general data to rosemap

temp_data=cbind(mydata$wd,mydata$ws)



## WordCloud

library(wordcloud)
library(tm)
## we will read a text and prepare corpus from the text.
## then pass this corpus to the wordcloud and it will arrange the
## size of word according to it s frequency.
text <- read.table("/home/hadoop/Nikita/word.csv", header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
library(wordcloud)
par(bg="black")
wordcloud(text$text, text$count,random.order=FALSE,min.freq=5, color="gold")


## Map of Countries and Continents

install.packages("maps")
library(maps)

## To create Americal map with boundries

## World map with particular country

## Country map with internal boundries

## country map with particular state or city

















