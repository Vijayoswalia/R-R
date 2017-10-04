l1<-list(1001,"Amy", c("Maths","EnDr","Music"),
         matrix(c(72,47,36,54),2,2))
l1
l1[3]
l1[[3]]
l1[[3]][2]
l1[[3]][1]
l1[4]
l1[[4]]
l1[[4]][2,2]
l1[[4]][2,2]=4
l1


l2<-list(ID=1001,Name="Amy", sub=c("Maths","EnDr","Music"),
         marls=matrix(c(72,47,36,54),2,2))
l2
l2$ID
l2$Name
l2$sub[1]
l2$sub[2]="Engg.Dr"
l2
l2$marls[1,2]=1
l2
