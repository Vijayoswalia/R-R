v<-c("mon","tue","wed")
x<-factor(v, levels = c("sun","mon","tue","wed","thur","fri","sat"))
v
x
x[4]<-"thur"
x[5]<-"fri"
v
x
