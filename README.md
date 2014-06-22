Getting-and-Cleaning-Data-Course-Project
========================================


The objective was to create a R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The analysis is being performed in the following steps in the R Script. Please note that user input is only required at step 2 to run the file.

Step 1 - Install and load the reshape2 package
          
This step loads the reshape2 package if it has not already been loaded.

Step 2 - Enter the path to the dataset folder in the DATA_PATH variable - IMPORTANT!!

The user must enter the name of the directory which contains the data. A default option has already been                  provided for the provided dataset

Step 3 - Define the relevant names and positions to be extracted for features and activities

This step feines the positions and names for teh features and activities
          
Step 4 - Define a function to get a clean data frame from the 'train' dataset

This step will extract the necessary data from the train data set and return a data frame
          
Step 5 - Define a function to get a clean data frame from the 'test' dataset

This step will extract the necessary data from the test data set and return a data frame
          
Step 6 - Define a function which will generate the final tidy data set by merging the two datasets and calculating the mean values

This is the function which performs the analysis and writes the results back to the disk. This particular       function must be called to perform the analysis.

