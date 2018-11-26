CodeBook.MD

Variables
featureLabels - Stores the Column names of the 561 measurements taken
VariableData - Stores the actual Measurements x subjects x activity
activity - Stores the single column of activity data
activityLabels - Contains the numeric and string data of the Activity to be matched later
activity2 - Combines the Label with the activity data column
Testdata / Train Data - Putting the data together from all the previous inputs
Testdata2 / Train Data2 - Melts the measurements from being individual columns into one column to be easier to manipulate later on
Testdata3 / Train Data3 - filters the previous table to only keep STD and MEAN entries and ignore all else
MergeData - The Merged data including Test and Train cases
AggData - The aggregated Mean data of the previous table. To only have one response per measurement per subject x activity

Transformations
1. Load the actual measurements data and assign columns from the featureLabels file
2. Match the Activity numerals with the characters
3. Put it all together with the "TEST/TRAIN" information if it may be required later on
4. Melt the measurements from individual columns into 1 column
5. Keep only STD and Mean entries and remove other rows
6. Merge Test and Train Data
7. Aggregate the scores to have only one entry for each measurement

Variable			Actual Variable
tBodyAccmeanX			1 tBodyAcc-mean()-X
tBodyAccmeanY			2 tBodyAcc-mean()-Y
tBodyAccmeanZ			3 tBodyAcc-mean()-Z
tBodyAccstdX			4 tBodyAcc-std()-X
tBodyAccstdY			5 tBodyAcc-std()-Y
tBodyAccstdZ			6 tBodyAcc-std()-Z
tGravityAccmeanX		41 tGravityAcc-mean()-X
tGravityAccmeanY		42 tGravityAcc-mean()-Y
tGravityAccmeanZ		43 tGravityAcc-mean()-Z
tGravityAccstdX			44 tGravityAcc-std()-X
tGravityAccstdY			45 tGravityAcc-std()-Y
tGravityAccstdZ			46 tGravityAcc-std()-Z
tBodyAccJerkmeanX		81 tBodyAccJerk-mean()-X
tBodyAccJerkmeanY		82 tBodyAccJerk-mean()-Y
tBodyAccJerkmeanZ		83 tBodyAccJerk-mean()-Z
tBodyAccJerkstdX		84 tBodyAccJerk-std()-X
tBodyAccJerkstdY		85 tBodyAccJerk-std()-Y
tBodyAccJerkstdZ		86 tBodyAccJerk-std()-Z
tBodyGyromeanX			121 tBodyGyro-mean()-X
tBodyGyromeanY			122 tBodyGyro-mean()-Y
tBodyGyromeanZ			123 tBodyGyro-mean()-Z
tBodyGyrostdX			124 tBodyGyro-std()-X
tBodyGyrostdY			125 tBodyGyro-std()-Y
tBodyGyrostdZ			126 tBodyGyro-std()-Z
tBodyGyroJerkmeanX		161 tBodyGyroJerk-mean()-X
tBodyGyroJerkmeanY		162 tBodyGyroJerk-mean()-Y
tBodyGyroJerkmeanZ		163 tBodyGyroJerk-mean()-Z
tBodyGyroJerkstdX		164 tBodyGyroJerk-std()-X
tBodyGyroJerkstdY		165 tBodyGyroJerk-std()-Y
tBodyGyroJerkstdZ		166 tBodyGyroJerk-std()-Z
tBodyAccMagmean			201 tBodyAccMag-mean()
tBodyAccMagstd			202 tBodyAccMag-std()
tGravityAccMagmean		214 tGravityAccMag-mean()
tGravityAccMagstd		215 tGravityAccMag-std()
tBodyAccJerkMagmean		227 tBodyAccJerkMag-mean()
tBodyAccJerkMagstd		228 tBodyAccJerkMag-std()
tBodyGyroMagmean		240 tBodyGyroMag-mean()
tBodyGyroMagstd			241 tBodyGyroMag-std()
tBodyGyroJerkMagmean		253 tBodyGyroJerkMag-mean()
tBodyGyroJerkMagstd		254 tBodyGyroJerkMag-std()
fBodyAccmeanX			266 fBodyAcc-mean()-X
fBodyAccmeanY			267 fBodyAcc-mean()-Y
fBodyAccmeanZ			268 fBodyAcc-mean()-Z
fBodyAccstdX			269 fBodyAcc-std()-X
fBodyAccstdY			270 fBodyAcc-std()-Y
fBodyAccstdZ			271 fBodyAcc-std()-Z
fBodyAccmeanFreqX		294 fBodyAcc-meanFreq()-X
fBodyAccmeanFreqY		295 fBodyAcc-meanFreq()-Y
fBodyAccmeanFreqZ		296 fBodyAcc-meanFreq()-Z
fBodyAccJerkmeanX		345 fBodyAccJerk-mean()-X
fBodyAccJerkmeanY		346 fBodyAccJerk-mean()-Y
fBodyAccJerkmeanZ		347 fBodyAccJerk-mean()-Z
fBodyAccJerkstdX		348 fBodyAccJerk-std()-X
fBodyAccJerkstdY		349 fBodyAccJerk-std()-Y
fBodyAccJerkstdZ		350 fBodyAccJerk-std()-Z
fBodyAccJerkmeanFreqX		373 fBodyAccJerk-meanFreq()-X
fBodyAccJerkmeanFreqY		374 fBodyAccJerk-meanFreq()-Y
fBodyAccJerkmeanFreqZ		375 fBodyAccJerk-meanFreq()-Z
fBodyGyromeanX			424 fBodyGyro-mean()-X
fBodyGyromeanY			425 fBodyGyro-mean()-Y
fBodyGyromeanZ			426 fBodyGyro-mean()-Z
fBodyGyrostdX			427 fBodyGyro-std()-X
fBodyGyrostdY			428 fBodyGyro-std()-Y
fBodyGyrostdZ			429 fBodyGyro-std()-Z
fBodyGyromeanFreqX		452 fBodyGyro-meanFreq()-X
fBodyGyromeanFreqY		453 fBodyGyro-meanFreq()-Y
fBodyGyromeanFreqZ		454 fBodyGyro-meanFreq()-Z
fBodyAccMagmean			503 fBodyAccMag-mean()
fBodyAccMagstd			504 fBodyAccMag-std()
fBodyAccMagmeanFreq		513 fBodyAccMag-meanFreq()
fBodyBodyAccJerkMagmean		516 fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMagstd		517 fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMagmeanFreq	526 fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMagmean		529 fBodyBodyGyroMag-mean()
fBodyBodyGyroMagstd		530 fBodyBodyGyroMag-std()
fBodyBodyGyroMagmeanFreq	539 fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMagmean	542 fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMagstd		543 fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMagmeanFreq	552 fBodyBodyGyroJerkMag-meanFreq()
angletBodyAccMeangravity	555 angle(tBodyAccMean
angletBodyAccJerkMeangravityMean556 angle(tBodyAccJerkMean)
angletBodyGyroMeangravityMean	557 angle(tBodyGyroMean
angletBodyGyroJerkMeangravityMea558 angle(tBodyGyroJerkMean
angleXgravityMean		559 angle(X,gravityMean)
angleYgravityMean		560 angle(Y,gravityMean)
angleZgravityMean		561 angle(Z,gravityMean)
