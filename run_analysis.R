# The analysis is being performed in the following steps :

#  Step 1 - Install and load the reshape2 package
#  Step 2 - Define the relevant names and positions to be extracted for features and activities
#  Step 3 - Define a function to get a clean data frame from the 'train' dataset
#  Step 4 - Define a function to get a clean data frame from the 'test' dataset
#  Step 5 - Define a function which will generate the final tidy data set by merging 
#           the two datasets and calculating the mean values

# CALL THE FUNCTION DEFINED IN STEP 5 ABOVE TO RUN THE ANALYSIS AND GET THE TIDY DATA SET


##  ------------- Step 1 - start

      # UNCOMMENT THE TWO LINES BELOW TO INSTALL AND LOAD reshape2 PACKAGE
      # install.packages("reshape2")
      # library("reshape2")


##  ------------- Step 3 - start 

      tidyDataFileName  <- "TidyDataSet.txt"

      featurePositions  <- c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)
      featureNames      <- c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")

      activityValues    <- c(1, 2, 3, 4, 5, 6)
      activityNames     <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")


##  ------------- Step 4 - start 

      # Function to get a clean data frame from the 'Train' dataset
      getCleanDataFrameFromTrain <- function (DATA_PATH){

            print("Fetching train data set...")

            # Define path to 'train' folder and files
            folderPath      <- file.path ( DATA_PATH  ,  "train")

            featuresFile      <- file.path ( folderPath , "X_train.txt")
            activitiesFile    <- file.path ( folderPath , "y_train.txt")
            subjectsFile      <- file.path ( folderPath , "subject_train.txt")

             # Read data from features file
            featuresData            <- read.table(featuresFile)[featurePositions]
            names(featuresData)     <- featureNames

            cleanData <- featuresData

            # Read data from activities file
            activitiesData          <- read.table(activitiesFile)
            names(activitiesData)   <- c("activity")

            # Create a factor from the dataframe
            activitiesData$activity <- factor(activitiesData$activity, levels = activityValues, labels = activityNames)
            
            # Column bind the newly created factor to the cleanData dataframe
            cleanData <- cbind(cleanData, activity = activitiesData$activity)

            # Read data from the subjects file
            subjectsData            <- read.table(subjectsFile)
            names(subjectsData)     <- c("subject")

            # Column bind the subjects data to the cleanData dataframe
            cleanData <- cbind(cleanData, subject = subjectsData$subject)

            print("train data set fetched")

            # Return the cleanData data frame
            cleanData
}



##  ------------- Step 5 - start 

      # Function to get a clean data frame from the 'Test' dataset
      getCleanDataFrameFromTest <- function(DATA_PATH){

            print("Fetching test data set...")

            # Define path to 'test' folder and files
            folderPath        <- file.path ( DATA_PATH  ,  "test")

            featuresFile      <- file.path ( folderPath , "X_test.txt")
            activitiesFile    <- file.path ( folderPath , "y_test.txt")
            subjectsFile      <- file.path ( folderPath , "subject_test.txt")

             # Read data from features file
            featuresData            <- read.table(featuresFile)[featurePositions]
            names(featuresData)     <- featureNames

            cleanData <- featuresData

            # Read data from activities file
            activitiesData          <- read.table(activitiesFile)
            names(activitiesData)   <- c("activity")

            # Create a factor from the dataframe
            activitiesData$activity <- factor(activitiesData$activity, levels = activityValues, labels = activityNames)
            
            # Column bind the newly created factor to the cleanData dataframe
            cleanData <- cbind(cleanData, activity = activitiesData$activity)

            # Read data from the subjects file
            subjectsData            <- read.table(subjectsFile)
            names(subjectsData)     <- c("subject")

            # Column bind the subjects data to the cleanData dataframe
            cleanData <- cbind(cleanData, subject = subjectsData$subject)

            print("test data set fetched")

            # Return the cleanData data frame
            cleanData
      }



##  ------------- Step 6 - start 

      # Function to run the analysis and get the final tidy data set
      runAnalysis <- function (DATA_PATH){

            # Get the train and test data sets
            trainData   <- getCleanDataFrameFromTrain(DATA_PATH)
            testData    <- getCleanDataFrameFromTest(DATA_PATH)

            print("Merging the data sets ...")

            # Join the datasets
            mergedData  <- rbind( trainData , testData )

            # Melt the data frame 
            meltedData <- melt( mergedData , id = c("subject", "activity") )
            
            # Get the original data frame back
            mergedDataClean <- dcast(meltedData, subject + activity ~ variable, mean)

            print("Data sets merged")

            print ( paste("Saving file TidyDataSet.txt to folder " , DATA_PATH," ..."))

            # Save the tidy data set to the file 'TidyDataSet.txt'
            tidyDataFile <- file.path( DATA_PATH , tidyDataFileName )
            
            write.table(mergedDataClean, tidyDataFile, row.names = FALSE, quote = FALSE)

            print("TidyDataSet.txt saved")
      }


# Call the function to run the analysis
# The DATA_PATH arguement is the name of the folder containing the train and test data sets
runAnalysis("UCI HAR Dataset")

