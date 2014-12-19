##A tidy data set derived from "Human Activity Recognition Using Smartphones Dataset version 1.0"

This tidy data set lists the average of the feature variables on mean and standard deviation for each subject and each activity. 

The original data set with its background information can be downloaded from here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following files from the original data were loaded as data frames into R for generating the tidy data set: 

*'train/X_train.txt': Training set.
*'train/y_train.txt': Training labels of the activities performed (The activity names with labels can be found in 'activity_labels.txt').
*'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
*'test/X_test.txt': Test set.
*'test/y_test.txt': Test labels of the activities performed (The activity names with labels can be found in 'activity_labels.txt').
*'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
*'features.txt': List of the names of all features.

dim() function was used to check the dimension of each data frame:
*'train_x' has 7352 rows and 561 columns.
*'train_y' has 7352 forws and 1 column.
*'train_subject' has 7352 rows and 1 column.
*'test_x' has 2947 rows and 561 columns.
*'test_y' has 2947 rows and 1 column.
*'test_subject' has 2947 rows and 1 column.

cbind() function was used to bind the 'train_x', 'train_y' and 'train_subject' into dataframe 'train', and to bind 'test_x', 'test_y' and 'test_subject' into data frame 'test'. 

rbind() function was used to bind data frame 'train' and 'test' into data frame 'data'. 

The index of the feature vairables on mean and standard deviation were extracted from 'features' using grep() function. 

'data2' was subset from 'data' with the feature variables on mean and standard deviation. 

The activity labels were changed from numbers (1-6) into descriptive activity names "WALKING", "WALKING_UPSATRS", "WALKING_DOWNSTAIRS","SITTING","STANDING" and "LAYING" using facotr() function. 

Parenthesis was removed from the names of 'data2' using gsub() function to make it more readable.

melt() function was used to transform 'data2' from a wide data frame into a long data frame 'data2Melt'. 

group_by() and summarise() function were used to generate the tidy data set 'data3' with the average of each variable for each subject and each activity. 

colnames() function was used to change to names of data3 into more descriptive names. 