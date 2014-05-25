# Analysis

## Functions

The following functions exist in the `run_analysis.R` script:

* `run()` is the entry point into the analysis and calls all other functions as required.
* `trainingData()` and `testData()` return the training and test datasets respectively (the result of each function includes the subject, measurements and labels for the dataset).
* `loadData(file.subject, file.data, file.activity)` is used by `trainingData()` and `testData()` to perform the task of loading the given files and combining them into a single dataset.
* `getHeadings()` loads the column headings file and transforms the values into acceptable names according the the tidy dataset guidelines (strips illegal characters and lowercases the name). The result is a character vector containing tidy variable names for all columns.
* `filter(d)` returns a subset of the input dataset containing only the variables that we're interested in (measurements on mean and standard deviation for each measurement)
* `nameActivities(d)` converts the integer activity variable into a factor with meaningful names
* `averagesByActivityAndSubject(d)` calculates the averages of the dataset by activity and subject

## Column Selection

Columns that related the the means and standard deviations of the measurements were selected from the list of available features. The means and standard deviations of some measurements were calculated on a three-dimensional axis (X, Y and Z), while others were single values each for mean and standard deviation. The following list includes the full set of variables collected in the resulting tidy dataset.

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

## Variable Naming

Variables have been named according the [Google's R Style Guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml), using all lowercase names separated by dots and having had all illegal characters removed. Examples of how some variables might be renamed are shown below:

* `tGravityAcc-mean()-X` becomes `tgravityacc.mean.x`
* `fBodyBodyAccJerkMag-mean()` becomes `fbodybodyaccjerkmag.mean`
