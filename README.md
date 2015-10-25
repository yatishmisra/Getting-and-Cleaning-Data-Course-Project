# Getting-and-Cleaning-Data-Course-Project
Content for course project

The R script run_analysis.R gets and cleans the data from the Human Activity Recognition Using Smartphones Data Set provided by the Machine Learning Repository of UCI. 

You can learn more from the original data set at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To run the script, just type in R:
> source("run_analysis.R")  
> run_analysis()

This script will automatically download and process the data. The workflow and the output of run_analysis() is detailed in the CodeBook.md provided in this repository.

The R script run_analysis.R has been created following the project instructions:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
