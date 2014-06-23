Getting-and-Cleaning-Data-Course-Project
========================================


The objective was to create a R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.\n
2. Extracts only the measurements on the mean and standard deviation for each measurement.\n
3. Uses descriptive activity names to name the activities in the data set\n
4. Appropriately labels the data set with descriptive variable names\n
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject\n


STEPS INVOLVED IN THE ANALYSIS
--------------------------------------------------------------------------------------------------------------------------
The analysis consists of five basic steps which have been detailed below.

Step 1 - Install and load the reshape2 package
          
This step loads the reshape2 package if it has not already been loaded.


Step 2 - Define the relevant names and positions to be extracted for features and activities

This step defines the positions and names for the features and activities
          
Step 3 - Define a function to get a clean data frame from the 'train' dataset

This step will extract the necessary data from the train data set and return a data frame
          
Step 4 - Define a function to get a clean data frame from the 'test' dataset

This step will extract the necessary data from the test data set and return a data frame
          
Step 5 - Define a function which will generate the final tidy data set by merging the two datasets and calculating the mean values

This is the function which performs the analysis and writes the results back to the disk. This particular       function must be called to perform the analysis.



STEPS TO RUN THE ANALYSIS
--------------------------------------------------------------------------------------------------------------------------
Step 1 - Download the script run_analysis.R

Step 2 - Place the script in the folder which has the dataset.

Step 3 - Run the script

Step 4 - Call the function runAnalysis(). 

The function takes only a single arguement which is the name of the folder containing the train and test data sets.
For example, runAnalysis("UCI HAR Dataset")





