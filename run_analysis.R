
# data reading section ----------------------------------------------------
# read train data
data.train.x <- read.table("UCI HAR Dataset/train/X_train.txt")
data.train.y <- read.table("UCI HAR Dataset/train/Y_train.txt")

# read test data
data.test.x <- read.table("UCI HAR Dataset/test/X_test.txt")
data.test.y <- read.table("UCI HAR Dataset/test/Y_test.txt")

# read activity labels
data.activity <- read.table("UCI HAR Dataset/activity_labels.txt")
# delete the underscore 
data.activity[,2] <- gsub("_", "", tolower(data.activity[,2]))

# read subjects
data.subj.train <- read.table("UCI HAR Dataset/train//subject_train.txt")
data.subj.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# read features
features <- read.table("UCI HAR Dataset//features.txt", as.is = TRUE)


# data processing section -------------------------------------------------
# bind the data
data.x <- rbind(data.train.x, data.test.x)
data.y <- rbind(data.train.y, data.test.y)
colnames(data.y) <- "activity"
data.subject <- rbind(data.subj.train, data.subj.test)
colnames(data.subject) <- "subject"

# extract the necessary records
extract.features <- grep("[m]ean|std", features[, 2])
data.x <- data.x[ ,extract.features]
names(data.x) <- tolower(features[extract.features, 2])

data.y[,1] <- data.activity[data.y[,1], 2]

# merge all data and write to csv file
data.merged <- cbind(data.subject, data.y, data.x)
write.csv(data.merged, file = "tidydata.csv", row.names = FALSE)

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
unique.subject <- sort(unlist(unique(data.subject)))
res <- NULL

for(i1 in seq_along(unique.subject)){
 for(i2 in data.activity[,2])
  res <- rbind(res,
               cbind(i1
                     ,i2
                     ,t(colMeans(data.merged[which(data.merged$subject==i1 & data.merged$activity==i2)
                                           , -c(1:2)])))
              )
}
colnames(res)[1:2] <- c("subject", "activity")
write.csv(res, "dataWithAverages.txt", row.names = FALSE)