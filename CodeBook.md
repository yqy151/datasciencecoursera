##Code Book of the Tidy Dataset
###subject
Thirty subjects performed the acitivties. It is ranged from 1 to 30. 

###activity
Six acitivities were performed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

###feature
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-X', '-Y' and -'Z' are used to denote 3-axial signals in the X, Y and Z directions.
Mean values (labeled as '-mean') and standard deviation (labeled as '-std') estimated from the signales were selected for this dataset. 

There are 66 features in this dataset:
tBodyAcc-mean-X          
tBodyAcc-mean-Y          
tBodyAcc-mean-Z          
tGravityAcc-mean-X       
tGravityAcc-mean-Y       
tGravityAcc-mean-Z       
tBodyAccJerk-mean-X      
tBodyAccJerk-mean-Y      
tBodyAccJerk-mean-Z      
tBodyGyro-mean-X         
tBodyGyro-mean-Y         
tBodyGyro-mean-Z         
tBodyGyroJerk-mean-X     
tBodyGyroJerk-mean-Y     
tBodyGyroJerk-mean-Z     
tBodyAccMag-mean         
tGravityAccMag-mean      
tBodyAccJerkMag-mean     
tBodyGyroMag-mean        
tBodyGyroJerkMag-mean    
fBodyAcc-mean-X          
fBodyAcc-mean-Y          
fBodyAcc-mean-Z          
fBodyAccJerk-mean-X      
fBodyAccJerk-mean-Y      
fBodyAccJerk-mean-Z      
fBodyGyro-mean-X         
fBodyGyro-mean-Y         
fBodyGyro-mean-Z         
fBodyAccMag-mean         
fBodyBodyAccJerkMag-mean 
fBodyBodyGyroMag-mean    
fBodyBodyGyroJerkMag-mean
tBodyAcc-std-X           
tBodyAcc-std-Y           
tBodyAcc-std-Z           
tGravityAcc-std-X        
tGravityAcc-std-Y        
tGravityAcc-std-Z        
tBodyAccJerk-std-X       
tBodyAccJerk-std-Y       
tBodyAccJerk-std-Z       
tBodyGyro-std-X          
tBodyGyro-std-Y          
tBodyGyro-std-Z          
tBodyGyroJerk-std-X      
tBodyGyroJerk-std-Y      
tBodyGyroJerk-std-Z      
tBodyAccMag-std          
tGravityAccMag-std       
tBodyAccJerkMag-std      
tBodyGyroMag-std         
tBodyGyroJerkMag-std     
fBodyAcc-std-X           
fBodyAcc-std-Y           
fBodyAcc-std-Z           
fBodyAccJerk-std-X       
fBodyAccJerk-std-Y       
fBodyAccJerk-std-Z       
fBodyGyro-std-X          
fBodyGyro-std-Y          
fBodyGyro-std-Z          
fBodyAccMag-std          
fBodyBodyAccJerkMag-std  
fBodyBodyGyroMag-std     
fBodyBodyGyroJerkMag-std

###meanvalue
Average values calculated from each feature for each activity and each subject.