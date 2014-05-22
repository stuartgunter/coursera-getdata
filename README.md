# Analysis

## Functions

`run` is the entry point into the analysis and calls all other functions as required.
`averagesByActivityAndSubject` calculates the averages of the databy activity and subject
`nameActivities` gives names to the activities
`filter` selects the features that we're interested in (means and std deviations)
`applyHeadings` gives meaningful column names to our dataset
`mergeData` combines the train and test datasets into a single dataset
`loadLabels` reads the activity labels and creates a `factor` from them
`loadData` load the data for a given dataset (e.g. test / train) and combines the various files (i.e. subject, data and labels) together into a single result


