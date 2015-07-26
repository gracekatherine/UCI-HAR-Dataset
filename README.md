## Repository Overview

This repository contains the code and associated file material for the final project in the Coursera course Getting and Cleaning Data, provided by Johns Hopkins University.

The data were obtained from the University of California, Irvine, Human Activity Recognition Using Smartphones Data Set (more information may be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## run_analysis.R

The script run_analysis.R performs the following steps, in the order in which they appear:

1. Merges the training and the test sets to create one data set (test_train_df).
2. Extracts only the measurements on the mean and standard deviation for each measurement (test_train_subset). 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names, and writes the resulting data to a CSV file (tidy_data.csv). 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject (data_cast), and writes this data set to both CSV and TXT files (tidy_data_means.csv and tidy_data_means.txt).

## Tidy Data

Notes on “tidy data set” requirements:

All lower case when possible - the variables names were not converted to lower case, since this would make them more difficult to understand.
Descriptive (Diagnosis versus Dx) - the variable names are left according to the code book, which is as descriptive as I can make them.
Not duplicated - all variable names are unique.
Not have underscores or dots or white spaces - dashes and parentheses were removed from all variable names.

To satisfy these requirements, the following actions were performed:

Replace -mean with Mean
Replace -std with Std
Remove characters -()
Replace BodyBody with Body