Coursera Data Science - Getting and Cleaning Data
=====================================================
Course Project Sumbission
-----------------------------

The **run_analysis.R** script itself is well documented with an abundance
of developer comments.  However, the following is a summary of those comments
where the overall script flow is derived from that of the chronologically ordered
lectures including the previous *R Programming* course:

1. Derive main data column (feature) names used during data table creation;
   read **./features.txt**
2. Create "train" and "test" data tables w/ previous step derived column names
   using DRY priniciple inspired function to create a specified data table
   * Create specified subject table specified column name (Subject.Id);
     read **./[dataset name]/subject_[dataset name].txt**
   * Create the activity table with specified column name (Activity.Id);
     read **./[dataset name]/y_[dataset name].txt**
   * Create the main data table with specified column names (feature names);
     read **./[dataset name]/X_[dataset name].txt**
   * Create single table by combining (column binding)
     the subject, activity, and main data tables
3. Create master data table by combining (row binding) the "train" and "test" tables
4. Filter master data table by retaining only *Mean* and *Standard Deviation*
   (of which was **interpreted as including any derived variable that employs** *Mean*
   **variables** including *meanFreq* and *angle(xxxMean, xxxMean)*)
   related data w/ appropriate labels: Subject.Id, Activity.Id, [mean & std feature names]
5. Create *activity name* table w/ appropriate labels: Activity.Id, Activity.Name
6. Merge *activity name* table with filtered master data table by Activity.Id
   to create final master data table w/ appropriate labels:
   Activity.Id, Activity.Name, Subject.Id, [mean & std features names]
7. Melt the final master data table with
   "descriptive activity names to name the activities in the data set"
8. Cast the final master data melt with
   "the average of each variable for each activity and each subject."
9. Write the final master data cast to an output file for upload
