Obtaining and processing data ->

To learn more about original data : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

When the script is run, the following steps are done:  
- Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip in the current directory  
- Combining the test & train data frames
- Subject Data, Activity labels & feature data picked up
- For the test data and the training data, labels from feature data are added as column names.
- Only mean and std variables from direct measurements are kept. 
- Activity names are added using the activity_labels.txt file to match id and names.  
- All the 3 data sets are combined 
- A second, independent tidy data set with the average of each variable for each activity and each subject is created.  
- The tidy data is saved in "tidydata.txt"

Variables tidydata.txt ->
In tidydata.txt, the following identifier variables are provided:

- SubjectId : id of the subject
- ActType : Name of the activity when values were recorded
- ActId : Activity Id

These measurement variables are provided. 
timeBodyAccelerometer-mean()-X

timeBodyAccelerometer-mean()-Y

timeBodyAccelerometer-mean()-Z

timeBodyAccelerometer-std()-X

timeBodyAccelerometer-std()-Y

timeBodyAccelerometer-std()-Z

timeGravityAccelerometer-mean()-X

timeGravityAccelerometer-mean()-Y

timeGravityAccelerometer-mean()-Z

timeGravityAccelerometer-std()-X

timeGravityAccelerometer-std()-Y

timeGravityAccelerometer-std()-Z

timeBodyAccelerometerJerk-mean()-X

timeBodyAccelerometerJerk-mean()-Y

timeBodyAccelerometerJerk-mean()-Z

timeBodyAccelerometerJerk-std()-X

timeBodyAccelerometerJerk-std()-Y

timeBodyAccelerometerJerk-std()-Z

timeBodyGyroscope-mean()-X

timeBodyGyroscope-mean()-Y

timeBodyGyroscope-mean()-Z

timeBodyGyroscope-std()-X

timeBodyGyroscope-std()-Y

timeBodyGyroscope-std()-Z

timeBodyGyroscopeJerk-mean()-X

timeBodyGyroscopeJerk-mean()-Y

timeBodyGyroscopeJerk-mean()-Z

timeBodyGyroscopeJerk-std()-X

timeBodyGyroscopeJerk-std()-Y

timeBodyGyroscopeJerk-std()-Z

timeBodyAccelerometerMagnitude-mean()

timeBodyAccelerometerMagnitude-std()

timeGravityAccelerometerMagnitude-mean()

timeGravityAccelerometerMagnitude-std()

timeBodyAccelerometerJerkMagnitude-mean()

timeBodyAccelerometerJerkMagnitude-std()

timeBodyGyroscopeMagnitude-mean()

timeBodyGyroscopeMagnitude-std()

timeBodyGyroscopeJerkMagnitude-mean()

timeBodyGyroscopeJerkMagnitude-std()

frequencyBodyAccelerometer-mean()-X

frequencyBodyAccelerometer-mean()-Y

frequencyBodyAccelerometer-mean()-Z

frequencyBodyAccelerometer-std()-X

frequencyBodyAccelerometer-std()-Y

frequencyBodyAccelerometer-std()-Z

frequencyBodyAccelerometerJerk-mean()-X

frequencyBodyAccelerometerJerk-mean()-Y

frequencyBodyAccelerometerJerk-mean()-Z

frequencyBodyAccelerometerJerk-std()-X

frequencyBodyAccelerometerJerk-std()-Y

frequencyBodyAccelerometerJerk-std()-Z

frequencyBodyGyroscope-mean()-X

frequencyBodyGyroscope-mean()-Y

frequencyBodyGyroscope-mean()-Z

frequencyBodyGyroscope-std()-X

frequencyBodyGyroscope-std()-Y

frequencyBodyGyroscope-std()-Z

frequencyBodyAccelerometerMagnitude-mean()

frequencyBodyAccelerometerMagnitude-std()

frequencyBodyAccelerometerJerkMagnitude-mean()

frequencyBodyAccelerometerJerkMagnitude-std()

frequencyBodyGyroscopeMagnitude-mean()

frequencyBodyGyroscopeMagnitude-std()

frequencyBodyGyroscopeJerkMagnitude-mean()

frequencyBodyGyroscopeJerkMagnitude-std()
