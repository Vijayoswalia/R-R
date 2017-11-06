###########################################################################################################################################
####l in lapply stands for list. lapply will loop over all the elements of list
## In case we pass a vector or matrix, it will be convered to a list.
###########################################################################################################################################

## laaply on ozone data

ozone_raw<-read.table("/home/hadoop/Ozone_data.csv",sep=",",header=TRUE) ## please change path accordingly
ozone<-ozone_raw[complete.cases(ozone_raw),]

lapply(ozone,sum)
lapply(ozone,mean)
lapply(ozone,summary)
lapply(ozone,table)
lapply(ozone,sort)
lapply(ozone,unique)


#############################################################################################################################################
## sapply stands for simplify and lapply.
## If result is all elements of length 1 then it returns vector, If it is vector of same length then matrix else list
#############################################################################################################################################

## sapply(ozone,sum) It will return a vector

> sapply(ozone,sum)
  Ozone Solar.R    Wind    Temp   Month     Day 
 4673.0 20513.0  1103.3  8635.0   801.0  1770.0 

## sapply(ozone,mean) It will return a vector
> sapply(ozone,mean)
     Ozone    Solar.R       Wind       Temp      Month        Day 
 42.099099 184.801802   9.939640  77.792793   7.216216  15.945946 

## sapply(ozone,summary) It will return a matrix
> sapply(ozone,summary)
        Ozone Solar.R  Wind  Temp Month   Day
Min.      1.0     7.0  2.30 57.00 5.000  1.00
1st Qu.  18.0   113.5  7.40 71.00 6.000  9.00
Median   31.0   207.0  9.70 79.00 7.000 16.00
Mean     42.1   184.8  9.94 77.79 7.216 15.95
3rd Qu.  62.0   255.5 11.50 84.50 9.000 22.50
Max.    168.0   334.0 20.70 97.00 9.000 31.00

## It will return a list
> sapply(ozone,unique)
$Ozone
 [1]  41  36  12  18  23  19   8  16  11  14  34   6  30   1   4  32  45 115  37  29  71  39  21  20  13 135  49
[28]  64  40  77  97  85  10  27   7  48  35  61  79  63  80 108  52  82  50  59   9 122  89 110  44  28  65  22
[55]  31 168  73  76 118  84  96  78  91  47  24  46

$Solar.R
 [1] 190 118 149 313 299  99  19 256 290 274  65 334 307  78 322  44   8 320  25  92  13 252 223 279 127 291 323
[28] 148 191 284  37 120 137 269 248 236 175 314 276 267 272 264  48 260 285 187 220   7 294  81  82 213 275 253
[55] 254  83  24  77 255 229 207 192 273 157  71  51 115 244 259  36 212 238 215 203 225 237 188 167 197 183 189
[82]  95 230 112 224  27 201  14 139  49  20 193 131

$Wind
 [1]  7.4  8.0 12.6 11.5  8.6 13.8 20.1  9.7  9.2 10.9 13.2 12.0 18.4 16.6 14.9  5.7 20.7 10.3  4.1  4.6  5.1  6.3
[23] 14.3  6.9  4.0 15.5  3.4  2.3  2.8

$Temp
 [1] 67 72 74 62 65 59 61 69 66 68 58 64 57 73 81 79 76 82 90 87 77 84 85 83 88 92 89 80 86 78 97 94 96 91 93 75 71
[38] 63 70

$Month
[1] 5 6 7 8 9

$Day
 [1]  1  2  3  4  7  8  9 12 13 14 15 16 17 18 19 20 21 22 23 24 28 29 30 31 10  5  6 25 26 2

#########################################################################################################################################
## Apply is used to evaluate function over the margins/dimensions of an array
#########################################################################################################################################

m<-matrix(1:20,10,2)

apply(m,1,sum)
apply(m,2,sum)

a<-array(1:30,c(3,2,5))

apply(a,1,sum)
apply(a,2,sum)
apply(a,3,sum)

#########################################################################################################################################
## mapply is apply with multiple input function or multivariate apply
#########################################################################################################################################
## mapply helps to execute a function with different input values

m<-matrix(1:40,20,2)
add <- function(x,y){return(x+y)}
output <- mapply(add, m[,1], m[,2])
> output
 [1] 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60


ozone_temp_ratio<-function(a=0,b=0){ a/b }

mean(mapply(ozone_temp_ratio, ozone$Ozone, ozone$Temp))

[1] 0.5129623

## mapply calculated the ratio of ozone and temperature for all the observations in file and we passed that value to mean to
## find the average of all readings.

#########################################################################################################################################
## tapply is apply function with factors
#########################################################################################################################################
tapply(x, factor, function)
## tapply apply the function to each set of ragged array i.e for set of values belonging to unique values of factor

tapply(ozone$Ozone,ozone$Month,sum)

  5    6    7    8    9 
 579  265 1537 1380  912

## The above example gives the total sum of ozone value for all distinct values of month.

tapply(ozone$Ozone,ozone$Month,summary)

$`5`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00   11.00   18.00   24.12   32.50  115.00 

$`6`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  12.00   20.00   23.00   29.44   37.00   71.00 

$`7`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   7.00   36.25   60.00   59.12   79.75  135.00 

$`8`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    9.0    25.5    45.0    60.0    84.5   168.0 

$`9`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   7.00   16.00   23.00   31.45   36.00   96.00







