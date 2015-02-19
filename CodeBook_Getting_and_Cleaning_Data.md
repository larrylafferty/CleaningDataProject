# Course Project Code Book for Getting and Cleaning Data

## Overview
This code book describes summary data generated from the Reyes-Ortiz dataset for Human Activity Recognition Using Smartphones.  The data are derived experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

##Data Summary
Each record in the original dataset includes the following information:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## Data Processing
The original data was processed by 
1. merging the subject, activity, and sensor data
2. extracting data for those columns that provide mean and std measurements
3. grouping the extracted data by subject and activity
4. summarizing mean and std measurements by group

## Data Elements
The output data set provides summary data for the following data elements with the data grouped by subject and activity

* subject
* activity
* tBodyAcc-mean()-X                    
* tBodyAcc-mean()-Y                   
* tBodyAcc-mean()-Z                    
* tGravityAcc-mean()-X                
* tGravityAcc-mean()-Y                 
* tGravityAcc-mean()-Z                
* tBodyAccJerk-mean()-X               
* tBodyAccJerk-mean()-Y               
* tBodyAccJerk-mean()-Z                
* tBodyGyro-mean()-X                  
* tBodyGyro-mean()-Y                   
* tBodyGyro-mean()-Z                  
* tBodyGyroJerk-mean()-X               
* tBodyGyroJerk-mean()-Y              
* tBodyGyroJerk-mean()-Z               
* tBodyAccMag-mean()                  
* tGravityAccMag-mean()                
* tBodyAccJerkMag-mean()              
* tBodyGyroMag-mean()                  
* tBodyGyroJerkMag-mean()             
* fBodyAcc-mean()-X                    
* fBodyAcc-mean()-Y                   
* fBodyAcc-mean()-Z                    
* fBodyAcc-meanFreq()-X               
* fBodyAcc-meanFreq()-Y                
* fBodyAcc-meanFreq()-Z               
* fBodyAccJerk-mean()-X                
* fBodyAccJerk-mean()-Y               
* fBodyAccJerk-mean()-Z                
* fBodyAccJerk-meanFreq()-X           
* fBodyAccJerk-meanFreq()-Y           
* fBodyAccJerk-meanFreq()-Z           
* fBodyGyro-mean()-X                   
* fBodyGyro-mean()-Y                  
* fBodyGyro-mean()-Z                   
* fBodyGyro-meanFreq()-X              
* fBodyGyro-meanFreq()-Y               
* fBodyGyro-meanFreq()-Z              
* fBodyAccMag-mean()                   
* fBodyAccMag-meanFreq()              
* fBodyBodyAccJerkMag-mean()           
* fBodyBodyAccJerkMag-meanFreq()      
* fBodyBodyGyroMag-mean()              
* fBodyBodyGyroMag-meanFreq()         
* fBodyBodyGyroJerkMag-mean()          
* fBodyBodyGyroJerkMag-meanFreq()     
* angle(tBodyAccMean,gravity)          
* angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyGyroMean,gravityMean)     
* angle(tBodyGyroJerkMean,gravityMean)
* angle(X,gravityMean)                 
* angle(Y,gravityMean)                
* angle(Z,gravityMean)                 
* tBodyAcc-std()-X                    
* tBodyAcc-std()-Y                     
* tBodyAcc-std()-Z                    
* tGravityAcc-std()-X                  
* tGravityAcc-std()-Y                 
* tGravityAcc-std()-Z                  
* tBodyAccJerk-std()-X                
* tBodyAccJerk-std()-Y                
* tBodyAccJerk-std()-Z                
* tBodyGyro-std()-X                    
* tBodyGyro-std()-Y                   
* tBodyGyro-std()-Z                    
* tBodyGyroJerk-std()-X               
* tBodyGyroJerk-std()-Y                
* tBodyGyroJerk-std()-Z               
* tBodyAccMag-std()                    
* tGravityAccMag-std()                
* tBodyAccJerkMag-std()                
* tBodyGyroMag-std()                  
* tBodyGyroJerkMag-std()               
* fBodyAcc-std()-X                    
* fBodyAcc-std()-Y                     
* fBodyAcc-std()-Z                    
* fBodyAccJerk-std()-X                 
* fBodyAccJerk-std()-Y                
* fBodyAccJerk-std()-Z                 
* fBodyGyro-std()-X                   
* fBodyGyro-std()-Y                    
* fBodyGyro-std()-Z                   
* fBodyAccMag-std()                    
* fBodyBodyAccJerkMag-std()           
* fBodyBodyGyroMag-std()               
* fBodyBodyGyroJerkMag-std()   
