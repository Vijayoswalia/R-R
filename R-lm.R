mtcars
modelmtcars = lm(disp ~ hp, data = mtcars)
modelmtcars
summary(modelmtcars)
plot(modelmtcars)

modelmtcars = lm(disp ~ hp, data = mtcars)
library(analytics)
model1 = lm(Ozone ~ Wind+Temp+Solar.R-1, data=ozone_clean)
summary(model1)
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


stats = c(35, 40, 62, 78, 87)
maths = c(50, 65, 72,88, 92)
Lmodel1 = lm(stats ~ maths)
Lmodel1
summary(Lmodel1)
resid(Lmodel1)
