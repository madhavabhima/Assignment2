## Load/Read Data file
data <- read.csv(file='hw1_data.csv')

## The above data file should be placed in working directory.
## To check current working directory we can use getwd() that will give you working directory path.
## For Example , > getwd()
## [1] "C:/Users/Lalit/Documents"

##what are the column names of the dataset?
colnames(data)
## we can use the below command as well
names(data)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?

print(data[1:2, ])
## or we can use the below commands also
head(data,2)
## or use the below command too
data[c(1,2),]

#How many observations (i.e. rows) are in this data frame?

nrow(data)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
n <- nrow(data)
print(data[(n- 2+1):n, ])

## or use the below command too
data[c(152,153),]

#What is the value of Ozone in the 47th row?
data[47,"Ozone"]

#How many missing values are in the Ozone column of this data frame?
miss <- is.na(data[, "Ozone"])
sum(miss)

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(data[, "Ozone"], na.rm= TRUE)

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
subset(data, Ozone >31 & Temp >90)
mean(data$Solar.R[data$Ozone >31 & data$Temp >90], na.rm=TRUE)

#What is the mean of "Temp" when "Month" is equal to 6?
mean(data$Temp [data$Month==6], na.rm=TRUE)

#What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(data$Ozone [data$Month==5], na.rm=TRUE)
