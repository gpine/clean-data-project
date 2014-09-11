==================================================================
Human Activity Recognition Using Smartphones Dataset
**Modified by Glen for Coursera Course on Clean Data**
==================================================================
Original work by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The R script, run_analysis.R, reads in the following files using read.table:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


The script then manipulates the 'train' and 'test' data in the following way to create the file tidy1.txt:
======================================
1. renames the single column from y_train.txt and y_test.txt to "Activity label".
2. renames the single column from subject_train.txt and subject_test.txt to "Subject ID".
3. renames the columns from x_train.txt and x_test.txt to the corresponding row value from features.txt. 
4. uses grep to select only those x_train/x_test variables ending with 'mean ()' and 'std()'. This decision comes from the features_info.txt file, which explains that mean() refers to "Mean value" and std() refers to "Standard deviation." By design, the grep does not search for the additional vectors obtained by averaging the signals in a signal window sample (gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean).
5. uses cbind to merge the "Subject ID" and "Activity label" columns to the left side of the x_train and x_test data tables. The train and test tables now have the following columns:| "Subject ID" | "Activity label" | Columns of features variables
6. uses rbind to put the test data below the train data. The two tables are now merged.
7. changes the numeric values in the 'Activity label' column to the matching character values from activity_labels.txt.
8. uses sub and gsub functions to clean up the variable names and put them into a human-readable form. See the attached codebook for the list of variable names.
9. orders the data by "Subject ID" and then by "Activity label" using the order function
10. writes the data using write.table to a text file called tidy1.txt

The script then manipulates the tidy1 table in the following way to create the file tidy2.txt:
======================================
1. uses gsub to remove spaces from the column names, which helped when using the ddply command (see step 3 below)
2. melts the data into long, skinny form using the melt function.
3. uses ddply to calculate the average among each Subject ID/Activity label pair for each activity
4. uses unique function to remove duplicates.
5. uses cast function to put the data back to its original shape. 
6. orders the data by "Subject ID" and then by "Activity label" using the order function
7. renames the variables using sub function to reflect that they're averages
8. writes the data using write.table to a text file called tidy2.txt

==================================================================
In sum, the R script, run_analysis.R -- after reading in the files above and performing the above actions -- has written two files: 

- 'tidy1.txt': a tidy version of the Samsung data.
- 'tidy2.txt': a condensed version of tidy1.txt that contains only the averages among each Subject ID/Activity label pair for each activity.

For each record of tidy1.txt it is provided:
======================================

- Subject ID
- Activity Label
- 66 measurements pertaining to mean and standard deviation

For each record of tidy2.txt it is provided:
======================================

- Subject ID
- Activity Label
- 66 measurements pertaining to means, for each subject/activity pair, of the 

mean and standard deviation measurements from tidy1.txt

Notes: 
======
- Features are normalized and bounded within [-1,1].

License:
========
Use of this dataset in publications must be acknowledged by referencing the 

following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 

Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 

Hardware-Friendly Support Vector Machine. International Workshop of Ambient 

Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit 

can be addressed to the authors or their institutions for its use or misuse. 

Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 

2012.
