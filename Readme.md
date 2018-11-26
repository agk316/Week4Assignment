ReadMe.MD

Have listed out the transformations and the variables used.
The Codebook is also identical to this given the simplicity of this exercise.

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
