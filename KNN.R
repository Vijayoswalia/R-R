library(class)
wisc_bc_data
wbcd = read.csv('E:/Data Science/rWork/rProjects/R-R/R/Data/wisc_bc_data.csv')
wbcd
head(wbcd)
str(wbcd)
normalize(c(1,2,3,4,5))
wbcd_n=normalize(wbcd[2:31])
summary(wbcd_n)
summary(wbcd_n$radius_mean)
summary(wbcd_m$radius_mean)
normz = normalize(wbcd[2:31])
summary(normz$radius_mean)
