run <- function() {
  # Load each data set.
  data.training <- loadData("train/X_train.txt")
  data.test <- loadData("test/X_test.txt")
  data.labels <- loadData("activity_labels.txt")

  # Merge the training and the test sets to create one data set.
  data <- mergeData(data.training, data.test)

  # Extract only the measurements on the mean and standard deviation for each measurement. 
  data.filtered <- filter(data)
  
  # Use descriptive activity names to name the activities in the data set.
  # Appropriately labels the data set with descriptive activity names. 
  data.named <- nameActivities(data.filtered)
  
  # Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  averagesByActivityAndSubject(data.named)
}

averagesByActivityAndSubject <- function(d) {
  NA
}

nameActivities <- function(d) {
  NA
}

filter <- function(d) {
  NA
}

mergeData <- function(d1, d2) {
  NA
}

loadData <- function(f) {
  NA
}