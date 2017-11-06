## load the resume to R
install.packages("tm")
install.packages("plyr")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("xlsx")
install.packages("readxl")

library("tm")
library("wordcloud")


resume=read.csv("resume.csv",header=FALSE, sep="$")
corpus <- Corpus(VectorSource(resume$V1))
corpus_clean<-tm_map(corpus, tolower)
corpus_clean<-tm_map(corpus_clean, removePunctuation)
corpus_clean<-tm_map(corpus_clean, BigramTokenizer)
corpus_clean<-tm_map(corpus, removeWords, stopwords('english'))

wordcloud(corpus_clean)

Companies<-c("NUCLEUS","TCS", "CSE", "NBRI", "ENLIGHTMENT INDIA")

###########################################################################

country[country$STAY>0,]
COUNTRY      GDP CODE STAY
38          Canada  1794.00  CAN  200
71          France  2902.00  FRA   30
93           India  2048.00  IND 3650
100          Italy  2129.00  ITA  100
132      Mauritius    12.72  MUS  300
133         Mexico  1296.00  MEX   10
180      Singapore   307.90  SGP   90
211 United Kingdom  2848.00  GBR  700
212  United States 17420.00  USA 1000

country[38,4]=500
country[71,4]=400
country[100,4]=400
country[132,4]=1000
country[180,4]=900
country[211,4]=1000
country[212,4]=2000







colnames(country)=c("COUNTRY","GDP","CODE","STAY")

change_na<-function(x)
{
  return( ifelse(is.na(x),0,x) )
}

# BLUE boundaries
l <- list(color = toRGB("blue"), width = 1.0)

# specify map projection/optio
ns
g <- list(
  showframe = TRUE,
  showcoastlines = TRUE,
  projection = list(type = 'Mercator')
)

p=	plot_geo(country) %>%
  add_trace(
    z = ~STAY, color = ~STAY, colors = 'Reds',
    text = ~COUNTRY, locations = ~CODE, marker = list(line = l)
  ) %>%
  colorbar(title = 'PLACES OF WORK', tickprefix = '-') %>%
  layout(
    title = 'Places where I  have worked my carrer',
    geo = g
  )

