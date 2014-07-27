All data is from UCI HAR Dataset.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc_xyz and tgyro_xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyacc_xyz and tgravityacc_xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerk_xyz and tbodygyrojerk_xyz).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc_xyz, fbodyaccjerk_xyz, fbodygyro_xyz. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'_xyz' is used to denote 3-axial signals in the X, Y and Z directions.

subject: number of person.
activity: activity marks by categories walking, walking_upstairs, walking_downstairs, sitting, standing, laying  

The set of variables that were estimated from these signals are averaged: 

mean: Mean value
std: Standard deviation

Complete list of averaged variables:
tbodyacc_mean_x
tbodyacc_mean_y
tbodyacc_mean_z
tbodyacc_std_x
tbodyacc_std_y
tbodyacc_std_z
tgravityacc_mean_x
tgravityacc_mean_y
tgravityacc_mean_z
tgravityacc_std_x
tgravityacc_std_y
tgravityacc_std_z
tbodyaccjerk_mean_x
tbodyaccjerk_mean_y
tbodyaccjerk_mean_z
tbodyaccjerk_std_x
tbodyaccjerk_std_y
tbodyaccjerk_std_z
tbodygyro_mean_x
tbodygyro_mean_y
tbodygyro_mean_z
tbodygyro_std_x
tbodygyro_std_y
tbodygyro_std_z
tbodygyrojerk_mean_x
tbodygyrojerk_mean_y
tbodygyrojerk_mean_z
tbodygyrojerk_std_x
tbodygyrojerk_std_y
tbodygyrojerk_std_z
fbodyacc_mean_x
fbodyacc_mean_y
fbodyacc_mean_z
fbodyacc_std_x
fbodyacc_std_y
fbodyacc_std_z
fbodyaccjerk_mean_x
fbodyaccjerk_mean_y
fbodyaccjerk_mean_z
fbodyaccjerk_std_x
fbodyaccjerk_std_y
fbodyaccjerk_std_z
fbodygyro_mean_x
fbodygyro_mean_y
fbodygyro_mean_z
fbodygyro_std_x
fbodygyro_std_y
fbodygyro_std_z
