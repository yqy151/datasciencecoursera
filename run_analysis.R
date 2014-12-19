setwd("./R/UCI HAR Dataset")
train_x<-read.table("./train/X_train.txt")
train_y<-read.table("./train/y_train.txt")
train_subject<-read.table("./train/subject_train.txt")
test_x<-read.table("./test/X_test.txt")
test_y<-read.table("./test/y_test.txt")
test_subject<-read.table("./test/subject_test.txt")   ##load the files into R
dim(train_x)
dim(train_y)   ##check the dimension of the data frames. 
names(train_y)<-"activity"    ##change the column names into descriptive names. 
dim(train_subject)
names(train_subject)<-"subject"
dim(test_x)
dim(test_y)
names(test_y)<-"activity"
dim(test_subject)
names(test_subject)<-"subject"
train<-cbind(train_x,train_y,train_subject)    ##bind the data frames by columns. 
test<-cbind(test_x,test_y,test_subject)
data<-rbind(test,train)   ##bind the data frames by rows. 
dim(data)
features<-read.table("features.txt")    ##load the features file into R. 
colmean<-grep("mean\\(\\)",features$V2)  ##find the index of the variables with mean().
colstd<-grep("std\\(\\)",features$V2)     ##find the index of the variables with std().
data2<-data[,c(colmean,colstd,562,563)]    ##generate a new data frame with the variables on mean and std. 
data2$activity<-factor(data2$activity,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
dim(data2)   ##change the activity labels into descriptive activity names. 
class(features$V2[c(colmean,colstd)])
colnames(data2)[1:66]<-as.character(features$V2[c(colmean,colstd)])  ##change the column names into descriptive names. 
names(data2)<-gsub("\\(\\)","",names(data2))##remove parenthesis in the column names. 
names(data2)<-gsub("-","_",names(data2))
library(dplyr)
library(reshape2)
data2Melt<-melt(data2,id=c("subject","activity"),measure.vars=names(data2)[1:66])  ##reshape the data frame from wide to long data frame. 
data2group<-group_by(data2Melt,subject,activity,variable)  
head(data2group)
data3<-summarise(data2group,mean(value))    ##generate the data frame with average of each variable for each subject and each activity. 
colnames(data3)[3:4]<-c("feature","meanvalue")
write.table(data3,"tidydata.txt",row.name=FALSE)