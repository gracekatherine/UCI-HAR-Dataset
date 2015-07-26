setwd("~/Desktop/School/Coursera 2014-2016/Data Science/1.3 Getting Cleaning Data/Course Project/UCI HAR Dataset")
library(dplyr)
library(tidyr)
library(reshape2)

## 1. Merge the training and the test sets to create one data set.
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

test_df <- cbind(subject_test, y_test, x_test)
train_df <- cbind(subject_train, y_train, x_train)
test_train_df <- rbind(test_df, train_df)

## 2. Extract only the measurements on the mean and standard deviation for each measurement. 
measurements <- grep("-mean[(]|-std[(]", features[,2])
test_train_subset <- test_train_df[, c(1,2,(measurements+2))]

## 3. Use descriptive activity names to name the activities in the data set
test_train_subset[test_train_subset$V1.1 == 1, 2] <- "WALKING"
test_train_subset[test_train_subset$V1.1 == 2, 2] <- "WALKING_UPSTAIRS"
test_train_subset[test_train_subset$V1.1 == 3, 2] <- "WALKING_DOWNSTAIRS"
test_train_subset[test_train_subset$V1.1 == 4, 2] <- "SITTING"
test_train_subset[test_train_subset$V1.1 == 5, 2] <- "STANDING"
test_train_subset[test_train_subset$V1.1 == 6, 2] <- "LAYING"

## 4. Appropriately label the data set with descriptive variable names.
colNames = c("SubjectID", "Activity", as.character(features[measurements, 2]))
colNames = gsub("\\(\\)", "", colNames)
colNames = gsub("BodyBody", "Body", colNames)
colNames = gsub("-", "", colNames)
colNames = gsub("mean", "Mean", colNames)
colNames = gsub("std", "Std", colNames)
names(test_train_subset) <- colNames

## Write data to a CSV file
write.table(test_train_subset, "../tidy_data.csv", sep = ",", row.names = FALSE)

## 5. From the data set in step 4, create a second, independent tidy data set
##    with the average of each variable for each activity and each subject.

data_melt <- melt(test_train_subset, id = c("SubjectID", "Activity"))
data_cast <- dcast(data_melt, SubjectID + Activity ~ variable, mean)

## Write data to a CSV file
write.table(data_cast, "../tidy_data_means.txt", sep = ",", row.names = FALSE)
