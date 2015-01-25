
###############################################################################################
	The dataset name is tidy_dataset.txt

It is aggregated version of data: 
Human Activity Recognition Using Smartphones Dataset
Version 1.0
provided by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

It summarizes the parameteres smartphone users during the activity
###############################################################################################

It contains 68 columns:

subject - id of a person (1 to 30)
desc_activity_name - activity of measurement (levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Then a series of 66 aggregated values grouped by subject and desc_activity_name

avg_tBodyAcc-mean()-X 
avg_tBodyAcc-mean()-Y
avg_tBodyAcc-mean()-Z
avg_tGravityAcc-mean()-X
avg_tGravityAcc-mean()-Y
avg_tGravityAcc-mean()-Z
avg_tBodyAccJerk-mean()-X
avg_tBodyAccJerk-mean()-Y
avg_tBodyAccJerk-mean()-Z
avg_tBodyGyro-mean()-X
avg_tBodyGyro-mean()-Y
avg_tBodyGyro-mean()-Z
avg_tBodyGyroJerk-mean()-X
avg_tBodyGyroJerk-mean()-Y
avg_tBodyGyroJerk-mean()-Z
avg_tBodyAccMag-mean()
avg_tGravityAccMag-mean()
avg_tBodyAccJerkMag-mean()
avg_tBodyGyroMag-mean()
avg_tBodyGyroJerkMag-mean()
avg_fBodyAcc-mean()-X
avg_fBodyAcc-mean()-Y
avg_fBodyAcc-mean()-Z
avg_fBodyAccJerk-mean()-X
avg_fBodyAccJerk-mean()-Y
avg_fBodyAccJerk-mean()-Z
avg_fBodyGyro-mean()-X
avg_fBodyGyro-mean()-Y
avg_fBodyGyro-mean()-Z
avg_fBodyAccMag-mean()
avg_fBodyBodyAccJerkMag-mean()
avg_fBodyBodyGyroMag-mean()
avg_fBodyBodyGyroJerkMag-mean()
avg_tBodyAcc-std()-X
avg_tBodyAcc-std()-Y
avg_tBodyAcc-std()-Z
avg_tGravityAcc-std()-X
avg_tGravityAcc-std()-Y
avg_tGravityAcc-std()-Z
avg_tBodyAccJerk-std()-X
avg_tBodyAccJerk-std()-Y
avg_tBodyAccJerk-std()-Z
avg_tBodyGyro-std()-X
avg_tBodyGyro-std()-Y
avg_tBodyGyro-std()-Z
avg_tBodyGyroJerk-std()-X
avg_tBodyGyroJerk-std()-Y
avg_tBodyGyroJerk-std()-Z
avg_tBodyAccMag-std()
avg_tGravityAccMag-std()
avg_tBodyAccJerkMag-std()
avg_tBodyGyroMag-std()
avg_tBodyGyroJerkMag-std()
avg_fBodyAcc-std()-X
avg_fBodyAcc-std()-Y
avg_fBodyAcc-std()-Z
avg_fBodyAccJerk-std()-X
avg_fBodyAccJerk-std()-Y
avg_fBodyAccJerk-std()-Z
avg_fBodyGyro-std()-X
avg_fBodyGyro-std()-Y
avg_fBodyGyro-std()-Z
avg_fBodyAccMag-std()
avg_fBodyBodyAccJerkMag-std()
avg_fBodyBodyGyroMag-std()
avg_fBodyBodyGyroJerkMag-std()

All the columns are means of values provided by the original data source and reffers only to means and standard deviations included in this data.
##################################
Original data details:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
##################################
Original data transformations:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
############################################
The set of variables used in creating the set described here that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


###############################################################################################################################


		DATA TRANSFORMATIONS STEPS FOR CREATING TIDY_DATASET

###############################################################################################################################

Step 1: creating a directory
Step 2: reading test data
Step 3: reading training data
Step 4: reading test set of activity labels
Step 5: reading training set of activity labels
Step 6: reading names of variable
Step 7: Merging train and test datasets
Step 8: Choosing only mean and standard deviation variables from data set
Step 9: Merging train and test activity labels and joing to the dataset with appropriate name
Step 10: reading train subjects ids
Step 11: reading test subjects ids
Step 12: Merging train and test subjects and joing to the dataset with appropriate name
Step 13: creating a vector of names of variables
Step 14: changing the names of variables for names allowing for aggregations
Step 15: aggregating data by subject and activity description
Step 16: Using original names of variables to assign names for aggregated data
Step 17: writing tidy dataset to text file
