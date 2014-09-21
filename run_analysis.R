
# read train data
data.train.x <- read.table("UCI HAR Dataset/train/X_train.txt")
data.train.y <- read.table("UCI HAR Dataset/train/Y_train.txt")

# read test data
data.test.x <- read.table("UCI HAR Dataset/test/X_test.txt")
data.test.y <- read.table("UCI HAR Dataset/test/Y_test.txt")

# read activity labels
data.activity <- read.table("UCI HAR Dataset/activity_labels.txt")

# read subjects
data.subj.train <- read.table("UCI HAR Dataset/train//subject_train.txt")
data.subj.test <- read.table("UCI HAR Dataset/test/subject_test.txt")



a