# Explanation of the code

This readme file explains the code used in the Course Project, which is completely contained in the file "run_analysis.R". 

##Part 0: Read all data

Before answering the questions in this assignment, all the datafiles needed should be read properly. 

In the original folder there are three sources of files:

1. Complementary data: There are two files with metadata: 

1. features.txt: Contains the name of the 561 features.
2. activity_labels.txt: Contains the labels of the six activity labels present in the y_train and y_test files.

2. Train set: There are three files with the train set information:

1. X_train.txt: Contains the 561 variables used as features for 7.352 rows.
2. y_train.txt: Contains the activity information for 7.352 rows.
3. subject_train.txt: Contains the subject information for 7.352 rows.

3. Test set: Just as the train set, there are three files with the test set information:

1. X_test.txt: Contains the 561 variables used as features for 2.947 rows.
2. y_test.txt: Contains the activity information for 2.947 rows.
3. subject_test.txt: Contains the subject information for 2.947 rows.

Additionally, in the folder there is Inertial Signals information, for the train and test sets. However, it is NOT used to build the tidy data file.
Anyway, the code to read the Inertial Signals for the train and test sets is provided, but it is not necessary to do it.

There are several options to read these files, but for this project the data.table package was chosen. 

After reading the files as R data.tables, the next step is naming the variables. For the X_train and X_test datasets, the names were obtained from the features file. 
The y_train and y_test files, plus the subject_train and subject_test files, have each only one variable. The name of the only variable contained in the y files is 
"activity", whereas the only variable contained in the subject files is "subject".

Regarding the complementary data, the two variables in the features file were named "feat_id" (id number) and "features" (names), and the two variables in the 
activity_labels file were named "activity" (code) and "act_name" (description).

##Part 1: Merge train and test set

The steps followed for merging are:

*Adding the variables in X_train, y_train and subject_train datasets with cbind. The resultant dataset has 563 variables (561+1+1) and 7.352 rows.

*Adding the variables in X_test, y_test and subject_test datasets with cbind. The resultant dataset has 563 variables (561+1+1) and 2.947 rows.

*Append the train and test sets obtained in the previous steps with rbind. The resultant data set has 563 variables and 10.299 rows.

##Part 2: Extract measurements on the mean and standard deviation

In the festures_info file you can find explanation about the features estimated for the signals. The set of features are mean, standard deviation, median absolute
deviation, minimum, maximum, among others (the full detail is in the features_info file).

According to the instructions for this assigment, only the features on the mean and standard deviation have to be considered (e.g. all the variables which have names 
containing "mean()" and "std()"). Following this criteria, 66 variables were selected. The variables "subject" and "activity", necessary for grouping in Part 5, were 
added to this group of variables, obtaining as output a reduced dataset of 68 variables and 10.299 rows.

##Part 3: Change activity variable from code to description

The activity_labels.txt file has the description of the six activity codes present in the dataset. For better understanding purposes, the codes were replaced with 
description. The procedure to achieve this is as follows:

*Add the variable "act_name" from the activity_labels to the resulting dataset from Part 2, using variable "activity" as key. 

*Remove the original "activity" variable containing code.

*Rename "act_name" as "activity".

These steps can be interpreted as a replacement of the codes in variable "activity" with their respective descriptions.

##Part 4: Labels the data set with descriptive variable names

The 66 features selected in Part 2 were renamed with more descriptive names. The transformation from the original to the final names was done in 12 steps, using 
the following string replacement:

1. Replace the first character of every variable (f->frequency, t->time)
2. Replace "bodybody" for "body-"
3. Replace "acc" for "acceleration-"
4. Replace "gyro" for "angularvelocity-"
5. Replace "mag" for "magnitude-"
6. Replace "gravity" for "gravity-"
7. Replace "jerk" for "jerk-"
8. Replace "-std()" for "-standarddeviation"
9. Replace "-mean()" for "-mean"
10. Replace "()" for ""
11. Replace "--" for "-"
12. Delete the last character if it is "-"

After these 12 replacements, the names "subject" and "activity" were added to the names vector. Finally, the variables in the dataset were named using this vector of 
size 68.

##Part 5: Creating the tidy data file

The resulting dataset from Part 4 contains 68 variables (66 festures plus the grouping variables "subject" and "activity") and 10.299 rows. This dataset was summarized
using the mean statistic, grouped by subject and activity. So, for every combination of subject and activity (180 in total), the mean of every one of the 66 features 
was calculated. 

As a result, the final tidy dataset contains 180 rows and 68 variables, with "subject" and "activity" as key. This dataset was exported as text with the name "tidy_data.txt".
NOTE: The tidy data file (tidy_data.txt) was uploaded in the Course Project page in Coursera AND in the GitHub repo. 

##Annex

At the end ot the "run_analysis.R" file, you can find auxiliary code used for creating the Code Book. 

The file "details.txt", referenced in this code, is included in the GitHub repo.
