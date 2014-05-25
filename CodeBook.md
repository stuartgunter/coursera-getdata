# Code Book

This code book describes each variable in the dataset and its values.

## Identification

* `subject` - the subject that carried out the experiment
* `activity` - the activity performed by the subject (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`)

## Measurements

The remaining columns contain the average of that variable for the given `subject` and `activity`. These values are taken from their equivalent columns in the original dataset. The table below shows the mapping from the variables in the original dataset to the variables in the tidy dataset produced by this script.

| Original Variable | Tidy Dataset Variable |
|-------------------|-----------------------|
| `tBodyAcc-mean()-X` | `tbodyacc.mean.x` |
| `tBodyAcc-mean()-Y` | `tbodyacc.mean.y` |
| `tBodyAcc-mean()-Z` | `tbodyacc.mean.z` |
| `tBodyAcc-std()-X` | `tbodyacc.std.x` |
| `tBodyAcc-std()-Y` | `tbodyacc.std.y` |
| `tBodyAcc-std()-Z` | `tbodyacc.std.z` |
| `tGravityAcc-mean()-X` | `tgravityacc.mean.x` |
| `tGravityAcc-mean()-Y` | `tgravityacc.mean.y` |
| `tGravityAcc-mean()-Z` | `tgravityacc.mean.z` |
| `tGravityAcc-std()-X` | `tgravityacc.std.x` |
| `tGravityAcc-std()-Y` | `tgravityacc.std.y` |
| `tGravityAcc-std()-Z` | `tgravityacc.std.z` |
| `tBodyAccJerk-mean()-X` | `tbodyaccjerk.mean.x` |
| `tBodyAccJerk-mean()-Y` | `tbodyaccjerk.mean.y` |
| `tBodyAccJerk-mean()-Z` | `tbodyaccjerk.mean.z` |
| `tBodyAccJerk-std()-X` | `tbodyaccjerk.std.x` |
| `tBodyAccJerk-std()-Y` | `tbodyaccjerk.std.y` |
| `tBodyAccJerk-std()-Z` | `tbodyaccjerk.std.z` |
| `tBodyGyro-mean()-X` | `tbodygyro.mean.x` |
| `tBodyGyro-mean()-Y` | `tbodygyro.mean.y` |
| `tBodyGyro-mean()-Z` | `tbodygyro.mean.z` |
| `tBodyGyro-std()-X` | `tbodygyro.std.x` |
| `tBodyGyro-std()-Y` | `tbodygyro.std.y` |
| `tBodyGyro-std()-Z` | `tbodygyro.std.z` |
| `tBodyGyroJerk-mean()-X` | `tbodygyrojerk.mean.x` |
| `tBodyGyroJerk-mean()-Y` | `tbodygyrojerk.mean.y` |
| `tBodyGyroJerk-mean()-Z` | `tbodygyrojerk.mean.z` |
| `tBodyGyroJerk-std()-X` | `tbodygyrojerk.std.x` |
| `tBodyGyroJerk-std()-Y` | `tbodygyrojerk.std.y` |
| `tBodyGyroJerk-std()-Z` | `tbodygyrojerk.std.z` |
| `tBodyAccMag-mean()` | `tbodyaccmag.mean` |
| `tBodyAccMag-std()` | `tbodyaccmag.std` |
| `tGravityAccMag-mean()` | `tgravityaccmag.mean` |
| `tGravityAccMag-std()` | `tgravityaccmag.std` |
| `tBodyAccJerkMag-mean()` | `tbodyaccjerkmag.mean` |
| `tBodyAccJerkMag-std()` | `tbodyaccjerkmag.std` |
| `tBodyGyroMag-mean()` | `tbodygyromag.mean` |
| `tBodyGyroMag-std()` | `tbodygyromag.std` |
| `tBodyGyroJerkMag-mean()` | `tbodygyrojerkmag.mean` |
| `tBodyGyroJerkMag-std()` | `tbodygyrojerkmag.std` |
| `fBodyAcc-mean()-X` | `fbodyacc.mean.x` |
| `fBodyAcc-mean()-Y` | `fbodyacc.mean.y` |
| `fBodyAcc-mean()-Z` | `fbodyacc.mean.z` |
| `fBodyAcc-std()-X` | `fbodyacc.std.x` |
| `fBodyAcc-std()-Y` | `fbodyacc.std.y` |
| `fBodyAcc-std()-Z` | `fbodyacc.std.z` |
| `fBodyAccJerk-mean()-X` | `fbodyaccjerk.mean.x` |
| `fBodyAccJerk-mean()-Y` | `fbodyaccjerk.mean.y` |
| `fBodyAccJerk-mean()-Z` | `fbodyaccjerk.mean.z` |
| `fBodyAccJerk-std()-X` | `fbodyaccjerk.std.x` |
| `fBodyAccJerk-std()-Y` | `fbodyaccjerk.std.y` |
| `fBodyAccJerk-std()-Z` | `fbodyaccjerk.std.z` |
| `fBodyGyro-mean()-X` | `fbodygyro.mean.x` |
| `fBodyGyro-mean()-Y` | `fbodygyro.mean.y` |
| `fBodyGyro-mean()-Z` | `fbodygyro.mean.z` |
| `fBodyGyro-std()-X` | `fbodygyro.std.x` |
| `fBodyGyro-std()-Y` | `fbodygyro.std.y` |
| `fBodyGyro-std()-Z` | `fbodygyro.std.z` |
| `fBodyAccMag-mean()` | `fbodyaccmag.mean` |
| `fBodyAccMag-std()` | `fbodyaccmag.std` |
| `fBodyBodyAccJerkMag-mean()` | `fbodybodyaccjerkmag.mean` |
| `fBodyBodyAccJerkMag-std()` | `fbodybodyaccjerkmag.std` |
| `fBodyBodyGyroMag-mean()` | `fbodybodygyromag.mean` |
| `fBodyBodyGyroMag-std()` | `fbodybodygyromag.std` |
| `fBodyBodyGyroJerkMag-mean()` | `fbodybodygyrojerkmag.mean` |
| `fBodyBodyGyroJerkMag-std()` | `fbodybodygyrojerkmag.std` |
