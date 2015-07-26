# Getting-and-Cleaning-Data-Project
1.  plyr library is loaded in order to get summary information at the end.  
2.  Each required file is loaded in
3.  Column headers for each file are updated accordingly. 
4.  The 'Test' files are combined, then the 'train' files are combined, then the 'Test' and 'Train' tables are combined into the 'Total' table.
5.  The non "mean" and "std" columns are removed
6.  ddply is then used to find the mean for each column by Subject and Activity
7.  The "part5.txt" file is then written.  

Activity Codes are shown below:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Variables
"tBodyAcc.mean...X"
"tBodyAcc.mean...Y"
"tBodyAcc.mean...Z"
"tBodyAcc.std...X"
"tBodyAcc.std...Y"
"tBodyAcc.std...Z"
"tGravityAcc.mean...X"
"tGravityAcc.mean...Y"
"tGravityAcc.mean...Z"
"tGravityAcc.std...X"
"tGravityAcc.std...Y"
"tGravityAcc.std...Z"
"tBodyAccJerk.mean...X"
"tBodyAccJerk.mean...Y"
"tBodyAccJerk.mean...Z"
"tBodyAccJerk.std...X"
"tBodyAccJerk.std...Y"
"tBodyAccJerk.std...Z"
"tBodyGyro.mean...X"
"tBodyGyro.mean...Y"
"tBodyGyro.mean...Z"
"tBodyGyro.std...X"
"tBodyGyro.std...Y"
"tBodyGyro.std...Z"
"tBodyGyroJerk.mean...X"
"tBodyGyroJerk.mean...Y"
"tBodyGyroJerk.mean...Z"
"tBodyGyroJerk.std...X"
"tBodyGyroJerk.std...Y"
"tBodyGyroJerk.std...Z"
"tBodyAccMag.mean.."
"tBodyAccMag.std.."
"tGravityAccMag.mean.."
"tGravityAccMag.std.."
"tBodyAccJerkMag.mean.."
"tBodyAccJerkMag.std.."
"tBodyGyroMag.mean.."
"tBodyGyroMag.std.."
"tBodyGyroJerkMag.mean.."
"tBodyGyroJerkMag.std.."
"fBodyAcc.mean...X"
"fBodyAcc.mean...Y"
"fBodyAcc.mean...Z"
"fBodyAcc.std...X"
"fBodyAcc.std...Y"
"fBodyAcc.std...Z"
"fBodyAcc.meanFreq...X"
"fBodyAcc.meanFreq...Y"
"fBodyAcc.meanFreq...Z"
"fBodyAccJerk.mean...X"
"fBodyAccJerk.mean...Y"
"fBodyAccJerk.mean...Z"
"fBodyAccJerk.std...X"
"fBodyAccJerk.std...Y"
"fBodyAccJerk.std...Z"
"fBodyAccJerk.meanFreq...X"
"fBodyAccJerk.meanFreq...Y"
"fBodyAccJerk.meanFreq...Z"
"fBodyGyro.mean...X"
"fBodyGyro.mean...Y"
"fBodyGyro.mean...Z"
"fBodyGyro.std...X"
"fBodyGyro.std...Y"
"fBodyGyro.std...Z"
"fBodyGyro.meanFreq...X"
"fBodyGyro.meanFreq...Y"
"fBodyGyro.meanFreq...Z"
"fBodyAccMag.mean.."
"fBodyAccMag.std.."
"fBodyBodyAccJerkMag.mean.."
"fBodyBodyAccJerkMag.std.."
"fBodyBodyGyroMag.mean.."
"fBodyBodyGyroMag.std.."
"fBodyBodyGyroJerkMag.mean.."
"fBodyBodyGyroJerkMag.std.."
"angle.tBodyAccMean.gravity."
"angle.tBodyAccJerkMean..gravityMean."
"angle.tBodyGyroMean.gravityMean."
"angle.tBodyGyroJerkMean.gravityMean."
"angle.X.gravityMean."
"angle.Y.gravityMean."
"angle.Z.gravityMean."
