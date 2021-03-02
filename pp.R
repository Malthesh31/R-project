attacch(iris)
View(iris)
str(iris)
install.packages("party")
set.seed(1234)
ind<-sample(2,nrow(iris),replace = TRUE,prob = c(0.7,0.3))
trainData<- iris[ind==1,]
testData<- iris[ind==2,]
library(party)
myformula <- Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width
iris_ctree<- ctree(myformula,data = trainData)
print(iris_ctree)
print(summary(iris_ctree))
plot(iris_ctree)
table(predict(iris_ctree),trainData$Species)
View(trainData)
'decision tree with pacakage party'
plot(iris_ctree,type="simple")
install.packages("rpart")
attach(bodyfat)
data("bodyfat")
data("bodyfat", package = "TH.data")
View(bodyfat)
print(max(bodyfat$waistcirc))
