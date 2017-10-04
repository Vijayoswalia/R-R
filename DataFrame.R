v1<-c("Amy","Sam")
v2<-c(9,11)
df1<-data.frame(v1,v2)
df1

v3<-c("Amy","Joe")
v4<-c("Delhi","Mumbai")
df2<-data.frame(v3,v4)
df2

merge(df1,df2)   #cartesian product  #wrong join

#all=F -> inner join =1 row
#all.x=T -> leftouterjoin=2 rows
#all.y=T -> rightouterjoin=2 rows
#all=T -> outerjoin=3 rows

merge(df1,df2, by.x = "v1", by.y = "v3", all=F)
merge(df1,df2, by.x = "v1", by.y = "v3", all.x=T)
merge(df1,df2, by.x = "v1", by.y = "v3", all.y=T)
merge(df1,df2, by.x = "v1", by.y = "v3", all=T)

df=read.table("E://Data Science//R//R-R//R//Data//Ozone_data.csv",
              header = T,
              sep = ",")
           #  skip = 5,
           #  nrow=100
df
df = read.table("Ozone_data.csv",header=T,sep=",")
df10 = read.csv("Ozone_data.csv")
df10


df[1:2,]
head(df,5)
tail(df,5)
dim(df)
df[47,]

df[df$Ozone>50, ]
df[df$Temp>90, ]
df[df$Temp>90 & df$Ozone>50,]

dfnew = df[complete.cases(df),]

dfnew
complete.cases(df)
dfnew[dfnew$Ozone>50 & dfnew$Temp>90,]
dfnew[dfnew$Ozone>50 | dfnew$Temp>90,]
dim(dfnew[dfnew$Ozone>50 & dfnew$Temp>90,])
dfnew[dfnew$Ozone>50 & dfnew$Temp>90, 1, drop=F]
dfnew[dfnew$Ozone>50 & dfnew$Temp>90, 1]


