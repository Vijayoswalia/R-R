read_file <- function(x){
  x = list.files(pattern = "*.csv")
  myfiles = lapply(x, read.delim)
  

}
v <- c("R.csv", "R_2.csv","R_3.csv","R_4.csv","R_5.csv")
summary(read_file("R.csv"))
data.frame(read_file(v))
v1
class(v1)
summary(v1)
class(summary(v1))

data_frame <- data.frame(summary(v1))
class(data_frame)

R <- read.csv("R.csv")
R1 <- read.csv("R_2.csv")
names(R)
summary(R)
list.files
?read.csv
summary(list.files(pattern = "*.csv"))
