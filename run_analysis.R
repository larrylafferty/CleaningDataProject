# Cleaning Data - Class Project
#
# Author:  Larry Lafferty
#
# The run_analysis function reads smartphone activity data from the UCI HAR dataset and generates
#  summary 'mean' and 'std' values by subject and activity.  See the files "README.md" and
#  "CodeBook_Getting_and_Cleaning_data.md".  Results are written to "ProjectSummaryOut.txt"
#  in the working dirctory.
#
#  The dplyr package is a dependency

library(dplyr)
run_analysis <- function() {
  
  # 
  # Get the features first
  featNames <- read.csv("features.txt", sep="", header=FALSE, stringsAsFactors=FALSE)
  featList <- featNames[, "V2"]
  #
  # Read the data and build a single, labeled, merged data table (dTable1_2)
  # 
  dTable1 <- mergeSubMeasures("X_test.txt", 
                              "subject_test.txt",
                              "y_test.txt",
                              featList)
  dTable2 <- mergeSubMeasures("X_train.txt", 
                              "subject_train.txt",
                              "y_train.txt",
                              featList)
  dTable1_2 <- rbind(dTable1, dTable2)
  # 
  # Get the feature names which contain "mean" or "std"
  #
  featMeansIndices <- grep("mean", featList, ignore.case=TRUE)
  featStdsIndices <- grep("std", featList, ignore.case=TRUE)
  
  featsIndicesMerged <- append(featMeansIndices, featStdsIndices)
  # At this point we have a list of INDICES into the featList.  Create a list of feature names themselves
  #  including the subject and activity columns
  featOfInterest<- featList[featsIndicesMerged]
  #browser()
  #  
  # Use the feature names to select columns of interest from the combined training / test data table.
  selectedCols <- dTable1_2[, c("subject", "activity", featOfInterest)]
  #
  # Use dplyr to group by subject and activity
  #
  bySubject <- group_by(selectedCols, subject, activity)
  # browser()
  # Use summarise_each to calculate mean of all columns (except the grouping columns)
  sumVals <- summarise_each(bySubject, funs(mean))
  write.table(sumVals, "ProjectSummaryOut.txt", row.name=FALSE)
}

#
# 'mergeSubMeasures' reads data for subjects, measurements, activities and a list of features.
#  It returns a merged and labeled data table
#
mergeSubMeasures <- function(measuresFile, subFile, activityFile, featList) {
  # Read the measurements, subject, and features files
  mTable <- read.table(measuresFile, header=FALSE)
  sTable <- read.table(subFile, header=FALSE)
  aList <- read.csv(activityFile, header=FALSE)
  # browser()
  # Create the activity table and label it
  activities <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
  activitiesReadable <- (sapply(aList, function(x) activities[x]))
  
  # Combine data into a single table
  # First cbind the activities to measurements
  tempTable <- cbind(activitiesReadable[, "V1"], mTable)
  
  # Bind the subject activity data to the measurements
  retTable <- cbind(sTable[,"V1"], tempTable)
 
  # Label the columns with subject, activity, and the feature ID's
  colnames(retTable) <- c("subject", "activity", featList)
  retTable
}
