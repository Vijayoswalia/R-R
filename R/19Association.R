## Association rules which tells that there are specific patterns of relationship in R
##{peanut, butter, jelly} -> {bread}
## Association rule are unsupervised so no need to train data
## Apriori algorithm for association rule learning

## support of an itemset measures how frequently it occurs in the data.

Support(x)= count(x)/N
N= Number of transactions in the database
count(x) = number of transactions itemset X appears in.

confidence(x->y) = Support(x,y)/support(x)

## download groceries.csv from the internet

install.package("arules")
library("arules)

groceries <-read.transactions("groceries.csv", sep = ",")
summary(groceries)

This will provide a sparse matrix with row for each transaction and columns for each item.
    item1 item2 item3	.......
t1   y	   y
t2         y     y

inspect(groceries[1:5])
itemFrequnecyPlot(groceries, support = 0.1)
itemFrequnecyPlot(groceries, topN = 20)
groceryrules <- apriori(groceries, parameter = list(support = 0.006, confidence = 0.25, minlen=2))

groceryrules











