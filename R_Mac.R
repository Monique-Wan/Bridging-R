# (0a) Remove the list in "Environment" by setting the list to empty list ls()
rm(list=ls())

# (0b) Setting a working directory to your project folder where
## your data is stored 
setwd("~/Programming/R/")

# (1) Assignment Operators
## Assign value/function to a variable
## Common one is <- 
## Pressing 2 buttons together Alt and - give you the assignment operator <- 
a = 21
A <- 22
a <- 10 

# (2) Output in Console/ Environment
## If you want to use the variable, you need to assign a name to hold the value.
## It will be appeared in the "Environment".
## If you want to check the value during the coding process, you can choose not to 
## store the value in a variable.
2+3         ### addition is printed in Console
n <- 2      ### Assign 2 to variable n
n^5         ### Print n to the power 5 in Console

# (3) Useful Functions
sqrt(9)     ### Square root
exp(4)      ### Exponential

x1 <-  seq(from=1,to=10,by=1) ### Create a sequence from 1 to 10 with step size=1
x2 <-  c(10:1)                ### Create a sequence from 10 to 1 with default size=1
x3 <-  rep(x2,times=2)        ### Replicate 1 two times
x4 <-  rep(1,2)               ### Replicate 1 two times
x5 <-  rep(x2,each=2)         ### Replicate "each" of the values in x2 two times
x6 <-  c(1:3)                 ### Create a squence from 1 to 3
x7 <-  rep(x6,times=c(4,2,3)) ### Replicate the 3 values in x 4, 2 and 3 times each. 

mean(x1)        ### Mean of x1
var(x2)         ### Variance of x1
log(x1)         ### Natural logarithm of x1
log(x1,2)       ### Logarithm with base 2

unique(x7)      ### Return unique values of x7
length(x7)      ### Return the length of x7

table(x7)       ### Table unique values of x7 and its frequency
summary(x7)     ### Provide descriptive statistics of x7

rbind(x1,x2)    ### Combine x1, x2 as rows
cbind(x1,x2)    ### Combine x1, x2 as columns

is.matrix(x1)   ### Return Boolean value (TRUE, FALSE) for this question
class(x7)       ### What is the data structure of x7?

# (4a) Character
cousins = c("Amy", "Brian", "Cindy", "Darwin", "Eric")  ### Collection of names
is.character(cousins)   ### Return Boolean value (TRUE, FALSE) for this question
class(cousins)          ### What is the data structure of cousins?

# (4b) Operations on Character
cousins[1]              ### Return the 1st element of cousins          
cousins[-5]             ### Drop the 5th element of cousins
cousins[c(2,4)]         ### Return the 2nd and 4th value
cousins[c(4,2)]         ### Return the 4th and 2nd value

# (5a) Factor
myvec <-  c("poor","gd","gd","avg","avg","gd", "poor", "gd","avg","gd")

is.factor(myvec)        ### Return Boolean value (TRUE, FALSE) for this question
class(myvec)            ### What is the data structure of myvec?

# (5b) Operactions on Factor
unique(myvec)                 ### Return unique values of myvec
myvec.ord0 <-  factor(myvec)  ### Change from character to factor

is.factor(myvec.ord0)         ### Return Boolean value (TRUE, FALSE) for this question
class(myvec.ord0)             ### What is the data structure of myvec.ord0?

### Change from character to factor with specific order 
myvec.ord1 <-  ordered(myvec,levels=c("poor","avg","gd")) 
myvec.ord2 <-  ordered(myvec,levels=c("gd","avg","poor"))



# (6a) Matrix
(x  <- matrix(c(1:6), nrow=2, ncol=3))          ### Return a matrix with 2 rows & 3 cols
(x  <- matrix(c(1:6), nrow=3, ncol=2))          ### Return a matrix with 3 rows & 2 cols by columns (default)
(x  <- matrix(c(1:6), nrow=3, ncol=2, byrow=T)) ### Return a matrix with 3 rows & 2 cols by rows
nrow(x)        ### Return number of rows of x
ncol(x)        ### Return number of columns of x
dim(x)         ### Return number of rows & columns of x

is.matrix(x)   ### Return Boolean value (TRUE, FALSE) for this question
class(x)       ### What is the data structure of x?

# (6b) Operations on Matrix
rowSums(x)                ### Calculate sum by row
colSums(x)                ### Calculate sum by column
rowMeans(x)               ### Calculate mean by row
colMeans(x)               ### Calculate mean by column


x[1,]                     ### Return 1st row of x
x[2:3,]                   ### Return 2nd to 3rd row of x
x[,2]                     ### Return 2nd column of x
x[3,2]                    ### Return element of x in 3rd row & 2nd column

# (7a) Data Frame
## Allows to collect variables with different data types
df = data.frame(                   ### df contains 4 variables
  gender = c("M","F","F"),        ### Each variable contains 3 values
  height = c(180,160,170),
  weight = c(75,60,62),
  age    = c(40,25,10)
)

is.data.frame(df)           ### Return Boolean value (TRUE, FALSE) for this question
class(df)                   ### What is the data structure of df?

# (7b) Operations on Data Frame
## Reference for R operators: https://www.datamentor.io/r-programming/operator/
df[,c(1,3)]                             ### Return 1st & 3rd column of all rows
df[, "gender"]                          ### Return "gender" column data
df[,c("gender", "age")]                 ### Return "gender" & "age" columns of all rows
subset(df, gender=="F")                 ### Select rows based on condition 
### == means "Equal to" NOT THE SAME as = which means "Assign value"
subset(df, age >= 40 & height > 160)    ### Select rows by 2 conditions
subset(df, age >= 40 & height > 160,    ### Select rows by 2 conditions but return "weight" only
       select = c("weight"))

# (8) Data Wrangling with Missing Values
x1  = c(13,18,13,14,13,16,14,21,13,NA)   ### Most data contains missing values in different forms
class(x1)
mean(x1)                                 ### mean returns NA

x2  = c(13,18,13,14,13,16,14,21,13,NaN)  ### NaN is also a missing value
class(x1)
mean(x2)                                 ### mean returns NA

mean(x1, na.rm = TRUE)                   ### na.rm=TRUE or na.rm=T removes NA 
median(x1, na.rm = TRUE)
quantile(x1, na.rm = TRUE)
var(x1, na.rm = TRUE)
sd(x1, na.rm = TRUE)
range(x1, na.rm = TRUE)
summary(x1, na.rm = TRUE)
table(x1)

x0 = c(10,20,30)        ### x0 contains 3 values
x0[c(2,3,1)]            ### reorder the 3 values: 2nd value, 3rd value, 1st value
x0[c(TRUE,FALSE,TRUE)]  ### Keep(Drop) values of x0 if TRUE (FALSE)

p = c(70, 71, 72, 72, 75, 75, NA) ### An NA value exists in p
is.na(p)                          ### Return Boolean (TRUE, FALSE): TRUE if NA, else FASE
complete.cases(p)                 ### Opposite to is.na. That is, NOT NA

p[!is.na(p)]                      ### Operator ! means Not: NOT "TRUE" is FALSE, NOT "FASLE" is TRUE
p[complete.cases(p)]

p = c(70, 71, 72, 72, 75, 75, 999)
p[p==999] = NA
p[complete.cases(p)]

p = c(70, 71, 72, 72, 75, 75, "?")
p[p=="?"] = NA
p[complete.cases(p)]

# (9) Plotting

## (9a) Histogram
a <- rnorm(100,mean=0,sd=1)   ### Generate Normal random numbers N(0,1)
hist(a)                       ### Plot simple histogram
hist(a, col='yellow')         ### col is color
hist(a, col='yellow',         
     main = "My Histogram",   ### main is title of the figure
     xlab = "Values of a",    ### xlab is x label
     ylab = "# Counts")       ### ylab is y label

## (9b) Scatterplot
x <- 1:10                      ### Another way to generate integers
class(x)
y <- x^2                       ### Raise x to power 2 
plot(x,y)
plot(x, y, col="blue", pch=16) ### pch is point character

## (9c) Boxplot
z1 <- c(64, 65, 68, 69, 70, 
        71, 72, 72, 75, 75, 
        80, 81, 83, 85, 110)
z2 <- rnorm(15,50,10)
z3 <- rep(c("summer","winter"), times=c(10,5))

boxplot(z1,z2, main="Hooray!", col="gold")
boxplot(z1,z2, main="Hooray!", col="gold", horizontal=TRUE)
boxplot(z1~z3, main="Hooray!", col="gold")
boxplot(z1~z3, main="Hooray!", col="gold", 
        xlab="Season", ylab="whatever")

# (10) Random Sampling
set.seed(1234)                     ### 1234 is the seed number, Ensure exact replication
a <- rnorm(100, mean=0, sd=1)
sample(a, size=10, replace=T)      ### sample 10 numbers from a with replacement

hist(a, prob=T, col="lightblue")   ### Plot a histogram with x=prob instead of counts
lines(density(a), col="red")       ### Add a density on histogram

# (11) Linear regression 
set.seed(123)

x <- runif(100,-2,2)    ### 100 numbers from U(-2,2)
a <- 1                  ### a is the intercept 
b <- 2                  ### b is the slope 
u <- rnorm(100,0,1)     ### 100 numbers from N(0,1) are the error values

y <- a + b*x + u        ### Simulate y through this relationship

mod <- lm(y~x)          ### OLS regression: Expect to get intercept, slope hat ~ 1, 2
mod 

result <-  summary(mod) ### Generate more results from mod
result$coefficients     ### Can you see the popup menu? 
### $ means you call RHS from result
### (Object with many results)$(the particular result)
result$sigma            ### Return sd(u)

plot(y~x, col='lightblue', pch=16)  ### Plot the data y against x
abline(mod, col="red")              ### Add the fitted line on it


# (12) Using library
library(car)            ### Call the library car (Can be found in Packages)
data(Duncan)            ### car has a data called Duncan
colnames(Duncan)        ### Return column names of Duncan
str(Duncan)             ### Return basic details of Duncan

mean(income)            ### What do you see in Console?
mean(Duncan$income)

## More plots for multivariate
plot(Duncan$income, Duncan$education, 
     col='cyan', pch=10, 
     main = "Beautiful Plot !",
     xlab = "Income",
     ylab = "Education")
abline(lm(Duncan$income ~ Duncan$education), col='red', lwd=3)

plot(Duncan$income, Duncan$education,
     main="Relationship of Income and Education",
     ylab="Education Index", xlab="Yearly Income",
     pch=16, col="red") 
abline(lm(Duncan$income~Duncan$education), lty=2)

attach(Duncan)
mean(income)       ### Do you still see the error message in Console?

pairs(~income+education+prestige)

library(corrplot)  ### Need to install package corrplot
x0 <- Duncan[,c("income","education","prestige")]
corrplot(cor(x0), method="circle")
corrplot(cor(x0), method="color")
corrplot(cor(x0), method="number")
corrplot(cor(x0), method="number", type="upper")



# (13) Export data
x <- rnorm(100,mean=10,sd = 5)
y <- rep(1,100)
data <- cbind(x,y)
write.csv(data, file="mydata.csv")



# (14) Import data
library(foreign)     ### Install package foreign and call this package out
grel <- read.spss("NILT2012GR.sav", 
                  to.data.frame = TRUE)  ### Convert it to data.frame
colnames(grel)       ### Return column names
attach(grel)

table(nkids)
detach(grel)         ### If you don't need to use Duncan, you can detach it

library(foreign)   ### Not necessary to call it once more
debt = read.dta("debtratio.dta")

library(readr)     ### Install package readr and call this package out
urlfile1 <- "https://raw.githubusercontent.com/Monique-Wan/Bridging-R/master/Wholesale%20customers%20data.csv"
Wholesale = read_csv(url(urlfile1))

library(readxl)    ### Install package readxl and call this package out
Predictor = read_excel("PredictorData2014.xlsx", 
                       sheet = "Quarterly")   ### Specify the name of the Excelsheet (Excel tag)
library(foreign)
urlfile2 ="https://raw.githubusercontent.com/Monique-Wan/Bridging-R/master/churn.arff"
churn = read.arff(url(urlfile2))


# (15) If-Else
### Assume a customer's data is:
balance  <- 115
employ   <- "NO"
age      <- 40

### If the customer's data meet the standard where
### balance >= 50, and
### employ == "NO", and 
### age >= 45,
### then, create a variable called decision 
### that equals to character value "Write-off",
### if conditions are not met, then
### the variable decision equals to character value "Not Write-off"

if ((balance >= 50) & (employ == "NO") & (age >= 45)) {
  decision = "Write-off"
} else {
  decision = "Not write-off"
}

a <- 3
ifelse(a>=2,"TRUE","FALSE")

# (16) For Loop
score <- matrix(NA, nrow=5, ncol=1) ### Create an empty container with 5 rows & 1 column
math  <- c(75,83,78,65,91)
eng   <- c(85,89,62,78,95)
subjects <- cbind(math,eng)
for (i in 1:5){
  score[i] <- mean(subjects[i,])    ### mean of i-th row of subjects
}

