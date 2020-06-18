# Getting-and-Cleaning-Data-Final-Project
This is my submission for the final project of the course Getting and Cleaining Data offered by the Johns Hopkins University on Coursera.

## Introduction
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The Tasks
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## The Process and Output

### Explaining run_analysis.R
First of all the zip file is downloaded on the local machine by the name of 'allData.zip' and is unzipped in the program to see the files downloaded. Then all the required files are read, features.txt which carried the names of the features, activity_labels.txt which carried the names of activities, all the testing and the training data. Next, the training and the testing data is merged together and the proper naming of the columns is done using feature.txt. Then the measurements on mean and standard devation is extracted using the names of the columns, which were carrying the string mean or std. Next, the values for activity in the data frame is replaced by the activity labels which were read earlier. The appropriate and descriptive names of the variable were assigned using the features_info.txt file in the downloaded data, which carried the explanations for the columns names. Lastly, an independent and tidy dataset was created and saved, which carried the average of each variable for each activity and each subject.

### tidyData.txt/ tidyData.csv
This file carries the independent and tidy dataset which was created at task number five.

### CodeBook.md
This is the code book for tidyData.txt/ tidyData.csv.