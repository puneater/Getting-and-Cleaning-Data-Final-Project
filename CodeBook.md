# Code Book for tidyData.txt/ tidyData.csv
## Raw Data
Description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Variables
subject : The experiment was conducted on 30 volunteers. This varaible mentions the serial number for the volunteers [1-30] [numeric]

activity : The lables for the activities performed by the volunteers. ["LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"] [character]

### Units and explaination for variables of raw data
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

### Tasks performed on the raw data
1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### After the tasks were performed, following variables were collected
 [1] "timeBodyAccelerometer-mean()-X"                    
 [2] "timeBodyAccelerometer-mean()-Y"                    
 [3] "timeBodyAccelerometer-mean()-Z"                    
 [4] "timeBodyAccelerometer-std()-X"                     
 [5] "timeBodyAccelerometer-std()-Y"                     
 [6] "timeBodyAccelerometer-std()-Z"                     
 [7] "timeGravityAccelerometer-mean()-X"                 
 [8] "timeGravityAccelerometer-mean()-Y"                 
 [9] "timeGravityAccelerometer-mean()-Z"                 
[10] "timeGravityAccelerometer-std()-X"                  
[11] "timeGravityAccelerometer-std()-Y"                  
[12] "timeGravityAccelerometer-std()-Z"                  
[13] "timeBodyAccelerometerJerk-mean()-X"                
[14] "timeBodyAccelerometerJerk-mean()-Y"                
[15] "timeBodyAccelerometerJerk-mean()-Z"                
[16] "timeBodyAccelerometerJerk-std()-X"                 
[17] "timeBodyAccelerometerJerk-std()-Y"                 
[18] "timeBodyAccelerometerJerk-std()-Z"                 
[19] "timeBodyGyroscope-mean()-X"                        
[20] "timeBodyGyroscope-mean()-Y"                        
[21] "timeBodyGyroscope-mean()-Z"                        
[22] "timeBodyGyroscope-std()-X"                         
[23] "timeBodyGyroscope-std()-Y"                         
[24] "timeBodyGyroscope-std()-Z"                         
[25] "timeBodyGyroscopeJerk-mean()-X"                    
[26] "timeBodyGyroscopeJerk-mean()-Y"                    
[27] "timeBodyGyroscopeJerk-mean()-Z"                    
[28] "timeBodyGyroscopeJerk-std()-X"                     
[29] "timeBodyGyroscopeJerk-std()-Y"                     
[30] "timeBodyGyroscopeJerk-std()-Z"                     
[31] "timeBodyAccelerometerMagnitude-mean()"             
[32] "timeBodyAccelerometerMagnitude-std()"              
[33] "timeGravityAccelerometerMagnitude-mean()"          
[34] "timeGravityAccelerometerMagnitude-std()"           
[35] "timeBodyAccelerometerJerkMagnitude-mean()"         
[36] "timeBodyAccelerometerJerkMagnitude-std()"          
[37] "timeBodyGyroscopeMagnitude-mean()"                 
[38] "timeBodyGyroscopeMagnitude-std()"                  
[39] "timeBodyGyroscopeJerkMagnitude-mean()"             
[40] "timeBodyGyroscopeJerkMagnitude-std()"              
[41] "frequencyBodyAccelerometer-mean()-X"               
[42] "frequencyBodyAccelerometer-mean()-Y"               
[43] "frequencyBodyAccelerometer-mean()-Z"               
[44] "frequencyBodyAccelerometer-std()-X"                
[45] "frequencyBodyAccelerometer-std()-Y"                
[46] "frequencyBodyAccelerometer-std()-Z"                
[47] "frequencyBodyAccelerometer-meanFreq()-X"           
[48] "frequencyBodyAccelerometer-meanFreq()-Y"           
[49] "frequencyBodyAccelerometer-meanFreq()-Z"           
[50] "frequencyBodyAccelerometerJerk-mean()-X"           
[51] "frequencyBodyAccelerometerJerk-mean()-Y"           
[52] "frequencyBodyAccelerometerJerk-mean()-Z"           
[53] "frequencyBodyAccelerometerJerk-std()-X"            
[54] "frequencyBodyAccelerometerJerk-std()-Y"            
[55] "frequencyBodyAccelerometerJerk-std()-Z"            
[56] "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[57] "frequencyBodyAccelerometerJerk-meanFreq()-Y"       
[58] "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[59] "frequencyBodyGyroscope-mean()-X"                   
[60] "frequencyBodyGyroscope-mean()-Y"                   
[61] "frequencyBodyGyroscope-mean()-Z"                   
[62] "frequencyBodyGyroscope-std()-X"                    
[63] "frequencyBodyGyroscope-std()-Y"                    
[64] "frequencyBodyGyroscope-std()-Z"                    
[65] "frequencyBodyGyroscope-meanFreq()-X"               
[66] "frequencyBodyGyroscope-meanFreq()-Y"               
[67] "frequencyBodyGyroscope-meanFreq()-Z"               
[68] "frequencyBodyAccelerometerMagnitude-mean()"        
[69] "frequencyBodyAccelerometerMagnitude-std()"         
[70] "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[71] "frequencyBodyAccelerometerJerkMagnitude-mean()"    
[72] "frequencyBodyAccelerometerJerkMagnitude-std()"     
[73] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()"
[74] "frequencyBodyGyroscopeMagnitude-mean()"            
[75] "frequencyBodyGyroscopeMagnitude-std()"             
[76] "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[77] "frequencyBodyGyroscopeJerkMagnitude-mean()"        
[78] "frequencyBodyGyroscopeJerkMagnitude-std()"         
[79] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"  
all of these columns are of numeric type