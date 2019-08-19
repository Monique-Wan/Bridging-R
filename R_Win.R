rm(list=ls())
setwd("G:/My Drive/Teaching/PG_Bridging/R/")

# Assignment Operator
a = 21
A <- 22
a = 10 

# Output in Console/ Environment
2+3
n=2
n^5

# Useful Functions
sqrt(9)
exp(4)

x1 = seq(from=1,to=10,by=1)
x2 = c(1:10)
mean(x1)
var(x2)
log(x1)
log(x1,2)
is.matrix(x1)

# Coercing Data Type to Fit Functions
y = as.matrix(x1)
apply(y,2,mean)

# Indexing for Matrix
x = matrix(c(10,20,30,40),2,2,byrow=T)
rowSums(x)
colSums(x)
rowMeans(x)
colMeans(x)
sample(x,10,replace=T) 
nrow(x)
ncol(x)
dim(x)
x[1,]
x[,2]

# Indexing for Character
cousins = c("David", "Rachael", "Louie", "Cindy", "Paul")
cousins[1] 
cousins[-5]
cousins[c(2,4)]
cousins[c(4,2)]

# Coercing
myvec = c("poor","gd","gd","avg","avg","gd", "poor", "gd","avg","gd")
unique(myvec)
myvec.factor = factor(myvec)
myvec.ord1 = ordered(myvec,levels=c("poor","avg","gd"))
myvec.ord2 = ordered(myvec,levels=c("gd","avg","poor"))

# Collection of Data in a Data Frame
df = data.frame(
  gender=c("M","F","F"), 
  height=c(180,160,170),
  weight = c(75,60,62),
  age=c(40,25,10))
is.data.frame(df)

# Subsetting
df[,c(1,3)]
df[,c("gender", "age")]
subset(df, gender=="F") 
subset(df, age >= 40 & height > 160)
subset(df, age >= 40 & height > 160, select = c("weight"))

# Missing Values
x  = c(13,18,13,14,13,16,14,21,13,NA)
mean(x, na.rm = TRUE)
mean(x, na.rm = FALSE) # What is the difference?
median(x, na.rm = TRUE)
quantile(x, na.rm = TRUE)
var(x, na.rm = TRUE)
sd(x, na.rm = TRUE)
range(x, na.rm = TRUE)
summary(x, na.rm = TRUE)
table(x)

p = c(64, 65, 68, 69, 70, 71, 72, 72, 75, 75, 80, 81, 83, 85, NA)
is.na(p)
complete.cases(p) 

p[!is.na(p)]
p[complete.cases(p)]


p = c(64, 65, 68, 69, 70, 71, 72, 72, 75, 75, 80, 81, 83, 85, 999)
p[p==999] = NA
p[complete.cases(p)]

p = c(64, 65, 68, 69, 70, 71, 72, 72, 75, 75, 80, 81, 83, 85, "?")
p[p=="?"] = NA
p[complete.cases(p)]

# Plotting
a = rnorm(100,mean=0,sd=1)
hist(a)

y = c(64, 65, 68, 69, 70, 71, 72, 72, 75, 75, 80, 81, 83, 85)
hist(y,main="Equal-width Binning",xlim=c(64,85),col="lightskyblue",breaks=seq(64,85,by=3))

x=1:10
y=x^2
plot(x,y)

z = c(64, 65, 68, 69, 70, 71, 72, 72, 75, 75, 80, 81, 83, 85, 110)
boxplot(z,main="My Boxplot", col="gold")


# Random Sampling
set.seed(1234)
a = rnorm(100,0,1)
hist(a,prob=TRUE)
lines(density(a))

# Linear regression 
x = rnorm(100,0,1)
a = runif(1,0,1)
b = runif(1,-2,2)
u = rnorm(100,0,1)
y = a+b*x+u


out = lm(y~x)
out 

result = summary(out)
result$coefficients


# Using library
# Request pre-installed data
library(car)
data(Duncan)
colnames(Duncan)

# More plots for multivariate
plot(Duncan$income, Duncan$education)
abline(lm(Duncan$income ~ Duncan$education))

plot(Duncan$income, Duncan$education,
     main="Relationship of Income and Education",
     ylab="Education Index", xlab="Yearly Income",
     pch=16, col="red") 

abline(lm(Duncan$income~Duncan$education), lty=2)

# Export data
x = rnorm(100,mean=10,sd = 5)
y = rep(1,100)
data = cbind(x,y)
write.csv(data,file="mydata.csv")



# Import data
library(foreign)
grel = read.spss("G:/My Drive/Teaching/PG_Bridging/R/NILT2012GR.sav", to.data.frame = TRUE)
colnames(grel)
attach(grel)
table(nkids)
detach(grel)

library(foreign)
debt = read.dta("debtratio.dta")

library(readr)
Wholesale = read_csv("Wholesale customers data.csv")

library(readxl)
Predictor = read_excel("PredictorData2014.xlsx", 
                       sheet = "Quarterly")

library(RWeka)
churn = read.arff("churn.arff")


# If-Else
balance = 115
employ = "NO"
age = 40

if ((balance>=50) & (employ=="NO") & (age>=45)) 
{decision = "Write-off"} else {decision = "Not write-off"}

a = 3
ifelse(a>=2,"TRUE","FALSE")

# For Loop
score = matrix(0,nrow=5,ncol=1)
math = c(75,83,78,65,91)
eng  = c(85,89,62,78,95)
subjects = cbind(math,eng)
for (i in 1:5){
  score[i] = mean(subjects[i,])
}


