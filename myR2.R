df = data.frame(
  gender=c("M","F","F"),
  height=c(180,160,170),
  weight=c(75,60,62),
  age=c(40,25,30)
  )
class(df)
is.data.frame(df)
is.matrix(df)

# Choose 1st and 3rd column
dim(df)
df[,c(1,3)]
df[,c("gender","weight")]
subset(df,gender=="F") # == is an "equal to" operator
subset(df,gender!="F") # != is an "not equal to" operator
subset(df, age>=40 & height>160)
subset(df, age>=40 & height>160, select=c("weight"))

# How to order, and new type of data =factor
myvec = c("p","g","g","a","g","p","g","a","g")
# dim(myvec)
# nrow(myvec)
length(myvec)
unique(myvec)
class(myvec)
myvec1 = factor(myvec) # Transform character into factor
class(myvec1)
myvec1
myvec1.inc = ordered(myvec1,levels=c("p","a","g"))
myvec1.inc
myvec1.dec = ordered(myvec1,levels=c("g","a","p"))
myvec1.dec

# Missing values
x = c(1,3,5,2,6,NA)
class(x)
mean(x, na.rm=TRUE)
miux = (1+3+5+2+6)/5
miux
median(x, na.rm=TRUE)
quantile(x, na.rm=TRUE)
out = summary(x, na.rm=TRUE)
out[2]
is.na(x)
table(x)
x0 = x[-6]
x0
x[!is.na(x)]
!is.na(x)
complete.cases(x)
x[complete.cases(x)]

y = c(1,3,5,2,6,"?")
class(y)
y=="?"
y[y=="?"]=NA
y
y0 = y[complete.cases(y)]
class(y0)
y1 = as.numeric(y0)
y1
class(y1)

# Generate 1000 random numbers ~N(0,1), Store it in x
x = rnorm(1000,mean=0,sd=1)
hist(x,main="This is my figure!",
     col="cyan3",
     xlab="My X values", ylab="My count")

# (x,y)
x = seq(-10,10,0.1)
y = x^2
plot(x,y)

# Linear Regression
# install.packages("car")
library(car)
data(Duncan)
colnames(Duncan)

# Preliminary data visualization
plot(Duncan$education, Duncan$income)

mod1 = lm(Duncan$income~Duncan$education) # Tilda ~ separates y and x
out = summary(mod1)
out$residuals
out$coefficients[,"t value"]
out$r.squared
out$adj.r.squared
out$fstatistic["value"]

plot(Duncan$education, Duncan$income, 
     main="Income vs Educ",
     xlab="Education",
     ylab="Income",
     pch=16,col="red") # pch = type of data points
abline(lm(Duncan$income~Duncan$education),lty=2) 

# If statement
balance = 115 # loan balance
employ = "NO"
age = 40

if ((balance>=50) & (employ=="NO") & (age>=45)){decision="write-off"} else {decision="not write-off"}
decision

x=5
if (x>5){y="x is larger than 5"} else{y="x is not larger than 5"}
y

# Suppose the gpa =3.79
# Question: gpa >= 3.8, then scholarship="YES" else scholarship = "NO"
gpa=3.79
if (gpa>=3.8){scholarship="YES"}else{scholarship = "NO"}
scholarship

# for loop
# i or hkbu is a name you assign
x = seq(1,10,1)
y = matrix(NA,nrow=10,ncol=1) # Initiate a container y with 10rows,1column (data type=matrix)
for (hkbu in 1:10){ 
  y[hkbu]=x[hkbu]^2
}
y
class(y)

# cbind = column bind
# rbind = row bind
table = cbind(x,y)
colnames(table) = c("My X", "My Y")
table

# First need to transpose y (transform from column to row vector)
table2 = rbind(x,t(y)) 
rownames(table2) = c("XX", "YY")
table2







