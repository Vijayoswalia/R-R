v = c(1:100)
v
plot(v,v^2)
plot(v^2,v^3)
plot(v,v^3)
plot(v,v^4)
layout(matrix(1:4,2,2))
plot(v, log(v))
plot(v,exp(v))
plot(v, v+v^2)
plot(v, v+v^2+v^3+v^4)
x = ceiling(runif(50,1,1000))
x
plot(x,x^2)
plot(x^2,x^3)
plot(x,x^3)
plot(x,x^4)
plot(x, log(x))
plot(x,exp(x))
plot(x, x+x^2)
plot(x, x+x^2+x^3+x^4)

ozone
library(PerformanceAnalytics)
chart.Correlation(ozone_clean)


#lm
#glm
#nls

plot(nls(Ozone ~ a*log(Solar.R)^4, data=ozone_clean,start=list(a=0)))

?nls

