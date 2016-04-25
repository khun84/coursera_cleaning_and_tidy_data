library(dplyr)
library(tidyr)

#download url
dl_url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
#dest file name
filename <- 'dataset.zip'
#download the zip file if its not exists in the current working folder
if (!file.exists(filename)){
  download.file(dl_url, filename)
}
#unzip the zip file if its content does not exists in the current working folder
if (!file.exists('UCI HAR Dataset')){
  unzip(filename)
}

#load the metadata
activity_label <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE, stringsAsFactors = FALSE)
features <- read.table('./UCI HAR Dataset/features.txt', header = FALSE, stringsAsFactors = FALSE)

#load all the test data
test <- read.table('./UCI HAR Dataset/test/X_test.txt', header = FALSE)
test_activity <- read.table('./UCI HAR Dataset/test/y_test.txt', header = FALSE)
test_subject <- read.table('./UCI HAR Dataset/test/subject_test.txt', header = FALSE)

#load all the test data
train <- read.table('./UCI HAR Dataset/train/X_train.txt', header = FALSE)
train_activity <- read.table('./UCI HAR Dataset/train/y_train.txt', header = FALSE)
train_subject <- read.table('./UCI HAR Dataset/train/subject_train.txt', header = FALSE)

#####STEP 1: Merge all into 1 dataset
#column wise merge on the test data
data_test <- cbind(test_subject, test_activity, test)
#column wise merge on the train data
data_train <- cbind(train_subject, train_activity, train)
#row wise merge on the data_test and data_train
data_all <- rbind(data_test, data_train)

#####STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.
#create column name for data_all
fea_idx <- grep('.*mean.*|.*std.*', features[, 2], ignore.case = TRUE)
#fea_idx+2 is to offset fea_idx value by 2 to make space for 'Subject' and 'Activity' column
wanted_col_idx <- append(c(1,2), fea_idx+2)
data_all <- data_all[, wanted_col_idx]

#####STEP 3: Uses descriptive activity names to name the activities in the data set
map_activity <- sapply(data_all[,2], function(x) activity_label[x, 2])
data_all[,2] <- map_activity

#####STEP 4: Appropriately labels the data set with descriptive variable names.
col_name <- append(c('Subject', 'Activity'), features[fea_idx, 2])
#Title case the mean and std
col_name <- gsub('-?mean', 'Mean', col_name, ignore.case = TRUE)
col_name <- gsub('-?std', 'STD', col_name, ignore.case = TRUE)
#make the acrynoym more meaningful
col_name <- gsub('^t', 'Time', col_name, ignore.case = TRUE)
col_name <- gsub('^f', 'Frequency', col_name, ignore.case = TRUE)
col_name <- gsub('BodyBody', 'Body', col_name, ignore.case = TRUE)
col_name <- gsub('Gyro', 'Gyrometer', col_name, ignore.case = TRUE)
col_name <- gsub('Acc', 'Acceleration', col_name, ignore.case = TRUE)
col_name <- gsub('-?freq[uency]*', 'Frequency', col_name, ignore.case = TRUE)
col_name <- gsub('mag', 'Magnitude', col_name, ignore.case = TRUE)
col_name <- gsub('angle', 'Angle', col_name, ignore.case = TRUE)
col_name <- gsub('gravity', 'Gravity', col_name, ignore.case = TRUE)
col_name <- gsub('\\(\\)', '', col_name, ignore.case = TRUE)
#rename column names in data_all
colnames(data_all) <- col_name

####STEP 5:From the data set in step 4, creates a second, 
####independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- data_all
tidy_data$Subject <- as.factor(tidy_data$Subject)
by_act_sub <- group_by(tidy_data, Activity, Subject)
mean_by_act_sub <- summarize_each(by_act_sub, funs(mean))
write.table(mean_by_act_sub, 'Tidy.txt', row.names = FALSE, quote = FALSE)





