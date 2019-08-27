remove(data)
rm(list=ls())

# = and <- are both assignment operators
a=2
b<-1
A=3
# Calculator
c = a+b
d = a-b
e = a*b
f = a/b
g = a+b0

# Basic Functions
n1 = sqrt(a) # square root
n2 = log(10)
n3 = exp(1)  # e^1
n4 = log(n3) # log = natural logarithm with base e
n5 = log2(2) # log with base 2
n6 = log(2,base=2)
n7 = sin(pi)
n8 = pi

# Useful functions
# Create a linear time trend (1,...,10)
n9 = seq(from=1,to=10,by=1)
n9
# Create a linear time trend (2,4,6,..,20)
n10 = seq(to=20,from=2,by=2)
n10
n11 = seq(20,2,-2)
n11
n12 = c(1:10) # c is a collector, : means "to"

# Use n9=(1,2,...,10)
mean(n9)
sd(n9)
var(n9)
sqrt(var(n9))

# Introduction of Matrix
# What is the data type of n9?
class(n9)
m9 = as.matrix(n9) # Transform numeric to matrix
class(m9)
d9 = as.data.frame(n9) # Transform numeric to data.frame
class(d9)
View(n9)

mean(m9)
apply(m9,2,mean)

# Subset a matrix m9
m9[2]
m9[2:5]
data = c(10,20,30,40,50,60)
m = matrix(data,nrow=2,ncol=3)
m
# "," separates row from column
m[1:2,2] # [(1 to 2 row),2nd column]
m[,2]    # [all rows, 2nd column]= [__,2]

# Row Sums/Means
m
rs = rowSums(m)
rs
rm = rowMeans(m)
rm

# Column Sums/Means
cs = colSums(m)
cm = colMeans(m)
cs
cm
dim(m)
nrow(m)
ncol(m)
m[1,]
m[1,2:ncol(m)]

ss = seq(1,60,1) # index assigned to students
# Training sample with 20 students
set.seed(2019)
i = sample(ss,20)
i
ss[i]
# Testing sample with 40 students
ss[-i]

# Let's create a data frame that contains
# index, income
m = rnorm(60,mean=16000,sd=100)
data = data.frame(index=ss,income=m)
#Training sample
train = data[i,]
# Testing sample
test = data[-i,]

miu.train = colMeans(train)[2]
miu.test  = colMeans(test)[2]

# Create Characters
cousins = c("Amy","Bob","Carmen","David","Eva")
class(cousins)
cousins[4:5]
cousins[-5]
data = cousins[-1]
data
cousins["Carmen"]
cousins[c(2,4)]
cousins[c(4,2)]

data = data.frame(index=ss,income=m)
data[,2]
data["income"]
