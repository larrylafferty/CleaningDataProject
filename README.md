# Course Project README file for Getting and Cleaning Data

## Overview
This README describes usage of the run_analysis() script.  Note that the data Code Book is
available in the file named "CodeBook_Getting_and_Cleaning_Data.md"

## Data requirements and directory structure
The run_analysis() script requires data from the UCI HAR dataset, including both the test and
training data sets.  The script generates an output file named "Project_Summmary_data.txt" which is written to the working directory.  The script assumes that the data are located in subdirectories as follows:

-- Working directory...folder containing the following files
   "run_analysis.R"
   "Project_Summary_data.txt" (output file)
   
   -- UCI HAR Dataset...subfolder containing the following file
      "features.txt" file 
       
        -- test...subfolder containing the following files
            "subject_test.txt"
            "activity_labels"
            "X_test.txt"
            "y_test.txt"
            
        -- train...subfolder containing the following files
            "subject_train.txt"
            "activity_labels"
            "X_train.txt"
            "y_train.txt"
            
## Package dependencies
1. dplyr package

## Execution instructions
1. In an R console, type  library(dplyr)
2. Source the file "run_analysis.R" from the working directory
2. Type  run_analysis()
3. Results are stored in "Project_Summary_data.txt"