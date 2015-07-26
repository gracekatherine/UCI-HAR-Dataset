# Code Book

## ID Fields

* `SubjectID` - The participant ("subject") ID
* `Activity` - Type activity being performed when measurements were taken

## Variable Names

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ
tGravityAccXYZ
tBodyAccJerkXYZ
tBodyGyroXYZ
tBodyGyroJerkXYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAccXYZ
fBodyAccJerkXYZ
fBodyGyroXYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables analyzed in the run_analysis.R script are: 

Mean: Mean value
Std: Standard deviation

See the features_info.txt file in the UCI HAR Dataset folder for further detail.

* `tBodyAccMeanX` (column `1`)
* `tBodyAccMeanY` (column `2`)
* `tBodyAccMeanZ` (column `3`)
* `tBodyAccStdX` (column `4`)
* `tBodyAccStdY` (column `5`)
* `tBodyAccStdZ` (column `6`)
* `tGravityAccMeanX` (column `41`)
* `tGravityAccMeanY` (column `42`)
* `tGravityAccMeanZ` (column `43`)
* `tGravityAccStdX` (column `44`)
* `tGravityAccStdY` (column `45`)
* `tGravityAccStdZ` (column `46`)
* `tBodyAccJerkMeanX` (column `81`)
* `tBodyAccJerkMeanY` (column `82`)
* `tBodyAccJerkMeanZ` (column `83`)
* `tBodyAccJerkStdX` (column `84`)
* `tBodyAccJerkStdY` (column `85`)
* `tBodyAccJerkStdZ` (column `86`)
* `tBodyGyroMeanX` (column `121`)
* `tBodyGyroMeanY` (column `122`)
* `tBodyGyroMeanZ` (column `123`)
* `tBodyGyroStdX` (column `124`)
* `tBodyGyroStdY` (column `125`)
* `tBodyGyroStdZ` (column `126`)
* `tBodyGyroJerkMeanX` (column `161`)
* `tBodyGyroJerkMeanY` (column `162`)
* `tBodyGyroJerkMeanZ` (column `163`)
* `tBodyGyroJerkStdX` (column `164`)
* `tBodyGyroJerkStdY` (column `165`)
* `tBodyGyroJerkStdZ` (column `166`)
* `tBodyAccMagMean` (column `201`)
* `tBodyAccMagStd` (column `202`)
* `tGravityAccMagMean` (column `214`)
* `tGravityAccMagStd` (column `215`)
* `tBodyAccJerkMagMean` (column `227`)
* `tBodyAccJerkMagStd` (column `228`)
* `tBodyGyroMagMean` (column `240`)
* `tBodyGyroMagStd` (column `241`)
* `tBodyGyroJerkMagMean` (column `253`)
* `tBodyGyroJerkMagStd` (column `254`)
* `fBodyAccMeanX` (column `266`)
* `fBodyAccMeanY` (column `267`)
* `fBodyAccMeanZ` (column `268`)
* `fBodyAccStdX` (column `269`)
* `fBodyAccStdY` (column `270`)
* `fBodyAccStdZ` (column `271`)
* `fBodyAccJerkMeanX` (column `345`)
* `fBodyAccJerkMeanY` (column `346`)
* `fBodyAccJerkMeanZ` (column `347`)
* `fBodyAccJerkStdX` (column `348`)
* `fBodyAccJerkStdY` (column `349`)
* `fBodyAccJerkStdZ` (column `350`)
* `fBodyGyroMeanX` (column `424`)
* `fBodyGyroMeanY` (column `425`)
* `fBodyGyroMeanZ` (column `426`)
* `fBodyGyroStdX` (column `427`)
* `fBodyGyroStdY` (column `428`)
* `fBodyGyroStdZ` (column `429`)
* `fBodyAccMagMean` (column `503`)
* `fBodyAccMagStd` (column `504`)
* `fBodyAccJerkMagMean` (column `516`)
* `fBodyAccJerkMagStd` (column `517`)
* `fBodyGyroMagMean` (column `529`)
* `fBodyGyroMagStd` (column `530`)
* `fBodyGyroJerkMagMean` (column `542`)
* `fBodyGyroJerkMagStd` (column `543`)

## Activity Labels

* `WALKING` (value `1`)
* `WALKING_UPSTAIRS` (value `2`)
* `WALKING_DOWNSTAIRS` (value `3`)
* `SITTING` (value `4`)
* `STANDING` (value `5`)
* `LAYING` (value `6`)
