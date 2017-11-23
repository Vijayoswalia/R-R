## install the package tm

install.packages("tm")
install.packages("plyr")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("e1071")


library(tm)  ## text mining
library(plyr) ## manipulating data
library(SnowballC) ## manipulating data
library(wordcloud) ## manipulating data
library(e1071)

## step1 collect data from file. It is tab delimited file so we take sep="\t"
sms_raw <- read.delim(file="D:\\SMSSpamCollection", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
sms_raw <- read.delim(file="E:\\SMSSpamCollection", sep = "\t")
dim(sms_raw)
View(sms_raw)
## You can use above mentioned steps or can upload thorugh import utility of the R Studio.
## sms_raw=SMSSpamCollection

## step2 check the structure
str(sms_raw)
colnames(sms_raw)=c("type","data")
table(sms_raw$type)

##----------------------------------------------------------------------------------------
## step3 As a first step we will create corpus using following command
sms_corpus <- Corpus(VectorSource(sms_raw$data))
inspect(sms_corpus[1:3])

## step4 corpus function creates an R object to store text document. Corpus() function stores the result in sms_corpus.
## It contains the raw text of 5559 text messages.
corpus_clean<-tm_map(sms_corpus, tolower)
corpus_clean<-tm_map(corpus_clean, removeNumbers)
corpus_clean<-tm_map(corpus_clean,removeWords,stopwords())
corpus_clean<-tm_map(corpus_clean,removePunctuation)
corpus_clean<-tm_map(corpus_clean,stripWhitespace)

f <- content_transformer(function(x, pattern) gsub(pattern, " ", x))
corpus_clean<-tm_map(corpus_clean,f," ... ")
corpus_clean<-tm_map(corpus_clean,f," .. ")
corpus_clean<-tm_map(corpus_clean,f," . ")



## word cloud is a way to visually depict the frequency at whcih words appear in the text data
par(mar = rep(2,4))
wordcloud(corpus_clean, min.freq=50,random.color=TRUE,colors=rainbow(7))
wordcloud(corpus_clean, min.freq=900,col="blue")


##Stopwords() function will provide a list of words like to,and,but,or
##Now finally we have to break messages into individual components called tokenization

sms_dtm<-DocumentTermMatrix(corpus_clean)
dtm_mat<-as.matrix(sms_dtm)
dtm_mat[1:5,1:10]
##Now this will return a sparse matrix with 5,559 rows and 7000 columns
##Now we will devide the data in 75, 25 ratio in training and test data

sms_raw_train<-sms_raw[1:2500,]
sms_raw_test<-sms_raw[2501:3183,]

sms_dtm_train<-sms_dtm[1:2500,]
sms_dtm_test<-sms_dtm[2501:3183,]

sms_corpus_train<-corpus_clean[1:2500]
sms_corpus_test<-corpus_clean[2501:3183]

prop.table(table(sms_raw_train$type))
prop.table(table(sms_raw_test$type))

spam<-subset(sms_raw_train,type == "spam")
ham<-subset(sms_raw_train, type =="ham")
wordcloud(ham$data,min.freq=50,random.color=TRUE,colors=rainbow(7))
wordcloud(spam$data,min.freq=30,random.color=TRUE,colors=rainbow(7))

## Now the sparse matrix contain 7000 columns. To reduce the dimension we will take out columns where count<5.

findFreqTerms(sms_dtm,100) ## list of words appeared more than 100 times and less than 200
sms_dict<-findFreqTerms(sms_dtm_train,5)

## Dictionary is a data structure allow us to specify which words should appear in document term matrix.

sms_train<-DocumentTermMatrix(sms_corpus_train,list(dictionary=sms_dict))
sms_test<-DocumentTermMatrix(sms_corpus_test,list(dictionary=sms_dict))

train<-as.matrix(sms_train)
dim(train)

converts_counts<-function(x){
	x<-ifelse(x>0,1,0)
	x<-factor(x,levels=c(0,1),labels=c("No","Yes"))
	return(x)
}

sms_train<-apply(sms_train,2,converts_counts)
sms_test<-apply(sms_test,2,converts_counts)

sms_classifier<-naiveBayes(sms_train,sms_raw_train$type)
sms_test_pred<-predict(sms_classifier,sms_test)

library(gmodels)
CrossTable(sms_test_pred,sms_raw_test$type)
search()






















































