install.packages("e1071")
install.packages("plyr")
install.packages("dplyr")
install.packages("curl")
install.packages("openssl")
install.packages("ggplot2") ## plotting capability
install.packages("wordcloud") ## for creating word cloud
install.packages("RColorBrewer")
install.packages("NLP") ## Natural language Processor
install.packages("tm") ## text mining package
install.packages("SnowballC") ## require for stemming
install.packages("RWeka")
install.packages("readr")
install.packages("stringr")
install.packages("RSentiment") ## for sentiment analysis
install.packages("DT")
install.packages("rtweet") ## package for connecting to twitter
install.packages("magick")
install.packages("httr") ## 
install.packages("purrr")

library("purrr")
library(e1071)
library(plyr)
library(ggplot2)
library(wordcloud)
library(RColorBrewer)
library(SnowballC)

####################################################################################################################################
                                     Code to retrieve the unstrucutured data
####################################################################################################################################

data <- readLines("https://www.r-bloggers.com/wp-content/uploads/2016/01/vent.txt")
df <- data.frame(data)
textdata <- df[df$data, ]

users <- search_users(q= '#sanghpriya',
                      n = 1000,
                      parse = TRUE)
users <- unique(users)


####################################################################################################################################
                                          Prepare the Corpus-Collection of Document
####################################################################################################################################

Corpus( Source , readerControl)

Source
## There are many sources supported by tm()
1) DataframeSource ## data frame structure like csv
2) DirSource ## handle a directory
3) URLSource ## accept an URL
4) VeectorSource  ## accept only character vector
5) XMLSource  ## accept an XML
6) ZipSource  ## accept an zip

readerControl
## format of document
1) readPDF
2) readDOC
3) readPlain
4) readXML
5) readRCV1

## directory path
cname<-file.path("/home","hadoop","text") ## can pass this to DirSource
##cname="/home/hadoop/"
## list the documents
dir(cname)


docs<-Corpus(DirSource(cname), readerControl=list(reader=readPDF))
docs<-Corpus(DirSource(cname), readerControl=list(reader=readDOC("-r -s")))
docs <- Corpus(DirSource(“/home/hadoop/text/"))

inspect(docs[16])
viewDocs(docs,16)
####################################################################################################################################
                                         cleaning the corpus
####################################################################################################################################

1) Remove everything that is not standard number or letter
2) Removal of punctuation (if required)
3) make all words in lowercase
4) Remove unhelpful words.
5) Remove the synonym ( like help, helped, helping are same) Called stemming

corpus = tm_map(corpus, removePunctuation)
corpus = tm_map(corpus, content_transformer(tolower))
corpus = tm_map(corpus, removeNumbers)
corpus = tm_map(corpus, stripWhitespace)
corpus = tm_map(corpus, removeWords, stopwords('english'))
corpus = tm_map(corpus, stemDocument)

dtm_up = DocumentTermMatrix(VCorpus(VectorSource(corpus[[1]]$content)))
freq_up <- colSums(as.matrix(dtm_up))

####################################################################################################################################
                                         calculating the sentiment
####################################################################################################################################

sentiments_up = calculate_sentiment(names(freq_up))
sentiments_up = cbind(sentiments_up, as.data.frame(freq_up))
sent_pos_up = sentiments_up[sentiments_up$sentiment == 'Positive',]
sent_neg_up = sentiments_up[sentiments_up$sentiment == 'Negative',]

cat("We have far lower negative Sentiments: ",sum(sent_neg_up$freq_up)," than positive: ",sum(sent_pos_up$freq_up))

####################################################################################################################################
                                         Word Cloud of Sentiment Analysis
####################################################################################################################################



layout(matrix(c(1, 2), nrow=2), heights=c(1, 4))
par(mar=rep(0, 4))
plot.new()
set.seed(100)
wordcloud(sent_pos_up$text,sent_pos_up$freq,min.freq=10,colors=brewer.pal(6,"Dark2"))


plot.new()
set.seed(100)
wordcloud(sent_neg_up$text,sent_neg_up$freq, min.freq=10,colors=brewer.pal(6
,"Dark2")









