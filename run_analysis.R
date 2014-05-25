library(plyr)

run <- function() {
  # Merge the training and the test sets to create one data set.
  data <- rbind(trainingData(), testData())
  names(data) <- getHeadings()

  # Extract only the measurements on the mean and standard deviation for each measurement. 
  data.filtered <- filter(data)
  
  # Use descriptive activity names to name the activities in the data set.
  # Appropriately label the data set with descriptive activity names. 
  data.named <- nameActivities(data.filtered)
  
  # Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
  averagesByActivityAndSubject(data.named)
}

# returns the means of each measurement by activity and subject
averagesByActivityAndSubject <- function(d) {
  ddply(d, .(subject, activity), numcolwise(mean))
}

# returns a subset of `d` containing only mean or standard deviation measurements
filter <- function(d) {
  subset(d, select = c(subject,
                       activity,
                       tbodyaccmeanx:tbodyaccstdz,
                       tgravityaccmeanx:tgravityaccstdz,
                       tbodyaccjerkmeanx:tbodyaccjerkstdz,
                       tbodygyromeanx:tbodygyrostdz,
                       tbodygyrojerkmeanx:tbodygyrojerkstdz,
                       tbodyaccmagmean:tbodyaccmagstd,
                       tgravityaccmagmean:tgravityaccmagstd,
                       tbodyaccjerkmagmean:tbodyaccjerkmagstd,
                       tbodygyromagmean:tbodygyromagstd,
                       tbodygyrojerkmagmean:tbodygyrojerkmagstd,
                       fbodyaccmeanx:fbodyaccstdz,
                       fbodyaccjerkmeanx:fbodyaccjerkstdz,
                       fbodygyromeanx:fbodygyrostdz,
                       fbodyaccmagmean:fbodyaccmagstd,
                       fbodybodyaccjerkmagmean:fbodybodyaccjerkmagstd,
                       fbodybodygyromagmean:fbodybodygyromagstd,
                       fbodybodygyrojerkmagmean:fbodybodygyrojerkmagstd))
}

# loads column headings and formats according to tidy data guidelines
getHeadings <- function() {
  # loads headings from "features.txt" and assigns column headings
  headings <- read.table("./features.txt")
  
  # strip unacceptable characters and convert to lowercase
  headings.stripped <- sapply(X = headings$V2, FUN=gsub, pattern = "[-,\\(\\)]", replacement = "")
  headings.lowered <- sapply(X = headings.stripped, FUN=tolower)
  
  # return headings with 'subject' and 'label' headings prepended
  c("subject", "activity", headings.lowered)
}


# converts the integer labels to factors
nameActivities <- function(d) {
  l <- loadLabels()
  transform(d, activity = levels(l)[activity])
}

# loads activity labels
loadLabels <- function() {
  labels <- read.table("./activity_labels.txt")
  factor(labels$V2, levels=labels$V2)
}


# loads the test dataset
testData <- function() {
  loadData("./test/subject_test.txt", "./test/X_test.txt", "./test/y_test.txt")
}

# loads the training dataset
trainingData <- function() {
  loadData("./train/subject_train.txt", "./train/X_train.txt", "./train/y_train.txt")
}

# loads a generic dataset (either training or test data)
loadData <- function(file.subject, file.data, file.activity) {
  subject <- read.table(file.subject)
  data <- read.table(file.data)
  labels <- read.table(file.activity)
  cbind(subject, labels, data)
}