# Getting and Cleaning Data - Course Project

This is a Coursera course project of 'Getting and Cleaning Data'. The 'run_analysis.R' file does the following in sequence:

1. Download the dataset zip file from [UCI](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it to the current working folder
2. Load the measurement names, activity labels, test data and train data into data frame.
3. Merge (column wise) the subject id, activity id and measurement data into one dataset for test data and train data respectively.
4. Subsequently merge the test data and train data (row wise) from (3) into one single dataset.
5. Select the subject id, activity id and measurements with mean and standard deviation from the merged dataset in (4). This would require mapping from the measurement names data.
6. Map the activity id column in datasets from (5) to its corresponding descriptive name.
7. Rename the variable names in dataset from (6) to descriptive variable names.
8. Create another copy of tidy dataset based on dataset in (7). Summarise the dataset by computing the average of each variable for each activity and each subject.

The following library is required to support the above data cleaning:

1. dplyr
2. tidyr