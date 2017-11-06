## The dataset for  clustering is taken from social networking website 
## It consists of 30,000 profiles of US high school students
## Loading the data each row consists of 40 variables like 
## graduation year, gender, age, friends, basketball etc.
##################################################################################
                         Example-1
##################################################################################
teens<-read.csv("snsdata.csv')
## function to convert gender into 1 or 0
teens$gender<-ifelse(teens$gender=="F" & !is.na(teens$gender) ,1,0)
## function to check the number of NA in data
mapply(function(x){return(table(is.na(x)))} , teens)
## function to remove the rows that have NA values
teens_clean<-teens[complete.cases(teens),]
## Run the clustering algorithm
teen_clusters<-kmeans(teens_clean,5)
## mydata is a matrix or data frame to be clusters
## k specifies the desired number of clusters
## check the summary of the clustered data
summary(teen_clusters)
## check the size of each cluster
teen_clusters$size
## check the center of each cluster
teen_clusters$centers
##################################################################################
                         Example-2
##################################################################################





## Assignment-1
## Perform the clustering for below mentioned data set.
## Download the following file from internet-IMDB-Movie-Data.csv and convert each category into a column in following format
            Action   Mystery  Thriller Sci-Fi  Comedy  Drama  Romance   Biography history Adventure Fantasy
Eagle Eye    1        1        1         0      0       0     0          0          0      0         0








