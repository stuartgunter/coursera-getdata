run <- function() {
  # Load each data set.
  data.training <- loadData("./train/subject_train.txt", "./train/X_train.txt", "./train/y_train.txt")
  data.test <- loadData("./test/subject_test.txt", "./test/X_test.txt", "./test/y_test.txt")

  # Merge the training and the test sets to create one data set.
  data <- mergeData(data.training, data.test)
  names(data) <- getHeadings()

  # Extract only the measurements on the mean and standard deviation for each measurement. 
  data.filtered <- filter(data)
  
  # Use descriptive activity names to name the activities in the data set.
  # Appropriately label the data set with descriptive activity names. 
  data.labels <- loadLabels()
  data.named <- nameActivities(data.filtered, data.labels)
  
  data.named
  
  # Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  #averagesByActivityAndSubject(data.named)
}

averagesByActivityAndSubject <- function(d) {
  NA
}

nameActivities <- function(d, l) {
  transform(d, label = levels(l)[label])
}

filter <- function(d) {
  col.indexes <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,529:530)
  d[,col.indexes]
}

getHeadings <- function() {
  # loads headings from "features.txt" and assigns column headings
  headings <- read.table("./features.txt")
  
  # strip unacceptable characters and convert to lowercase
  headings.stripped <- sapply(X = headings$V2, FUN=gsub, pattern = "[-,\\(\\)]", replacement = "")
  headings.lowered <- sapply(X = headings.stripped, FUN=tolower)
  
  # return headings with 'subject' and 'label' headings prepended
  c("subject", "label", headings.lowered)
}

mergeData <- function(train, test) {
  rbind(train, test)
}

loadLabels <- function() {
  labels <- read.table("./activity_labels.txt")
  factor(labels$V2, levels=labels$V2)
}

loadData <- function(file.subject, file.data, file.activity) {
  subject <- read.table(file.subject)
  data <- read.table(file.data)
  labels <- read.table(file.activity)
  cbind(subject, labels, data)
}