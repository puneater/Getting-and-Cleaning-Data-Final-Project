# Code Book for tidyData.txt/ tidyData.csv
## Raw Data
Description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Variables

The tidyData consists of 81 columns, as follows:

 [1] subject : The experiment was conducted on 30 volunteers. This varaible mentions the serial number for the volunteers [1-30] [numeric]

 [2] activity : The lables for the activities performed by the volunteers. ["LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"] [character]

Now are the measurement variables, explaination for them can be found below

 [3] "timeBodyAccelerometer-mean()-X"                    
 [4] "timeBodyAccelerometer-mean()-Y"                    
 [5] "timeBodyAccelerometer-mean()-Z"                    
 [6] "timeBodyAccelerometer-std()-X"                     
 [7] "timeBodyAccelerometer-std()-Y"                     
 [8] "timeBodyAccelerometer-std()-Z"                     
 [9] "timeGravityAccelerometer-mean()-X"                 
[10] "timeGravityAccelerometer-mean()-Y"                 
[11] "timeGravityAccelerometer-mean()-Z"                 
[12] "timeGravityAccelerometer-std()-X"                  
[13] "timeGravityAccelerometer-std()-Y"                  
[14] "timeGravityAccelerometer-std()-Z"                  
[15] "timeBodyAccelerometerJerk-mean()-X"                
[16] "timeBodyAccelerometerJerk-mean()-Y"                
[17] "timeBodyAccelerometerJerk-mean()-Z"                
[18] "timeBodyAccelerometerJerk-std()-X"                 
[19] "timeBodyAccelerometerJerk-std()-Y"                 
[20] "timeBodyAccelerometerJerk-std()-Z"                 
[21] "timeBodyGyroscope-mean()-X"                        
[22] "timeBodyGyroscope-mean()-Y"                        
[23] "timeBodyGyroscope-mean()-Z"                        
[24] "timeBodyGyroscope-std()-X"                         
[25] "timeBodyGyroscope-std()-Y"                         
[26] "timeBodyGyroscope-std()-Z"                         
[27] "timeBodyGyroscopeJerk-mean()-X"                    
[28] "timeBodyGyroscopeJerk-mean()-Y"                    
[29] "timeBodyGyroscopeJerk-mean()-Z"                    
[30] "timeBodyGyroscopeJerk-std()-X"                     
[31] "timeBodyGyroscopeJerk-std()-Y"                     
[32] "timeBodyGyroscopeJerk-std()-Z"                     
[33] "timeBodyAccelerometerMagnitude-mean()"             
[34] "timeBodyAccelerometerMagnitude-std()"              
[35] "timeGravityAccelerometerMagnitude-mean()"          
[36] "timeGravityAccelerometerMagnitude-std()"           
[37] "timeBodyAccelerometerJerkMagnitude-mean()"         
[38] "timeBodyAccelerometerJerkMagnitude-std()"          
[39] "timeBodyGyroscopeMagnitude-mean()"                 
[40] "timeBodyGyroscopeMagnitude-std()"                  
[41] "timeBodyGyroscopeJerkMagnitude-mean()"             
[42] "timeBodyGyroscopeJerkMagnitude-std()"              
[43] "frequencyBodyAccelerometer-mean()-X"               
[44] "frequencyBodyAccelerometer-mean()-Y"               
[45] "frequencyBodyAccelerometer-mean()-Z"               
[46] "frequencyBodyAccelerometer-std()-X"                
[47] "frequencyBodyAccelerometer-std()-Y"                
[48] "frequencyBodyAccelerometer-std()-Z"                
[49] "frequencyBodyAccelerometer-meanFreq()-X"           
[50] "frequencyBodyAccelerometer-meanFreq()-Y"           
[51] "frequencyBodyAccelerometer-meanFreq()-Z"           
[52] "frequencyBodyAccelerometerJerk-mean()-X"           
[53] "frequencyBodyAccelerometerJerk-mean()-Y"           
[54] "frequencyBodyAccelerometerJerk-mean()-Z"           
[55] "frequencyBodyAccelerometerJerk-std()-X"            
[56] "frequencyBodyAccelerometerJerk-std()-Y"            
[57] "frequencyBodyAccelerometerJerk-std()-Z"            
[58] "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[59] "frequencyBodyAccelerometerJerk-meanFreq()-Y"       
[60] "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[61] "frequencyBodyGyroscope-mean()-X"                   
[62] "frequencyBodyGyroscope-mean()-Y"                   
[63] "frequencyBodyGyroscope-mean()-Z"                   
[64] "frequencyBodyGyroscope-std()-X"                    
[65] "frequencyBodyGyroscope-std()-Y"                    
[66] "frequencyBodyGyroscope-std()-Z"                    
[67] "frequencyBodyGyroscope-meanFreq()-X"               
[68] "frequencyBodyGyroscope-meanFreq()-Y"               
[69] "frequencyBodyGyroscope-meanFreq()-Z"               
[70] "frequencyBodyAccelerometerMagnitude-mean()"        
[71] "frequencyBodyAccelerometerMagnitude-std()"         
[72] "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[73] "frequencyBodyAccelerometerJerkMagnitude-mean()"    
[74] "frequencyBodyAccelerometerJerkMagnitude-std()"     
[75] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()"

[76] "frequencyBodyGyroscopeMagnitude-mean()"            
[77] "frequencyBodyGyroscopeMagnitude-std()"             
[78] "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[79] "frequencyBodyGyroscopeJerkMagnitude-mean()"        
[80] "frequencyBodyGyroscopeJerkMagnitude-std()"         
[81] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"    

All the variables, from 3 to 81, are of numeric data type. They carry the average values of every measurement of mean and standard deviation, for each subject and for each activity, which was present in the raw data.

### Tasks performed on the raw data
1. Merges the training and the test sets to create one data set.
 - the files subject_test.txt, y_test.txt, X_test.txt were combined using cbind function in the test varaiable
 - the files subject_train.txt, y_train.txt, X_train.txt were combined using cbind function in the train varaiable
 - the the train and test data were mergedn together using rbind funtion
 - the column names were given using features.txt file
 - hence a data frame with first two columns as subject and activity and the further columns as measurements is now present

2. Extracts only the measurements on the mean and standard deviation for each measurement.
 - the column names which had the string "mean" or "std" were extracted, inlcuding the first two columns which has subject and activity data

3. Uses descriptive activity names to name the activities in the data set
 - the second column, which has activity as numbers, were converted to proper activity names using activity_labels.txt file

4. Appropriately labels the data set with descriptive variable names.
 - excluding the first two columns of the data frame, the following operations were done on the names of the columns
 - initial "t" character was changed to "time"
 - initial "f" character was changed to "frequency"
 - 'BodyBody' was replaced with 'Body'
 - 'Acc' was replaced with 'Accelerometer'
 - 'Gyro' was replaced with 'Gyroscope'
 - 'Mag' was replaced with 'Magnitude'

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 - the data frame was aggregated on subject and activity columns, using the function mean, this was done using the aggregate function, this data was saved another data frame
 - this data frame was then ordered by subject and activity using the order function
 - this data was saved as tidyData.txt using write.table function and was also saved as tidyData.csv using the write.csv funtion

### Units and explaination for measurement variables of the raw data
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean