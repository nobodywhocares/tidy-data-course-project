# One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
#     
#     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# Here are the data for the project:
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 
# You should create one R script called run_analysis.R that does the following. 
# 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# 
# Good luck!

## Ensure required library is loaded
library(reshape2)

## Declare variables for column name identifiers referenced throughout script
subjectIdColName = "Subject.Id"
activityIdColName = "Activity.Id"
activityDescColName = "Activity.Name"

## DRY priniciple inspired function to create a specified dataset data table:
## for example, "train" or "test"
createDataTable <- function(datasetName, dataColNames, subjectColName = subjectIdColName, activityColName = activityIdColName, datadir = ".")
{
    ## determine base dir from which files will be read as a product of
    ## the specified datadir and datasetName (i.e. either "test" or "train"
    basedir = paste(datadir, datasetName, "", sep="/")
    
    ## Create subjects table with specified column name
    subjectTable <- read.table(paste(basedir, "subject_", datasetName, ".txt", sep=""))
    colnames(subjectTable) <- subjectColName
    
    ## Create the activiity table with the specified column name
    activityTable <- read.table(paste(basedir, "y_", datasetName, ".txt", sep=""))
    colnames(activityTable) <- activityColName
    
    ## Create the main data table with the specified column names (i.e. feature names)
    dataTable <- read.table(paste(basedir, "X_", datasetName, ".txt", sep=""))
    colnames(dataTable) <- dataColNames
    
    ## Column bind all three related tables in a single table:
    ## subjects, activity, and main feature data
    dataset <- cbind(subjectTable, activityTable, dataTable)
    
}

## Determine main feature data column names to be provided to data set creation
dataColNames <- read.table("features.txt")[, 2]
## Create properly labeled "train" and "test" data tables
trainDataTable <- createDataTable("train", dataColNames)
testDataTable <- createDataTable("test", dataColNames)

## Row bind "train" and "test" data tables into single master data table
masterDataTable <- rbind(trainDataTable,testDataTable)

## Filter master table retaining only Mean and Standard Deviation related data
meanColNames <- names(masterDataTable)[grep("mean",names(masterDataTable),ignore.case=TRUE)]
stdColNames <- names(masterDataTable)[grep("std",names(masterDataTable),ignore.case=TRUE)]
filteredMasterDataTable <-masterDataTable[,c(subjectIdColName,activityIdColName,meanColNames,stdColNames)]

## Create appropriately labeled acctivity name table
activityNameTable <- read.table("./activity_labels.txt",col.names=c(activityIdColName,activityDescColName))
## Merge activity name table with filtered master data table to create
## appropriately labeled final master data table
finalMasterDataTable <- merge(activityNameTable,filteredMasterDataTable,by.x=activityIdColName,by.y=activityIdColName,all=TRUE)

## Melt the final master data table with "descriptive activity names to name the activities in the data set"
masterDataMelt <- melt(finalMasterDataTable,id=c(activityIdColName,activityDescColName,subjectIdColName))

## Cast the master data melt with "the average of each variable for each activity and each subject."
masterDataCast <- dcast(masterDataMelt, Activity.Id + Activity.Name + Subject.Id ~ variable,mean)

## Write the master data cast as the final tidy data set
write.table(masterDataCast,"./tidy_data_final.txt", row.names=F)

