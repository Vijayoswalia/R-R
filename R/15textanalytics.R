#########################################################################################################################
                               Problem1  - To find most frequent words from a file.
#########################################################################################################################
install.packages("tm")
install.packages("plyr")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("xlsx")
install.packages("readxl")


## Upload the excel file into the system. It needs an extension as xlsx.
## sometimes it has problem with dates
library(xlsx)
mydata <- read.xlsx("indiamart.xlsx", sheetName = "mysheet") 
library(readxl)
mydata<-read_excel("indiamart.xlsx")

## Create the Corpus
we have data in mydata and text
corpus <- Corpus(VectorSource(mydata$V1))
print(corpus)

## cleaning of corpus
corpus_clean<-tm_map(corpus, tolower)

## Make document matrix

dtm = DocumentTermMatrix(corpus_clean)


## find most frequent word where frequency > 100 and less than 5000

findFreqTerms(dtm,lowfreq=100, highfreq=5000)

## make a word cloud of most frequent word

wordCloud(corpus, min.freq=200, scale=c(5,0.5),random.order=FALSE) ## random.order=FALSE will keep the most frequent words at centre.
wordCloud(corpus, min.freq=500, scale=c(10,0.5),random.order=FALSE) 
wordCloud(corpus, min.freq=1000, scale=c(10,0.5),random.order=FALSE) 





#########################################################################################################################
                               Problem2  - Clustering of the words (Unspervised learning)
There are two methods can be used for this
1)Latent Dirichlet Allocation: Each word in the document contributes to the theme or topic. So we can group documents with 
similar topic and themes. The idea behind LDA is that we assume a fixed number of topics are distributed over the documents 
in the whole collection.
install.packages("topicmodels")
list of unique topics is extracted from data and calculate the probability distribution for each document and 
assign document to the topic having maximum probability


2) Correlated topic model

In LDA occurance of one topic is not related to other topic wheras CTM is a hierarchical model.
IN LDA and CTM, number of topics has to be fixed before modeling a corpus.

3) Latent Symentics analysis


In this experiment we will apply LSA on 10000 documents
#########################################################################################################################
install.packages("ggplot2")
install.packages("lsa")
install.packages("tm")
install.packages("topicmodels")
install.packages("RTextTools")
install.packages("stringdist")

library("RSiteCatalyst")
library("RTextTools")
library(tm)
library(ggplot2)
library(lsa)
library(stringdist)
library("RWeka")

## we use corpus of mydata for this package

mydata<-read.table(file="dev.txt", sep=",",stringsAsFactors=FALSE)
data<-data.frame(mydata[1:100000,1]) ## select 1000 values from data frame
colnames(data)=c("term")
corpus = Corpus(VectorSource(data$term))
corpus = tm_map(corpus, tolower)
corpus = tm_map(corpus, BigramTokenizer)

BigramTokenizer <- function(x) { NGramTokenizer(x, Weka_control(min = 2, max = 2)) }

tdm.bigram = TermDocumentMatrix(corpus,control = list(tokenize = BigramTokenizer))
freq = sort(rowSums(as.matrix(tdm.bigram)),decreasing = TRUE)
freq.df = data.frame(word=names(freq), freq=freq)
freq.df.head=head(freq.df, 20)
p=ggplot(data=freq.df.head,aes(x=word,y=freq, fill=word))
	p+geom_bar(stat = "identity", color="red", ) +labs(title="Most Frequent words") + coord_flip() 


#######################################################################################
reverse<-function(x){rev(unlist(strsplit(x,split=" ")))}  ## function for reversal of search keys
apply(data, function(x){paste( rev(unlist(strsplit(x,split=" "))),collapse=" " )} )  ## apply the function on whole data
## It will apply reversal on all the search terms of data and return a dataframe
rev_data=data.frame(apply(data, 1, function(x){paste( rev(unlist(strsplit(x,split=" "))),collapse=" " )} )) 
vector<-unlist(rev_data[,1])  
#######################################################################################

## Method of clustering with the help of distance measured among strings
distancemodels<-stringdistmatrix(vec,vec,method="jaccard")
rownames(distancemodels)<-data
hc<-hclust(as.dist(distancemodels))
dfClust<-data.frame(vec, cutree(hc,k=200))
names(dfClust)<-c("term","cluster")
Plot(table(dfClust$Cluster))
head(dfClust[c("term","cluster")],50)

## Method of clustering with the help of bi-grams

bigramdata<-data
for (i in 1:nrow(data))
{
  v<-unlist(strsplit(data[i,1]," "))  
  bigramdata[i,1]<-paste(vapply(ngrams(v,2),paste, "" , collapse=""), "", collapse="")
}
colnames(bigramdata)=c("term")
bicorpus = Corpus(VectorSource(bigramdata$term))
bicorpus = tm_map(bicorpus, tolower)
dtm = DocumentTermMatrix(bicorpus)
findFreqTerms(dtm,lowfreq=4000, highfreq=5000)

## Method of clustering with the help of bi-grams

matrix.lsa<-lw_bintf(document_matrix)*gw_idf(document_matrix)	
lsa.space<-lsa(matrix.lsa)
distance_matrix_lsa<-dist(t(as.textmatrix(lsa.space))

#########################################################################################################################
                               Problem3  - Classify the new word as per clusters created above.
#########################################################################################################################





#########################################################################################################################
                               Problem3  - Automated reliability Index.
#########################################################################################################################
install.packages("koRpus")
library(koRpus)
AIR(text)


#########################################################################################################################
                               Problem3  - T
#########################################################################################################################

1) make two columns
2) one with space, other without space or punctuation or 
3) now match them


v<-vector(length=1)
v1<-c("led bulb", "led","ledbulb","tvunit","tv unit")
v2<-c(1,2,3,4,5)
data<-read.table(file="Dev.csv", sep=",",stringsAsFactors=FALSE,header=T)	
## trim the trailing and leading spaces
output<-data.frame(term=v1,count=v2,similar=v1,stringsAsFactors=FALSE)		
colnames(data)<-c("terms","count","collapsed")

## step 1: load the file
data<-read.table(file="Dev.csv", sep=",",stringsAsFactors=FALSE,header=T)
colnames(data)<-c("terms","count")

## step 2: take out sample
output=data.frame(data[1:1000,1],stringsAsFactors=FALSE)
output[,3]=output[,1]
out=data.frame(trimws(output[1:100,1],which=c("both")),stringsAsFactors=FALSE) ## trimws removes the character vector
out[,2:3]=output[,2:3]
##output=data.frame(stri_trim(output,side=c("both")),stringsAsFactors=FALSE) ## stri_trim removes the spaces from string
v<-vector(length=1)	

## step 3.1: remove the spaces from all the terms
for (i in 1:nrow(out))
{
  v[1]<-out[i,1]
  vec<-unlist(strsplit(v[1], " "))
  v[1]<-paste(vec, sep="",collapse="")
  out[i,3]=v[1]
} 

## step 3.1: remove the spaces from all the term ( Using apply family)
output[99]<-"greentea"
output[100]<-="ladiestop"

rem_spc=function(x){ paste(unlist(strsplit(x,split=" ")),sep="",collapse="") }
out=data.frame(apply(output, c(1), rem_spc ))
colnames(out)=c("terms")
out$terms=as.character(out$terms)

## Step 4: find the words similar but without spaces
for (i in 1:nrow(out))
 {
 v[1]<-out[i,3]
 test<-out[ endsWith(out[,3],v[1]) & startsWith(out[,3],v[1]) ,1]
 test<-unique(test)
 if (length(test)>1 )
  {
   for (j in 1:length(test))
    {       
          ##if (out[i,1] != test[j])
              out[i,j+3]=test[j]
    }
  }
}

## step4.1 find out similar words with dtm matrix
corpus = Corpus(VectorSource(out$terms))
dtm<-DocumentTermMatrix(corpus)
mat<-as.matrix(dtm)
distinct_terms<-apply(mat,2,sum)

## return the terms have frequency greater than 1 in vector v
terms_more<-function(v)
{
names(v[v>1])
}

## pass a term to dtm and it will return the non zero references
index<-function(name)
{ 
as.numeric(names(mat[mat[,name]>0,name])) 
 }

similar<-function(v)
{ output[v] 
}

similar_matrix<-t(mapply(index, terms_more(distinct_terms)))
lapply(similar_matrix,function(v){ output[v,1] })

## After running above script take out the required data
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												flag=nchar(out[,4], keepNA=FALSE)>2
out[flag,1:4]

write.table(out[flag,1:4], "output.csv")

#####################################################################################################

## It will find all the synonyms col																																																																																																																																																																																																																																																														
for (i in 1:nrow(data))
{
  v[1]<-data[i,3]
  test<-data[grep(v[1],data[,3],1),1]  ## this command will search led inside dataframe first column
  for (j in 1:length(test))
  {
    output[i,j+2]=test[j]
  }
} 




## validate the trimmig of data
temp<-data.frame(data[1:100,])
## generate vector for references where length >50
flag<-c(nchar(data[1:1000,1])>50)
data[flag,1]

output[length(output[,4])>0,1]



