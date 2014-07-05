Coursera Data Science - Getting and Cleaning Data
=====================================================
Course Project Sumbission
-----------------------------
### Tidy Data Custom Column Descriptions

1. Activity.Id - numeric value 1:6 identifying activity of each subject
2. Activity.Name - character value desscription related to its identifier
   from **./activity_labels.txt**
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING
3. Subject.Id - numeric value 1:30 identifying person engaged in each activity

#### Tidy Data Main Data Feature Column Descriptions

Please refer to the **./features_info.txt** for descriptions regarding the
following selected columns (filtered features):

 [4] "tBodyAcc-mean()-X"                   
 [5] "tBodyAcc-mean()-Y"                    "tBodyAcc-mean()-Z"                   
 [7] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                 "tBodyAccJerk-mean()-X"               
[11] "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"               
[13] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
[15] "tBodyGyro-mean()-Z"                   "tBodyGyroJerk-mean()-X"              
[17] "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"              
[19] "tBodyAccMag-mean()"                   "tGravityAccMag-mean()"               
[21] "tBodyAccJerkMag-mean()"               "tBodyGyroMag-mean()"                 
[23] "tBodyGyroJerkMag-mean()"              "fBodyAcc-mean()-X"                   
[25] "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[27] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
[29] "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"               
[31] "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"               
[33] "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"           
[35] "fBodyAccJerk-meanFreq()-Z"            "fBodyGyro-mean()-X"                  
[37] "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[39] "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[41] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                  
[43] "fBodyAccMag-meanFreq()"               "fBodyBodyAccJerkMag-mean()"          
[45] "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"             
[47] "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroJerkMag-mean()"         
[49] "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"         
[51] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[53] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
[55] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"                
[57] "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                    
[59] "tBodyAcc-std()-Z"                     "tGravityAcc-std()-X"                 
[61] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[63] "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                
[65] "tBodyAccJerk-std()-Z"                 "tBodyGyro-std()-X"                   
[67] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[69] "tBodyGyroJerk-std()-X"                "tBodyGyroJerk-std()-Y"               
[71] "tBodyGyroJerk-std()-Z"                "tBodyAccMag-std()"                   
[73] "tGravityAccMag-std()"                 "tBodyAccJerkMag-std()"               
[75] "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-std()"              
[77] "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                    
[79] "fBodyAcc-std()-Z"                     "fBodyAccJerk-std()-X"                
[81] "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[83] "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                   
[85] "fBodyGyro-std()-Z"                    "fBodyAccMag-std()"                   
[87] "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroMag-std()"              
[89] "fBodyBodyGyroJerkMag-std()"          