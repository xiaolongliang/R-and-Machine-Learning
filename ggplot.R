library(gcookbook)
str(cabbage_exp)
library(ggplot2)
ggplot(data=cabbage_exp,mapping = aes(x=Date,y=Weight,fill=Cultivar))+geom_bar(position = "dodge",stat = "identity")
ggplot(data = diamonds,mapping = aes(x=cut))+geom_bar()
upc<-subset(uspopchange,rank(Change)>40)
ggplot(data = uspopchange,mapping = aes(x=Abb,y=Change,fill=Region))+
geom_bar(stat = "identity",color="red")

library(wordcloud2)
wordcloud2(demoFreqC,figPath = img,size = 1,color = "random-light")
wordcloud2(siwen,size = 1,color = "random-light",shape = "'cardioid")

ggplot(data = cabbage_exp,mapping = aes(x=Date,y=Weight,fill=Cultivar))+
  geom_bar(stat = "identity",width = 0.6,position = position_dodge(0.7))

ggplot(data = cabbage_exp,mapping = aes(x=Date,y=Weight,fill=Cultivar))+
  geom_bar(stat = "identity")+guides(fill=guide_legend(reverse = T))

ggplot(data = BOD,mapping = aes(x=Time,y=demand))+geom_line()
ggplot(tg,aes(x=dose,y=length,color=supp))+geom_line(linetype="dashed")+geom_point(size=2,shape=21)

house<-read.table("C:/Users/sdj/Desktop/housing.data",header = F)
library(stringr)
corrplot(cor(house),order = "AOE",addCoef.col = "grey",method = "color")
corrplot(cor(house),order = "AOE",addCoef.col = "grey")
house_clean<-subset(house,select = -c(V7,V3))
model<-glm(V14~.,data = house_clean[1:405,])
summary(model)
ret<-predict(model,house_clean[406:506,])

library(rpart)
rpart.model<-rpart(V14~.,data = house[1:405,])
library(rpart.plot)
rpart.plot(rpart.model,digits = 5)
rpart.predict<-predict(rpart.model,house[406:506,])
cor(rpart.predict,house[406:506,]$V14)
MAE<-mean(abs(rpart.predict-house[406:506,]$V14))

ggplot(data = cabbage_exp,mapping = aes(x=Date,y=Weight,fill=Cultivar))+
  geom_bar(stat = "identity",width = 0.6,position = position_dodge(0.7))

ggplot(data = cabbage_exp,mapping = aes(x=Date,y=Weight,fill=Cultivar))+
  geom_bar(stat = "identity")+guides(fill=guide_legend(reverse = T))

lotting
library(ggplot2)
library(gcookbook)
hg<-heightweight[,c("sex","ageYear","heightIn","weightLb")]
ggplot(data = hg,aes(x=ageYear,y=heightIn,size=weightLb,color=sex))+geom_point(alpha=0.7)+
  scale_size_area()+scale_color_brewer(palette = "Set1")

#线性回归
ggplot(data = heightweight,aes(x=ageYear,y=heightIn))+geom_point()+stat_smooth(method = "lm",level = 0.95)
