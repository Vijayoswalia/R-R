## Problem 1: to implement vlook up in R
## load the two files in dataset1 and dataset2

install.package("stringr")

dataset1<-read.table("keywords1.csv",sep=",",header=T)  ## this file has two fields keywords, count around 10000 records
dataset2<-read.table("keywords2.csv",sep=",",header=T)  ## this file has two fields-keywords, count around 100000 recrods

finaldata = merge(dataset1[, c("keyword", "count")], dataset2[, c("keyword", "count")])
finaldata = merge(dataset1, dataset2, by.x="keyword",by.y="keyword", all=T)
head(finaldata, 10)


## Problem 2: Implement find in R
## it will help in finding all similar terms in vector
v<-("ledbulb","ledtv", "led string", " blockled")
v[grep("led",v,1)]
v[grep('^[A-Za-z]', dataframe[,1],perl),]



## Problem 2: Implement replace in R
string <- "Generally.speaking..do.you.prefer.to.try.out.new.experiences.like.trying.thing."
string <- gsub("experiences", "exp", string) 
string <- gsub(".*experiences.*", "exp", string, perl=TRUE) 

s<-"do you like programming experiences"
replace(s,grep("experiences",s),"exp")
xx`gsub(".*experiences.*", "exp", s)

## Remove special characters
str_replace_all("qwer#$%TYyu", "[^[:alnum:]]", "")

## to Remove all alphanumeric
str_replace_all(x, "[^[:alnum:]]", " ")
## to Remove all punctuation
str_replace_all(x, "[[:punct:]]", " ")
## 
str_replace_all(x, tolower)   
## remove all spaces
str_replace_all(x, " ", "")


fruits <- c("one apple", "two pears", "three bananas")
str_replace(fruits, "[aeiou]", "-")
str_replace_all(fruits, "[aeiou]", "-")
str_replace_all(fruits, "[aeiou]", toupper)
str_replace_all(fruits, "b", NA_character_)
str_replace(fruits, "([aeiou])", "")
str_replace(fruits, "([aeiou])", "\\1\\1")
str_replace(fruits, "[aeiou]", c("1", "2", "3"))
str_replace(fruits, c("a", "e", "i"), "-")

## Alok project to find the similar terms


clean_data<-function(x)
{
  
  x<-gsub("%C"," ",x) 
  x<-str_replace_all(trimws(x),"[^[:alnum:]]", "")
  return(x)
}

df1<-data.frame(mapply(clean_data,df$keyword))









