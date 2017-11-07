mtcars
modelmtcars = lm(disp ~ hp, data = mtcars)
modelmtcars
summary(modelmtcars)
plot(modelmtcars)

modelmtcars = lm(disp ~ hp, data = mtcars)
library(analytics)
model1  = lm(Ozone ~ Wind+Temp+Solar.R-1, data=ozone_clean)
modelmodel1
model2  = lm(Ozone ~ Wind+Temp, data=ozone_clean)
model2
model3  = lm(Ozone ~ Wind+Solar.R, data=ozone_clean)
model3
model4  = lm(Ozone ~ Temp+Solar.R, data=ozone_clean)
model4
summary(model1)
summary(model2)
summary(model3)
summary(model4)
plot(ozone_clean$Ozone,resid(model1))
plot(ozone_clean$Ozone,resid(model2))
plot(ozone_clean$Ozone,resid(model3))
plot(ozone_clean$Ozone,resid(model4))
plot(model1)
plot(model2)
plot(model3)
plot(model4)
