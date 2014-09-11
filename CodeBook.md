Code Book
==============================

Data:
==============================
- 'tidy1.txt': a tidy version of the Samsung data (see below for details about that data).
- 'tidy2.txt': a condensed version of tidy1.txt that contains only the averages among each Subject ID/Activity label pair for each activity.

Variables for tidy1.txt:
==============================
Vaiables in tidy1.txt are below. For tidy2.txt, variables 1 and 2 are the same as below, and variables 3-68 are the same, except with the word "Mean" in front (and the words "Time" and "Fast" decapitalized) -- this reflects that the values in tidy2.txt are averages for each subject/activity pair.

Subject ID and Activity label variables
------------------------------
1.	Subject ID (integer)
    * 30 volunteers within an age bracket of 19-48 years.
    * 1,2,3,...,30
2.	Activity label (character)
    * The name of each activity
    * Note that this variable has been modified from the original data set, in which the values were an integer from 1 to 6. 
        * WALKING
        * WALKING_UPSTAIRS
        * WALKING_DOWNSTAIRS
        * SITTING
        * STANDING
        * LAYING

Features variables (numeric)
------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

These signals were used to estimate variables of the feature vector for each pattern.
X, Y, and Z axis in the variable names is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

'mean': Mean value
'standard deviation': Standard deviation

** Here is the list of feature variables from tidy1.txt.** Note 1: All feature variables are normalized and bounded within [-1,1]    

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

Variables for tidy2.txt:
==============================
As noted above, tidy2.txt is a condensed version of tidy1.txt that contains only the averages among each Subject ID/Activity label pair for each activity. tidy2.txt thus has far fewer *rows* than tidy1.txt. *All other variable information is the same as tidy1.txt*, but the feature variable names are slightly changed.

** Here is the list of feature variables from tidy2.txt.** Note 1: All feature variables are normalized and bounded within [-1,1].    

1.	Mean time domain body acceleration mean on the X axis
2.	Mean time domain body acceleration mean on the Y axis
3.	Mean time domain body acceleration mean on the Z axis
4.	Mean time domain body acceleration standard deviation on the X axis
5.	Mean time domain body acceleration standard deviation on the Y axis
6.	Mean time domain body acceleration standard deviation on the Z axis
7.	Mean time domain gravity acceleration mean on the X axis
8.	Mean time domain gravity acceleration mean on the Y axis
9.	Mean time domain gravity acceleration mean on the Z axis
10.	Mean time domain gravity acceleration standard deviation on the X axis
11.	Mean time domain gravity acceleration standard deviation on the Y axis
12.	Mean time domain gravity acceleration standard deviation on the Z axis
13.	Mean time domain body acceleration jerk mean on the X axis
14.	Mean time domain body acceleration jerk mean on the Y axis
15.	Mean time domain body acceleration jerk mean on the Z axis
16.	Mean time domain body acceleration jerk standard deviation on the X axis
17.	Mean time domain body acceleration jerk standard deviation on the Y axis
18.	Mean time domain body acceleration jerk standard deviation on the Z axis
19.	Mean time domain body gyroscopic mean on the X axis
20.	Mean time domain body gyroscopic mean on the Y axis
21.	Mean time domain body gyroscopic mean on the Z axis
22.	Mean time domain body gyroscopic standard deviation on the X axis
23.	Mean time domain body gyroscopic standard deviation on the Y axis
24.	Mean time domain body gyroscopic standard deviation on the Z axis
25.	Mean time domain body gyroscopic jerk mean on the X axis
26.	Mean time domain body gyroscopic jerk mean on the Y axis
27.	Mean time domain body gyroscopic jerk mean on the Z axis
28.	Mean time domain body gyroscopic jerk standard deviation on the X axis
29.	Mean time domain body gyroscopic jerk standard deviation on the Y axis
30.	Mean time domain body gyroscopic jerk standard deviation on the Z axis
31.	Mean time domain body acceleration magnitude mean
32.	Mean time domain body acceleration magnitude standard deviation
33.	Mean time domain gravity acceleration magnitude mean
34.	Mean time domain gravity acceleration magnitude standard deviation
35.	Mean time domain body acceleration jerk magnitude mean
36.	Mean time domain body acceleration jerk magnitude standard deviation
37.	Mean time domain body gyroscopic magnitude mean
38.	Mean time domain body gyroscopic magnitude standard deviation
39.	Mean time domain body gyroscopic jerk magnitude mean
40.	Mean time domain body gyroscopic jerk magnitude standard deviation
41.	Mean fast Fourier transformed body acceleration mean on the X axis
42.	Mean fast Fourier transformed body acceleration mean on the Y axis
43.	Mean fast Fourier transformed body acceleration mean on the Z axis
44.	Mean fast Fourier transformed body acceleration standard deviation on the X axis
45.	Mean fast Fourier transformed body acceleration standard deviation on the Y axis
46.	Mean fast Fourier transformed body acceleration standard deviation on the Z axis
47.	Mean fast Fourier transformed body acceleration jerk mean on the X axis
48.	Mean fast Fourier transformed body acceleration jerk mean on the Y axis
49.	Mean fast Fourier transformed body acceleration jerk mean on the Z axis
50.	Mean fast Fourier transformed body acceleration jerk standard deviation on the X axis
51.	Mean fast Fourier transformed body acceleration jerk standard deviation on the Y axis
52.	Mean fast Fourier transformed body acceleration jerk standard deviation on the Z axis
53.	Mean fast Fourier transformed body gyroscopic mean on the X axis
54.	Mean fast Fourier transformed body gyroscopic mean on the Y axis
55.	Mean fast Fourier transformed body gyroscopic mean on the Z axis
56.	Mean fast Fourier transformed body gyroscopic standard deviation on the X axis
57.	Mean fast Fourier transformed body gyroscopic standard deviation on the Y axis
58.	Mean fast Fourier transformed body gyroscopic standard deviation on the Z axis
59.	Mean fast Fourier transformed body acceleration magnitude mean
60.	Mean fast Fourier transformed body acceleration magnitude standard deviation
61.	Mean fast Fourier transformed bodyacceleration jerk magnitude mean
62.	Mean fast Fourier transformed bodyacceleration jerk magnitude standard deviation
63.	Mean fast Fourier transformed body gyroscopic magnitude mean
64.	Mean fast Fourier transformed body gyroscopic magnitude standard deviation
65.	Mean fast Fourier transformed body gyroscopic jerk magnitude mean
66.	Mean fast Fourier transformed body gyroscopic jerk magnitude standard deviation

Other relevant information
==============================
The data in tidy1.txt and tidy2.txt is transformed from the Human Activity Recognition Using Smartphones Dataset
Version 1.0 dataset. That data's variables are described in in its own files, 'features_info.txt' and 'README.txt'. This tidying project made several transformations. 

For tidy1.txt
- renames the single column from y_train.txt and y_test.txt to "Activity label".
- renames the single column from subject_train.txt and subject_test.txt to "Subject ID".
- renames the columns from x_train.txt and x_test.txt to the corresponding row value from features.txt. 
- selects only those x_train/x_test variables ending with 'mean ()' and 'std()'. This means that many of the original columns from the Samsung data are no longer part of the tidy tables.
- merges the values from y_train.txt, y_test.txt, subject_train.txt, and subject_test.txt columns to the left side of the x_train and x_test data tables.
- puts the test data below the train data, and . The two tables are now merged.
- orders the data by "Subject ID" and then by "Activity label" using the order function
- changes the numeric values in the 'Activity label' column to the matching character values from activity_labels.txt.
- puts the variable names into a human-readable form.

For tidy2.txt

- begins with tidy1 data
- calculates the average among each Subject ID/Activity label pair for each activity
- removes duplicates
- renames the variables using sub function to reflect that they're averages

For more information about this dataset contact: activityrecognition@smartlab.ws or use the discussion forum on coursera.org.

License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
Modified by Glen. September 2014.
