Code Book
==============================

Files:
==============================
- 'tidy1.csv': a tidy version of the Samsung data.
- 'tidy2.csv': a condensed version of tidy1.csv that contains only the averages among each Subject ID/Activity label pair for each activity.

Variables:
==============================
Vaiables in tidy1.csv are below. For tidy2.csv, variables 1 and 2 are the same as below, and variables 3-68 are the same, except with the word "Mean" in front (and the words "Time" and "Fast" decapitalized) -- this reflects that the values in tidy2.csv are averages for each subject/activity pair.

Subject ID and Activity label variables
=================================
1.	Subject ID
    * 30 volunteers within an age bracket of 19-48 years.
    * 1,2,3,...,30
2.	Activity label
    * The name of each activity
    * Note that this variable has been modified from the original data set, in which the values were an integer from 1 to 6. 
        * WALKING
        * WALKING_UPSTAIRS
        * WALKING_DOWNSTAIRS
        * SITTING
        * STANDING
        * LAYING

Features variables
=================================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

These signals were used to estimate variables of the feature vector for each pattern.
X, Y, and Z axis in the variable names is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

'mean': Mean value
'standard deviation': Standard deviation

**Note: All feature variables are normalized and bounded within [-1,1].**
Here is the list:
1.	Time domain body acceleration mean on the X axis
2.	Time domain body acceleration mean on the Y axis
3.	Time domain body acceleration mean on the Z axis
4.	Time domain body acceleration standard deviation on the X axis
5.	Time domain body acceleration standard deviation on the Y axis
6.	Time domain body acceleration standard deviation on the Z axis
7.	Time domain gravity acceleration mean on the X axis
8.	Time domain gravity acceleration mean on the Y axis
9.	Time domain gravity acceleration mean on the Z axis
10.	Time domain gravity acceleration standard deviation on the X axis
11.	Time domain gravity acceleration standard deviation on the Y axis
12.	Time domain gravity acceleration standard deviation on the Z axis
13.	Time domain body acceleration jerk mean on the X axis
14.	Time domain body acceleration jerk mean on the Y axis
15.	Time domain body acceleration jerk mean on the Z axis
16.	Time domain body acceleration jerk standard deviation on the X axis
17.	Time domain body acceleration jerk standard deviation on the Y axis
18.	Time domain body acceleration jerk standard deviation on the Z axis
19.	Time domain body gyroscopic mean on the X axis
20.	Time domain body gyroscopic mean on the Y axis
21.	Time domain body gyroscopic mean on the Z axis
22.	Time domain body gyroscopic standard deviation on the X axis
23.	Time domain body gyroscopic standard deviation on the Y axis
24.	Time domain body gyroscopic standard deviation on the Z axis
25.	Time domain body gyroscopic jerk mean on the X axis
26.	Time domain body gyroscopic jerk mean on the Y axis
27.	Time domain body gyroscopic jerk mean on the Z axis
28.	Time domain body gyroscopic jerk standard deviation on the X axis
29.	Time domain body gyroscopic jerk standard deviation on the Y axis
30.	Time domain body gyroscopic jerk standard deviation on the Z axis
31.	Time domain body acceleration magnitude mean
32.	Time domain body acceleration magnitude standard deviation
33.	Time domain gravity acceleration magnitude mean
34.	Time domain gravity acceleration magnitude standard deviation
35.	Time domain body acceleration jerk magnitude mean
36.	Time domain body acceleration jerk magnitude standard deviation
37.	Time domain body gyroscopic magnitude mean
38.	Time domain body gyroscopic magnitude standard deviation
39.	Time domain body gyroscopic jerk magnitude mean
40.	Time domain body gyroscopic jerk magnitude standard deviation
41.	Fast Fourier transformed body acceleration mean on the X axis
42.	Fast Fourier transformed body acceleration mean on the Y axis
43.	Fast Fourier transformed body acceleration mean on the Z axis
44.	Fast Fourier transformed body acceleration standard deviation on the X axis
45.	Fast Fourier transformed body acceleration standard deviation on the Y axis
46.	Fast Fourier transformed body acceleration standard deviation on the Z axis
47.	Fast Fourier transformed body acceleration jerk mean on the X axis
48.	Fast Fourier transformed body acceleration jerk mean on the Y axis
49.	Fast Fourier transformed body acceleration jerk mean on the Z axis
50.	Fast Fourier transformed body acceleration jerk standard deviation on the X axis
51.	Fast Fourier transformed body acceleration jerk standard deviation on the Y axis
52.	Fast Fourier transformed body acceleration jerk standard deviation on the Z axis
53.	Fast Fourier transformed body gyroscopic mean on the X axis
54.	Fast Fourier transformed body gyroscopic mean on the Y axis
55.	Fast Fourier transformed body gyroscopic mean on the Z axis
56.	Fast Fourier transformed body gyroscopic standard deviation on the X axis
57.	Fast Fourier transformed body gyroscopic standard deviation on the Y axis
58.	Fast Fourier transformed body gyroscopic standard deviation on the Z axis
59.	Fast Fourier transformed body acceleration magnitude mean
60.	Fast Fourier transformed body acceleration magnitude standard deviation
61.	Fast Fourier transformed bodyacceleration jerk magnitude mean
62.	Fast Fourier transformed bodyacceleration jerk magnitude standard deviation
63.	Fast Fourier transformed body gyroscopic magnitude mean
64.	Fast Fourier transformed body gyroscopic magnitude standard deviation
65.	Fast Fourier transformed body gyroscopic jerk magnitude mean
66.	Fast Fourier transformed body gyroscopic jerk magnitude standard deviation
