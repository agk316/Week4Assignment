ReadMe.MD

Getting and Cleaning Data Course Projectless 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files in the folder are as below:

Codebook : Details of the Codes used in the programming and data
run_analysis.R : Actual Code

Transformations Done on the Data
1. Load the actual measurements data and assign columns from the featureLabels file
2. Match the Activity numerals with the characters
3. Put it all together with the "TEST/TRAIN" information if it may be required later on
4. Melt the measurements from individual columns into 1 column
5. Keep only STD and Mean entries and remove other rows
6. Merge Test and Train Data
7. Aggregate the scores to have only one entry for each measurement

