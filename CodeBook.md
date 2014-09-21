about the data
======

The data for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

About the detail of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


This run_analysis.R script transcorm datasets into tidy dataset.

I followed the steps which indicated in the coursera assignment page instruction:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Format and Variables in the data

The output tidydata.csv (comma-deliminated) file contains following:
*1st column
 + Subject: An identifier of the subject who carried out the experiment
*2nd column
 + Activity label --"laying", "sitting", "standing",
 "walking", "walkingdownstairs", "walkingupstairs"
*3rd and after columns
 + The measurements on the mean and standard deviation for each measurement extracted from the original dataset.

In tidydata.csv, the data contains all the train and test record with appropriate activity names.

In the output file dataWithAverages.txt contains following
* 1st column
 + Subject: An identifier of the subject who carried out the experiment
* 2nd column
 + Activity label --"laying", "sitting", "standing",
 "walking", "walkingdownstairs", "walkingupstairs"
* 3rd and after columns
 + The mean of each measurements which are in the tidydata.csv