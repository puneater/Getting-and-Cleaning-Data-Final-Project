#  R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
#  Copyright (C) 2020 The R Foundation for Statistical Computing
#  Platform: x86_64-w64-mingw32/x64 (64-bit)

#  Date of the data collection
#  > date()
#  [1] "Thu Jun 18 16:37:09 2020"

#  Downloading zip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "allData.zip")


#  listing the details of the files downloaded, to know which files to be read
unzip("allData.zip", list = TRUE)


#  reading the required files as tables (data frames)
activity_labels <- read.table(unz("allData.zip", "UCI HAR Dataset/activity_labels.txt"), header = FALSE)
activity_labels <- as.character(activity_labels[,2])  #  filtering out column containing names

features <- read.table(unz("allData.zip", "UCI HAR Dataset/features.txt"), header = FALSE)
features <- as.character(features[,2])  #  filtering out column containing names

subject_test <- read.table(unz("allData.zip", "UCI HAR Dataset/test/subject_test.txt"), header = FALSE)

X_test <- read.table(unz("allData.zip", "UCI HAR Dataset/test/X_test.txt"), header = FALSE)

y_test <- read.table(unz("allData.zip", "UCI HAR Dataset/test/y_test.txt"), header = FALSE)

subject_train <- read.table(unz("allData.zip", "UCI HAR Dataset/train/subject_train.txt"), header = FALSE)

X_train <- read.table(unz("allData.zip", "UCI HAR Dataset/train/X_train.txt"), header = FALSE)

y_train <- read.table(unz("allData.zip", "UCI HAR Dataset/train/y_train.txt"), header = FALSE)


#  binding the test data
allTest <- cbind(subject_test, y_test, X_test)

#  binding the train data
allTrain <- cbind(subject_train, y_train, X_train)


#  1) merging the train and test data
allData <- rbind(allTest, allTrain)


#  naming the columns of allData
names(allData) <- c("subject", "activity", features)


#  2) extraction of data with measurements on mean and standard deviation
allData <- allData[,names(allData) %in% c("subject", "activity", grep("mean|std",names(allData), value = TRUE))]


#  3) using activity_labels to name activities in allData
allData$activity <- activity_labels[allData$activity]


#  4) labeling allData with descriptive variable names,
#  (in this first two column names, i.e. 'subject' and 'activity',
#  will be ignore, by using [-c(1:2)] on the data frame)
#  following conversions are done,
#  a. replacing initial character 't' with 'time'
names(allData)[-c(1:2)] <- gsub("^t","time",names(allData)[-c(1:2)])

#  b. replacing initial character 'f' with 'frequency'
names(allData)[-c(1:2)] <- gsub("^f","frequency",names(allData)[-c(1:2)])

#  c. replacing 'BodyBody' with 'Body'
names(allData)[-c(1:2)] <- gsub("BodyBody","Body",names(allData)[-c(1:2)])

#  c. replacing 'Acc' with 'Accelerometer'
names(allData)[-c(1:2)] <- gsub("Acc","Accelerometer",names(allData)[-c(1:2)])

#  d. replacing 'Gyro' with 'Gyroscope'
names(allData)[-c(1:2)] <- gsub("Gyro","Gyroscope",names(allData)[-c(1:2)])

#  e. replacing 'Mag' with 'Magnitude'
names(allData)[-c(1:2)] <- gsub("Mag","Magnitude",names(allData)[-c(1:2)])


#  5) from allData make a tidy dataset with average of each variable for each activity and each subject
tidyData<-aggregate(. ~ subject + activity, allData, mean)
tidyData<-tidyData[order(tidyData$subject,tidyData$activity),]

#  saving tidy data using write.table and write.csv
write.table(tidyData, file = "tidyData.txt", row.names = FALSE)
write.csv(tidyData, file = "tidyData.csv", row.names = FALSE)