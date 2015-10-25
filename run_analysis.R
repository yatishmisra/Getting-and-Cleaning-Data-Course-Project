## Checking the directory & downloading the dataset
if(!file.exists("./gcd/cp")) { dir.create("./gcd/cp")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
setwd("./gcd/cp")
download.file(url, "gcd_cp.zip")
unzip("gcd_cp.zip")

##Reading all the relevant test & train *.txt files into data frames
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

## Combining the test & train data frames
xdata <- rbind(x_test, x_train)
ydata <- rbind(y_test, y_train)
subdata <- rbind(subject_test, subject_train)

## Reading Activity lables & feature data
activitydata <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
featuredata <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

library(plyr)

## Editing the column names to respective data frames
colnames(activitydata) <- c("ActId", "ActType")
colnames(subdata) <- c("SubjectId")
colnames(xdata) <- featuredata[,2]
colnames(ydata) <- c("ActId")

## Updating activity data by loooking up value in table
ydata <- join(ydata, activitydata, by = "ActId")

## Picking up the relevant columns
xdata <- xdata[, grepl("mean\\(\\)|std\\(\\)", colnames(xdata))]

## Combining all the 3 data frames
alldata <- cbind(xdata, subdata, ydata)

## Cleaning the names for columns
names(alldata)<-gsub("^t", "time", names(alldata))
names(alldata)<-gsub("^f", "frequency", names(alldata))
names(alldata)<-gsub("Acc", "Accelerometer", names(alldata))
names(alldata)<-gsub("Gyro", "Gyroscope", names(alldata))
names(alldata)<-gsub("Mag", "Magnitude", names(alldata))
names(alldata)<-gsub("BodyBody", "Body", names(alldata))

## Creating a subset tidy data set with the average of each variable for each activity and each subject
alldata2 <- aggregate(. ~ SubjectId + ActType, alldata, mean)
alldata2 <- alldata2[order(alldata2$SubjectId, alldata2$ActType),]

## Outputting subset tidy data to a text file
write.table(alldata2, file = "tidydata.txt", row.name = FALSE, sep = "\t")
