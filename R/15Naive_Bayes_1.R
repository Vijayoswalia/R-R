## install the package tm

install.packages("tm")
install.packages("plyr")
install.packages("SnowballC")
library(tm)  ## text mining
library(plyr) ## manipulating data

## collect data from file. It is tab delimited file so we take sep="\t"
sms_raw<-read.table(file="/home/hadoop/textmining/SMSSpamCollection",sep="\t",header=F)

## check the structure
str(sms_raw)
colnames(sms_raw)=c("type","data")
sms_raw$type<-factor(sms_raw$type)
str(sms_raw$type)
table(sms_raw$type)


## As a first step we will create corpus using following command

sms_corpus <- Corpus(VectorSource(sms_raw$data))

## corpus function creates an R object to store text document. Corpus() function stores the result in sms_corpus.
##Corpus() function can read document from PDf or microsoft word.

print(sms_corpus)
inspect(sms_corpus[1:3])

## It contains the raw text of 5559 text messages.

corpus_clean<-tm_map(sms_corpus, tolower)
corpus_clean<-tm_map(corpus_clean, removeNumbers)
corpus_clean<-tm_map(corpus_clean,removeWords,stopwords())
corpus_clean<-tm_map(corpus_clean,removePunctuation)
corpus_clean<-tm_map(corpus_clean,stripWhitespace)
corpus_clean = tm_map(corpus_clean, stemDocument)

##Stopwords() function will provide a list of words like to,and,but,or
##Now finally we have to break messages into individual components called tokenization

sms_dtm<-DocumentTermMatrix(corpus_clean)

##Now this will return a sparse matrix with 5,559 rows and 7000 columns
##Now we will devide the data in 75, 25 ratio in training and test data

sms_raw_train<-sms_raw[1:4169,]
sms_raw_test<-sms_raw[4170:5559,]


sms_dtm_train<-sms_dtm[1:4169,]
sms_dtm_test<-sms_dtm[4170:5559,]


sms_corpus_train<-corpus_clean[1:4169]
sms_corpus_test<-corpus_clean[4170:5559]


prop.table(table(sms_raw_train$type))
prop.table(table(sms_raw_test$type))


## word cloud is a way to visually depict the frequency at whcih words appear in the text data

install.packages("wordcloud")
library("wordcloud")
wordCloud(sms_corpus_train, min.freq=200, scale=c(10,1),random.order=FALSE) ## random.order=FALSE will keep the most frequent words at centre.
spam<-subset(sms_raw_train,type == "spam")
ham<-subset(sms_raw_train, type =="ham")
wordcloud(spam$text,max.words=40,scale=c(10,1))
wordcloud(ham$text,max.words=40,scale=c(10,1))
## Now the sparse matrix contain 7000 columns. To reduce the dimension we will take out columns where count<5.

findFreqTerms(sms_dtm_train,5)
sms_dict<-Dictionary(findFreqTerms(sms_dtm_train,5))

## Dictionary is a data structure allow us to specify which words should appear in document term matrix.

sms_train<-DocumentTermMatrix(sms_corpus_train,list(dictionary=sms_dict))
sms_train<-DocumentTermMatrix(sms_corpus_test,list(dictionary=sms_dict))

converts_counts<-function(x)
{

x<-ifelse(
























































