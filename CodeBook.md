CodeBook
==================
# Introduction  
The "data2.txt" has been merged into one set from obtained two datasets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
The following steps has been performed by "run_analysis.R":  
1. download the zip file from the source url and unzip to tempfile
2. read out train/test dataset and merge
3. name each column of variables descriptively and label each row of observations appropriately
4. extract out values of mean and standard deviation, and integrate each variables by activities per subject

# Variable descriptions:  
## Subject  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
  
## Activity  
Each person performed six activities:  
1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  
wearing a smartphone (Samsung Galaxy S II) on the waist.  
  
  
## Feature denotaions:  
**t**  
Prefix 't' to denote time, and these time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.  
**f**  
Prefix 'f' to indicate frequency domain signals, where Fast Fourier Transform (FFT) was applied.  
  
  
  
  
**BodyAcc**  
from the accelerometer 3-axial raw signals tAcc-XYZ  
**GravityAcc**  
from the accelerometer 3-axial raw signals tAcc-XYZ  
**BodyGyro**  
from the gyroscope 3-axial raw signals tGyro-XYZ  
    
- **The signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.**  
- **The raw signals tAcc-XYZ and tGyro-XYZ were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.**  
- **The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.**  
  
  
  
  
**BodyAccJerk, BodyGyroJerk**  
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals.  
**BodyAccMag, GravityAccMag, BodyAccJerkMag, BodyGyroMag, BodyGyroJerkMag**  
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.  
  
  
  
  
**"mean"**  
Mean value  
**"std"**  
Standard deviation  
  
- **Mean and standard deviation were estimated from the above variables.**  
  
  
  
  
**angle:**  
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  
gravityMean(3-axis), tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean  
  
  
  
  
## Units:  
**Acc:**  
Values related to "Acc" (the acceleration signal from the smartphone accelerometer) are in standard gravity units 'g'.  
**Gyro:**  
Values related to "Acc" (the angular velocity vector measured by the gyroscope) are radians/second.  
  
  
  
  
  
## Total list of 86 features:  
tBodyAcc.mean...X  
tBodyAcc.mean...Y  
tBodyAcc.mean...Z  
tBodyAcc.std...X  
tBodyAcc.std...Y  
tBodyAcc.std...Z  
tGravityAcc.mean...X  
tGravityAcc.mean...Y  
tGravityAcc.mean...Z  
tGravityAcc.std...X  
tGravityAcc.std...Y  
tGravityAcc.std...Z  
tBodyAccJerk.mean...X  
tBodyAccJerk.mean...Y  
tBodyAccJerk.mean...Z  
tBodyAccJerk.std...X  
tBodyAccJerk.std...Y  
tBodyAccJerk.std...Z  
tBodyGyro.mean...X  
tBodyGyro.mean...Y  
tBodyGyro.mean...Z  
tBodyGyro.std...X  
tBodyGyro.std...Y  
tBodyGyro.std...Z  
tBodyGyroJerk.mean...X  
tBodyGyroJerk.mean...Y  
tBodyGyroJerk.mean...Z  
tBodyGyroJerk.std...X  
tBodyGyroJerk.std...Y  
tBodyGyroJerk.std...Z  
tBodyAccMag.mean..  
tBodyAccMag.std..  
tGravityAccMag.mean..  
tGravityAccMag.std..  
tBodyAccJerkMag.mean..  
tBodyAccJerkMag.std..  
tBodyGyroMag.mean..  
tBodyGyroMag.std..  
tBodyGyroJerkMag.mean..  
tBodyGyroJerkMag.std..  
fBodyAcc.mean...X  
fBodyAcc.mean...Y  
fBodyAcc.mean...Z  
fBodyAcc.std...X  
fBodyAcc.std...Y  
fBodyAcc.std...Z  
fBodyAcc.meanFreq...X  
fBodyAcc.meanFreq...Y  
fBodyAcc.meanFreq...Z  
fBodyAccJerk.mean...X  
fBodyAccJerk.mean...Y  
fBodyAccJerk.mean...Z  
fBodyAccJerk.std...X  
fBodyAccJerk.std...Y  
fBodyAccJerk.std...Z  
fBodyAccJerk.meanFreq...X  
fBodyAccJerk.meanFreq...Y  
fBodyAccJerk.meanFreq...Z  
fBodyGyro.mean...X  
fBodyGyro.mean...Y  
fBodyGyro.mean...Z  
fBodyGyro.std...X  
fBodyGyro.std...Y  
fBodyGyro.std...Z  
fBodyGyro.meanFreq...X  
fBodyGyro.meanFreq...Y  
fBodyGyro.meanFreq...Z  
fBodyAccMag.mean..  
fBodyAccMag.std..  
fBodyAccMag.meanFreq..  
fBodyBodyAccJerkMag.mean..  
fBodyBodyAccJerkMag.std..  
fBodyBodyAccJerkMag.meanFreq..  
fBodyBodyGyroMag.mean..  
fBodyBodyGyroMag.std..  
fBodyBodyGyroMag.meanFreq..  
fBodyBodyGyroJerkMag.mean..  
fBodyBodyGyroJerkMag.std..  
fBodyBodyGyroJerkMag.meanFreq..  
angle.tBodyAccMean.gravity.  
angle.tBodyAccJerkMean..gravityMean.  
angle.tBodyGyroMean.gravityMean.  
angle.tBodyGyroJerkMean.gravityMean.  
angle.X.gravityMean.  
angle.Y.gravityMean.  
angle.Z.gravityMean.  
