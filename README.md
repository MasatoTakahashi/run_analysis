run_analysis
============
This repository is just for coursera submission.

The "run_analysis.R" is the R source code that prepare the data file from UCIHAR into tidy dataset.
UCIHAR dataset can be obtain from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
To execute this run_analysis.R source code, the dataset which indicated above is needed to be downloaded and unarchived in the same directory.


This run_analysis.R script transcorm datasets into tidy dataset.

I followed the steps which indicated in the coursera assignment page instruction:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Important note to run this script
This run_analysis.R script should be placed in your default workind directory.
And the data files have to be placed in the same directory as the source code.
The data files which obtained from the above link should consist the same directory structure as the original.

