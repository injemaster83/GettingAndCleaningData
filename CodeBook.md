---
title: "Codebook for Course Project"
author: Miguel Duarte.
date: Oct 22, 2015.
output:
  html_document:
    keep_md: yes
---

## Project Description
The objective of this project is to recognize human activity using a database with information of 30 subjects performing activities of daily living (ADL) while 
carrying a smartphone on their waist with two inertial sensors (accelerometer and gyroscope).

##Study design and data processing

###Collection of the raw data
A group of 30 volunteers between 19-48 years performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The resulting dataset has been randomly partitioned 
into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor 
acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only 
low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Notes on the original (raw) data 
The original data included information related to raw and processed inertial signals. However, only the processed information was considered to build the tidy data file.


##Creating the tidy datafile

###Guide to create the tidy data file
The tidy data file is created according to the following steps:
1. Download the file and extract it, keeping the same structure ("UCI HAR Dataset" as the main folder) 
2. Load the all text files contained in the folder as R datasets:
a. Complementary data, for labeling purposes (Features and Activity Labels).
b. Train set (Subject, X and y).
c. Test set (Subject, X and y).
3. For train and test sets, merge columns from Subject, X and y datasets.
4. Merge rows from train and test sets.
5. Clean the resultant dataset in Step 4, obtaining the final tidy data file in the desired format.

###Cleaning of the data
In order to clean the data, the first step is labeling the 561 variables. Once all variables are properly labeled, the next step is to select only the variables which are 
measures on the mean and standard deviation (66 in total), plus the variables subject and activity. After selecting the final variables, they are renamed following the tidy 
data principles and the activity variable is recoded as text. Finally, each variable contained in the dataset is summarized in a new tidy dataset using the mean function, 
grouping by subject and activity. 

For further details, please check the README file: https://github.com/injemaster83/GettingAndCleaningData/blob/master/README.md

##Description of the variables in the tiny_data.txt file
 - Dimensions of the dataset: 180 rows, 68 variables.
 - Summary of the data

Variable 1: subject

Min.   : 1.0  
1st Qu.: 8.0  
Median :15.5  
Mean   :15.5  
3rd Qu.:23.0  
Max.   :30.0  

Variable 2: activity

Length:180        
Class :character  
Mode  :character  

Variable 3: time-body-acceleration-mean-x

Min.   :0.2216  
1st Qu.:0.2712  
Median :0.2770  
Mean   :0.2743  
3rd Qu.:0.2800  
Max.   :0.3015  

Variable 4: time-body-acceleration-mean-y

Min.   :-0.040514  
1st Qu.:-0.020022  
Median :-0.017262  
Mean   :-0.017876  
3rd Qu.:-0.014936  
Max.   :-0.001308  

Variable 5: time-body-acceleration-mean-z

Min.   :-0.15251  
1st Qu.:-0.11207  
Median :-0.10819  
Mean   :-0.10916  
3rd Qu.:-0.10443  
Max.   :-0.07538  

Variable 6: time-gravity-acceleration-mean-x

Min.   :-0.6800  
1st Qu.: 0.8376  
Median : 0.9208  
Mean   : 0.6975  
3rd Qu.: 0.9425  
Max.   : 0.9745  

Variable 7: time-gravity-acceleration-mean-y

Min.   :-0.47989  
1st Qu.:-0.23319  
Median :-0.12782  
Mean   :-0.01621  
3rd Qu.: 0.08773  
Max.   : 0.95659  

Variable 8: time-gravity-acceleration-mean-z

Min.   :-0.49509  
1st Qu.:-0.11726  
Median : 0.02384  
Mean   : 0.07413  
3rd Qu.: 0.14946  
Max.   : 0.95787  

Variable 9: time-body-acceleration-jerk-mean-x

Min.   :0.04269  
1st Qu.:0.07396  
Median :0.07640  
Mean   :0.07947  
3rd Qu.:0.08330  
Max.   :0.13019  

Variable 10: time-body-acceleration-jerk-mean-y

Min.   :-0.0386872  
1st Qu.: 0.0004664  
Median : 0.0094698  
Mean   : 0.0075652  
3rd Qu.: 0.0134008  
Max.   : 0.0568186  

Variable 11: time-body-acceleration-jerk-mean-z

Min.   :-0.067458  
1st Qu.:-0.010601  
Median :-0.003861  
Mean   :-0.004953  
3rd Qu.: 0.001958  
Max.   : 0.038053  

Variable 12: time-body-angularvelocity-mean-x

Min.   :-0.20578  
1st Qu.:-0.04712  
Median :-0.02871  
Mean   :-0.03244  
3rd Qu.:-0.01676  
Max.   : 0.19270  

Variable 13: time-body-angularvelocity-mean-y

Min.   :-0.20421  
1st Qu.:-0.08955  
Median :-0.07318  
Mean   :-0.07426  
3rd Qu.:-0.06113  
Max.   : 0.02747  

Variable 14: time-body-angularvelocity-mean-z

Min.   :-0.07245  
1st Qu.: 0.07475  
Median : 0.08512  
Mean   : 0.08744  
3rd Qu.: 0.10177  
Max.   : 0.17910  

Variable 15: time-body-angularvelocity-jerk-mean-x

Min.   :-0.15721  
1st Qu.:-0.10322  
Median :-0.09868  
Mean   :-0.09606  
3rd Qu.:-0.09110  
Max.   :-0.02209  

Variable 16: time-body-angularvelocity-jerk-mean-y

Min.   :-0.07681  
1st Qu.:-0.04552  
Median :-0.04112  
Mean   :-0.04269  
3rd Qu.:-0.03842  
Max.   :-0.01320  

Variable 17: time-body-angularvelocity-jerk-mean-z

Min.   :-0.092500  
1st Qu.:-0.061725  
Median :-0.053430  
Mean   :-0.054802  
3rd Qu.:-0.048985  
Max.   :-0.006941  

Variable 18: time-body-acceleration-magnitude-mean

Min.   :-0.9865  
1st Qu.:-0.9573  
Median :-0.4829  
Mean   :-0.4973  
3rd Qu.:-0.0919  
Max.   : 0.6446  

Variable 19: time-gravity-acceleration-magnitude-mean

Min.   :-0.9865  
1st Qu.:-0.9573  
Median :-0.4829  
Mean   :-0.4973  
3rd Qu.:-0.0919  
Max.   : 0.6446  

Variable 20: time-body-acceleration-jerk-magnitude-mean

Min.   :-0.9928  
1st Qu.:-0.9807  
Median :-0.8168  
Mean   :-0.6079  
3rd Qu.:-0.2456  
Max.   : 0.4345  

Variable 21: time-body-angularvelocity-magnitude-mean

Min.   :-0.9807  
1st Qu.:-0.9461  
Median :-0.6551  
Mean   :-0.5652  
3rd Qu.:-0.2159  
Max.   : 0.4180  

Variable 22: time-body-angularvelocity-jerk-magnitude-mean

Min.   :-0.99732  
1st Qu.:-0.98515  
Median :-0.86479  
Mean   :-0.73637  
3rd Qu.:-0.51186  
Max.   : 0.08758  

Variable 23: frequency-body-acceleration-mean-x

Min.   :-0.9952  
1st Qu.:-0.9787  
Median :-0.7691  
Mean   :-0.5758  
3rd Qu.:-0.2174  
Max.   : 0.5370  

Variable 24: frequency-body-acceleration-mean-y

Min.   :-0.98903  
1st Qu.:-0.95361  
Median :-0.59498  
Mean   :-0.48873  
3rd Qu.:-0.06341  
Max.   : 0.52419  

Variable 25: frequency-body-acceleration-mean-z

Min.   :-0.9895  
1st Qu.:-0.9619  
Median :-0.7236  
Mean   :-0.6297  
3rd Qu.:-0.3183  
Max.   : 0.2807  

Variable 26: frequency-body-acceleration-jerk-mean-x

Min.   :-0.9946  
1st Qu.:-0.9828  
Median :-0.8126  
Mean   :-0.6139  
3rd Qu.:-0.2820  
Max.   : 0.4743  

Variable 27: frequency-body-acceleration-jerk-mean-y

Min.   :-0.9894  
1st Qu.:-0.9725  
Median :-0.7817  
Mean   :-0.5882  
3rd Qu.:-0.1963  
Max.   : 0.2767  

Variable 28: frequency-body-acceleration-jerk-mean-z

Min.   :-0.9920  
1st Qu.:-0.9796  
Median :-0.8707  
Mean   :-0.7144  
3rd Qu.:-0.4697  
Max.   : 0.1578  

Variable 29: frequency-body-angularvelocity-mean-x

Min.   :-0.9931  
1st Qu.:-0.9697  
Median :-0.7300  
Mean   :-0.6367  
3rd Qu.:-0.3387  
Max.   : 0.4750  

Variable 30: frequency-body-angularvelocity-mean-y

Min.   :-0.9940  
1st Qu.:-0.9700  
Median :-0.8141  
Mean   :-0.6767  
3rd Qu.:-0.4458  
Max.   : 0.3288  

Variable 31: frequency-body-angularvelocity-mean-z

Min.   :-0.9860  
1st Qu.:-0.9624  
Median :-0.7909  
Mean   :-0.6044  
3rd Qu.:-0.2635  
Max.   : 0.4924  

Variable 32: frequency-body-acceleration-magnitude-mean

Min.   :-0.9868  
1st Qu.:-0.9560  
Median :-0.6703  
Mean   :-0.5365  
3rd Qu.:-0.1622  
Max.   : 0.5866  

Variable 33: frequency-body-acceleration-jerk-magnitude-mean

Min.   :-0.9940  
1st Qu.:-0.9770  
Median :-0.7940  
Mean   :-0.5756  
3rd Qu.:-0.1872  
Max.   : 0.5384  

Variable 34: frequency-body-angularvelocity-magnitude-mean

Min.   :-0.9865  
1st Qu.:-0.9616  
Median :-0.7657  
Mean   :-0.6671  
3rd Qu.:-0.4087  
Max.   : 0.2040  

Variable 35: frequency-body-angularvelocity-jerk-magnitude-mean

Min.   :-0.9976  
1st Qu.:-0.9813  
Median :-0.8779  
Mean   :-0.7564  
3rd Qu.:-0.5831  
Max.   : 0.1466  

Variable 36: time-body-acceleration-standarddeviation-x

Min.   :-0.9961  
1st Qu.:-0.9799  
Median :-0.7526  
Mean   :-0.5577  
3rd Qu.:-0.1984  
Max.   : 0.6269  

Variable 37: time-body-acceleration-standarddeviation-y

Min.   :-0.99024  
1st Qu.:-0.94205  
Median :-0.50897  
Mean   :-0.46046  
3rd Qu.:-0.03077  
Max.   : 0.61694  

Variable 38: time-body-acceleration-standarddeviation-z

Min.   :-0.9877  
1st Qu.:-0.9498  
Median :-0.6518  
Mean   :-0.5756  
3rd Qu.:-0.2306  
Max.   : 0.6090  

Variable 39: time-gravity-acceleration-standarddeviation-x

Min.   :-0.9968  
1st Qu.:-0.9825  
Median :-0.9695  
Mean   :-0.9638  
3rd Qu.:-0.9509  
Max.   :-0.8296  

Variable 40: time-gravity-acceleration-standarddeviation-y

Min.   :-0.9942  
1st Qu.:-0.9711  
Median :-0.9590  
Mean   :-0.9524  
3rd Qu.:-0.9370  
Max.   :-0.6436  

Variable 41: time-gravity-acceleration-standarddeviation-z

Min.   :-0.9910  
1st Qu.:-0.9605  
Median :-0.9450  
Mean   :-0.9364  
3rd Qu.:-0.9180  
Max.   :-0.6102  

Variable 42: time-body-acceleration-jerk-standarddeviation-x

Min.   :-0.9946  
1st Qu.:-0.9832  
Median :-0.8104  
Mean   :-0.5949  
3rd Qu.:-0.2233  
Max.   : 0.5443  

Variable 43: time-body-acceleration-jerk-standarddeviation-y

Min.   :-0.9895  
1st Qu.:-0.9724  
Median :-0.7756  
Mean   :-0.5654  
3rd Qu.:-0.1483  
Max.   : 0.3553  

Variable 44: time-body-acceleration-jerk-standarddeviation-z

Min.   :-0.99329  
1st Qu.:-0.98266  
Median :-0.88366  
Mean   :-0.73596  
3rd Qu.:-0.51212  
Max.   : 0.03102  

Variable 45: time-body-angularvelocity-standarddeviation-x

Min.   :-0.9943  
1st Qu.:-0.9735  
Median :-0.7890  
Mean   :-0.6916  
3rd Qu.:-0.4414  
Max.   : 0.2677  

Variable 46: time-body-angularvelocity-standarddeviation-y

Min.   :-0.9942  
1st Qu.:-0.9629  
Median :-0.8017  
Mean   :-0.6533  
3rd Qu.:-0.4196  
Max.   : 0.4765  

Variable 47: time-body-angularvelocity-standarddeviation-z

Min.   :-0.9855  
1st Qu.:-0.9609  
Median :-0.8010  
Mean   :-0.6164  
3rd Qu.:-0.3106  
Max.   : 0.5649  

Variable 48: time-body-angularvelocity-jerk-standarddeviation-x

Min.   :-0.9965  
1st Qu.:-0.9800  
Median :-0.8396  
Mean   :-0.7036  
3rd Qu.:-0.4629  
Max.   : 0.1791  

Variable 49: time-body-angularvelocity-jerk-standarddeviation-y

Min.   :-0.9971  
1st Qu.:-0.9832  
Median :-0.8942  
Mean   :-0.7636  
3rd Qu.:-0.5861  
Max.   : 0.2959  

Variable 50: time-body-angularvelocity-jerk-standarddeviation-z

Min.   :-0.9954  
1st Qu.:-0.9848  
Median :-0.8610  
Mean   :-0.7096  
3rd Qu.:-0.4741  
Max.   : 0.1932  

Variable 51: time-body-acceleration-magnitude-standarddeviation

Min.   :-0.9865  
1st Qu.:-0.9430  
Median :-0.6074  
Mean   :-0.5439  
3rd Qu.:-0.2090  
Max.   : 0.4284  

Variable 52: time-gravity-acceleration-magnitude-standarddeviation

Min.   :-0.9865  
1st Qu.:-0.9430  
Median :-0.6074  
Mean   :-0.5439  
3rd Qu.:-0.2090  
Max.   : 0.4284  

Variable 53: time-body-acceleration-jerk-magnitude-standarddeviation

Min.   :-0.9946  
1st Qu.:-0.9765  
Median :-0.8014  
Mean   :-0.5842  
3rd Qu.:-0.2173  
Max.   : 0.4506  

Variable 54: time-body-angularvelocity-magnitude-standarddeviation

Min.   :-0.9814  
1st Qu.:-0.9476  
Median :-0.7420  
Mean   :-0.6304  
3rd Qu.:-0.3602  
Max.   : 0.3000  

Variable 55: time-body-angularvelocity-jerk-magnitude-standarddeviation

Min.   :-0.9977  
1st Qu.:-0.9805  
Median :-0.8809  
Mean   :-0.7550  
3rd Qu.:-0.5767  
Max.   : 0.2502  

Variable 56: frequency-body-acceleration-standarddeviation-x

Min.   :-0.9966  
1st Qu.:-0.9820  
Median :-0.7470  
Mean   :-0.5522  
3rd Qu.:-0.1966  
Max.   : 0.6585  

Variable 57: frequency-body-acceleration-standarddeviation-y

Min.   :-0.99068  
1st Qu.:-0.94042  
Median :-0.51338  
Mean   :-0.48148  
3rd Qu.:-0.07913  
Max.   : 0.56019  

Variable 58: frequency-body-acceleration-standarddeviation-z

Min.   :-0.9872  
1st Qu.:-0.9459  
Median :-0.6441  
Mean   :-0.5824  
3rd Qu.:-0.2655  
Max.   : 0.6871  

Variable 59: frequency-body-acceleration-jerk-standarddeviation-x

Min.   :-0.9951  
1st Qu.:-0.9847  
Median :-0.8254  
Mean   :-0.6121  
3rd Qu.:-0.2475  
Max.   : 0.4768  

Variable 60: frequency-body-acceleration-jerk-standarddeviation-y

Min.   :-0.9905  
1st Qu.:-0.9737  
Median :-0.7852  
Mean   :-0.5707  
3rd Qu.:-0.1685  
Max.   : 0.3498  

Variable 61: frequency-body-acceleration-jerk-standarddeviation-z

Min.   :-0.993108  
1st Qu.:-0.983747  
Median :-0.895121  
Mean   :-0.756489  
3rd Qu.:-0.543787  
Max.   :-0.006236  

Variable 62: frequency-body-angularvelocity-standarddeviation-x

Min.   :-0.9947  
1st Qu.:-0.9750  
Median :-0.8086  
Mean   :-0.7110  
3rd Qu.:-0.4813  
Max.   : 0.1966  

Variable 63: frequency-body-angularvelocity-standarddeviation-y

Min.   :-0.9944  
1st Qu.:-0.9602  
Median :-0.7964  
Mean   :-0.6454  
3rd Qu.:-0.4154  
Max.   : 0.6462  

Variable 64: frequency-body-angularvelocity-standarddeviation-z

Min.   :-0.9867  
1st Qu.:-0.9643  
Median :-0.8224  
Mean   :-0.6577  
3rd Qu.:-0.3916  
Max.   : 0.5225  

Variable 65: frequency-body-acceleration-magnitude-standarddeviation

Min.   :-0.9876  
1st Qu.:-0.9452  
Median :-0.6513  
Mean   :-0.6210  
3rd Qu.:-0.3654  
Max.   : 0.1787  

Variable 66: frequency-body-acceleration-jerk-magnitude-standarddeviation

Min.   :-0.9944  
1st Qu.:-0.9752  
Median :-0.8126  
Mean   :-0.5992  
3rd Qu.:-0.2668  
Max.   : 0.3163  

Variable 67: frequency-body-angularvelocity-magnitude-standarddeviation

Min.   :-0.9815  
1st Qu.:-0.9488  
Median :-0.7727  
Mean   :-0.6723  
3rd Qu.:-0.4277  
Max.   : 0.2367  

Variable 68: frequency-body-angularvelocity-jerk-magnitude-standarddeviation

Min.   :-0.9976  
1st Qu.:-0.9802  
Median :-0.8941  
Mean   :-0.7715  
3rd Qu.:-0.6081  
Max.   : 0.2878   

 - Variables present in the dataset
1. subject
2. activity
3. time-body-acceleration-mean-x
4. time-body-acceleration-mean-y
5. time-body-acceleration-mean-z
6. time-gravity-acceleration-mean-x
7. time-gravity-acceleration-mean-y
8. time-gravity-acceleration-mean-z
9. time-body-acceleration-jerk-mean-x
10. time-body-acceleration-jerk-mean-y
11. time-body-acceleration-jerk-mean-z
12. time-body-angularvelocity-mean-x
13. time-body-angularvelocity-mean-y
14. time-body-angularvelocity-mean-z
15. time-body-angularvelocity-jerk-mean-x
16. time-body-angularvelocity-jerk-mean-y
17. time-body-angularvelocity-jerk-mean-z
18. time-body-acceleration-magnitude-mean
19. time-gravity-acceleration-magnitude-mean
20. time-body-acceleration-jerk-magnitude-mean
21. time-body-angularvelocity-magnitude-mean
22. time-body-angularvelocity-jerk-magnitude-mean
23. frequency-body-acceleration-mean-x
24. frequency-body-acceleration-mean-y
25. frequency-body-acceleration-mean-z
26. frequency-body-acceleration-jerk-mean-x
27. frequency-body-acceleration-jerk-mean-y
28. frequency-body-acceleration-jerk-mean-z
29. frequency-body-angularvelocity-mean-x
30. frequency-body-angularvelocity-mean-y
31. frequency-body-angularvelocity-mean-z
32. frequency-body-acceleration-magnitude-mean
33. frequency-body-acceleration-jerk-magnitude-mean
34. frequency-body-angularvelocity-magnitude-mean
35. frequency-body-angularvelocity-jerk-magnitude-mean
36. time-body-acceleration-standarddeviation-x
37. time-body-acceleration-standarddeviation-y
38. time-body-acceleration-standarddeviation-z
39. time-gravity-acceleration-standarddeviation-x
40. time-gravity-acceleration-standarddeviation-y
41. time-gravity-acceleration-standarddeviation-z
42. time-body-acceleration-jerk-standarddeviation-x
43. time-body-acceleration-jerk-standarddeviation-y
44. time-body-acceleration-jerk-standarddeviation-z
45. time-body-angularvelocity-standarddeviation-x
46. time-body-angularvelocity-standarddeviation-y
47. time-body-angularvelocity-standarddeviation-z
48. time-body-angularvelocity-jerk-standarddeviation-x
49. time-body-angularvelocity-jerk-standarddeviation-y
50. time-body-angularvelocity-jerk-standarddeviation-z
51. time-body-acceleration-magnitude-standarddeviation
52. time-gravity-acceleration-magnitude-standarddeviation
53. time-body-acceleration-jerk-magnitude-standarddeviation
54. time-body-angularvelocity-magnitude-standarddeviation
55. time-body-angularvelocity-jerk-magnitude-standarddeviation
56. frequency-body-acceleration-standarddeviation-x
57. frequency-body-acceleration-standarddeviation-y
58. frequency-body-acceleration-standarddeviation-z
59. frequency-body-acceleration-jerk-standarddeviation-x
60. frequency-body-acceleration-jerk-standarddeviation-y
61. frequency-body-acceleration-jerk-standarddeviation-z
62. frequency-body-angularvelocity-standarddeviation-x
63. frequency-body-angularvelocity-standarddeviation-y
64. frequency-body-angularvelocity-standarddeviation-z
65. frequency-body-acceleration-magnitude-standarddeviation
66. frequency-body-acceleration-jerk-magnitude-standarddeviation
67. frequency-body-angularvelocity-magnitude-standarddeviation
68. frequency-body-angularvelocity-jerk-magnitude-standarddeviation

###Variable 1 (repeat this section for all variables in the dataset)

Variable 1: subject

* Class: character

* Unique values:
1 3 5 6 7
8 11 14 15 16
17 19 21 22 23
25 26 27 28 29
30 2 4 9 10
12 13 18 20 24

* Description of the variable:
Id of the subject of the experiment

* Explanation of the schema:
N/A


Variable 2: activity

* Class: character

* Unique values:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

* Description of the variable:
Activity performed by subject

* Explanation of the schema:
N/A


Variable 3: time-body-acceleration-mean-x

* Class: character

* Unique values:
0.2773308 0.2755675 0.2778423 0.2836589 0.275593
0.2746863 0.2718219 0.2719596 0.2738992 0.2760236
0.2723419 0.2739312 0.2791835 0.2788646 0.2732119
0.2789928 0.2792644 0.2768495 0.2812282 0.2719999
0.2764068 0.2764266 0.278582 0.2785028 0.2785741
0.2771287 0.2758831 0.2738878 0.2725893 0.2769808
0.2554617 0.2608199 0.2684595 0.2682294 0.2487069
0.2588802 0.2637759 0.2624211 0.2701876 0.2559861
0.2526048 0.2421188 0.2651945 0.2483915 0.2499952
0.2779954 0.2726914 0.2657703 0.2620058 0.2654231
0.2714156 0.2471648 0.2708767 0.2624365 0.2671219
0.2729703 0.2582039 0.2654012 0.2520983 0.2698811
0.2891883 0.2924235 0.2935439 0.2770453 0.2803071
0.2834841 0.2916056 0.2934221 0.2801989 0.2955868
0.2939183 0.2626881 0.301461 0.284459 0.2898974
0.2913297 0.2792846 0.2975442 0.2936421 0.2931404
0.2831906 0.2776153 0.2799653 0.2959234 0.2904016
0.2815211 0.2949076 0.2884395 0.2961444 0.2886312
0.2612376 0.2571976 0.2736941 0.2767785 0.2846746
0.2674915 0.2765902 0.2799906 0.2729034 0.2807686
0.277357 0.2738303 0.2775396 0.2735838 0.2733513
0.2785415 0.2582435 0.2739413 0.2769776 0.27718
0.2683361 0.2770874 0.2715383 0.2483267 0.2706121
0.2750072 0.2743285 0.27727 0.2780454 0.2734757
0.2789176 0.2800465 0.2825444 0.2803462 0.2827235
0.279621 0.2777156 0.2805456 0.2789158 0.2834974
0.2779425 0.2781723 0.2769522 0.2790539 0.2778993
0.2780137 0.281127 0.2795669 0.2777951 0.2779651
0.2771127 0.2779115 0.2804997 0.2823101 0.2766503
0.2774058 0.2777584 0.2784588 0.2780769 0.2803489
0.2215982 0.2755169 0.2783343 0.2486565 0.2501767
0.2612543 0.280593 0.2332754 0.2894757 0.2742272
0.2697801 0.2726537 0.2713255 0.2799597 0.274038
0.2507918 0.2716459 0.2741025 0.2759135 0.2872952
0.2810339 0.2813734 0.2635592 0.2591955 0.2802306
0.2601134 0.2767164 0.2746916 0.2395079 0.2728505

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 4: time-body-acceleration-mean-y

* Class: character

* Unique values:
-0.01738382 -0.01717678 -0.01728503 -0.01689542 -0.01865367
-0.01866289 -0.01664758 -0.02177854 -0.01708097 -0.02042869
-0.01848754 -0.01917736 -0.01816103 -0.01672136 -0.01836187
-0.01864776 -0.01542596 -0.01664788 -0.01567597 -0.01629156
-0.01758804 -0.01859492 -0.01483995 -0.0180892 -0.01702235
-0.01556093 -0.01856607 -0.01780236 -0.02119999 -0.02254464
-0.02395315 -0.03241094 -0.03252698 -0.02724254 -0.0275639
-0.02824151 -0.03031578 -0.02043882 -0.02875239 -0.01436549
-0.02286456 -0.03039866 -0.02372187 -0.02686226 -0.0323844
-0.02698635 -0.02816338 -0.02009533 -0.02794439 -0.02994653
-0.02533117 -0.02141211 -0.03198043 -0.01951011 -0.01438549
-0.02635749 -0.02773923 -0.02220607 -0.0282258 -0.02519794
-0.009918505 -0.01935541 -0.008501075 -0.01953684 -0.01663324
-0.02110587 -0.01780977 -0.02001414 -0.005630478 -0.01838986
-0.01673594 -0.01459423 -0.01731954 -0.01979994 -0.01621115
-0.02101705 -0.01262581 -0.01355645 -0.02202305 -0.01494122
-0.01743839 -0.02266142 -0.009802009 -0.02039943 -0.02000508
-0.01808427 -0.01437238 -0.01686669 -0.009641208 -0.01457303
-0.001308288 -0.003502998 -0.009900835 -0.01459116 -0.01461098
-0.006725506 -0.01491956 -0.008705655 -0.01171885 -0.01024979
-0.01415627 -0.01673926 -0.01440097 -0.01234684 -0.0133945
-0.01476968 -0.007133645 -0.01552698 -0.01854044 -0.01663068
-0.008047313 -0.01568799 -0.007163065 -0.02701678 -0.01504268
-0.0157893 -0.005877329 -0.01286913 -0.01472293 -0.01312551
-0.01613759 -0.01433766 -0.007004186 -0.01812363 -0.01457403
-0.01481131 -0.01719909 -0.01520781 -0.01835164 -0.01659997
-0.01741201 -0.01542441 -0.01670847 -0.01585632 -0.01774755
-0.01635697 -0.01666083 -0.01659324 -0.01726351 -0.01726059
-0.01701639 -0.01842083 -0.009489111 -0.0200455 -0.01554186
-0.01690025 -0.0167892 -0.01663535 -0.0180695 -0.01447853
-0.04051395 -0.01895568 -0.01830421 -0.01025292 -0.02044115
-0.02122817 -0.01765981 -0.01134247 -0.01662965 -0.01661035
-0.0168462 -0.01714269 -0.0184233 -0.01426299 -0.02165538
-0.01889437 -0.01918957 -0.01798676 -0.01675379 -0.01719655
-0.01944941 -0.01815874 -0.01500318 -0.02052682 -0.02429448
-0.01752039 -0.02044045 -0.01739377 -0.01444063 -0.01735552

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 5: time-body-acceleration-mean-z

* Class: character

* Unique values:
-0.1111481 -0.1126749 -0.1077418 -0.1103032 -0.1109122
-0.1072521 -0.1060963 -0.1067564 -0.1076218 -0.108804
-0.1097921 -0.1227367 -0.1043193 -0.1071125 -0.113383
-0.1087376 -0.108927 -0.1128223 -0.1037147 -0.1066324
-0.09862471 -0.1055004 -0.1114031 -0.1108205 -0.1090575
-0.1031611 -0.1114315 -0.1042183 -0.1135395 -0.110596
-0.097302 -0.1100649 -0.1074715 -0.1220824 -0.1437697
-0.1151221 -0.1067972 -0.1122797 -0.1169525 -0.1240745
-0.1212904 -0.1510546 -0.1254143 -0.1175509 -0.1268906
-0.1262104 -0.1219435 -0.1235304 -0.121514 -0.1180006
-0.1246975 -0.1525139 -0.1142195 -0.125219 -0.1181804
-0.1073397 -0.1257673 -0.1126559 -0.1210239 -0.1142486
-0.1075662 -0.1161398 -0.1003199 -0.1072094 -0.09693831
-0.1075981 -0.1110701 -0.09283302 -0.1105261 -0.1198737
-0.08924327 -0.1336952 -0.09816866 -0.1074158 -0.09881237
-0.1071924 -0.1064396 -0.1128377 -0.108589 -0.098134
-0.09997814 -0.1168129 -0.1067775 -0.09102788 -0.1108486
-0.1095559 -0.1019939 -0.1033908 -0.1046029 -0.1048188
-0.1045442 -0.09835792 -0.1085403 -0.1101277 -0.1224646
-0.104461 -0.1128402 -0.1004015 -0.1136613 -0.0891404
-0.1136241 -0.1087077 -0.1120579 -0.1058274 -0.1038087
-0.1091604 -0.09744487 -0.1055219 -0.1115179 -0.1104118
-0.09951545 -0.1092183 -0.1058746 -0.07537847 -0.1042532
-0.1063072 -0.09724651 -0.1119048 -0.1083696 -0.1030411
-0.1106018 -0.1016217 -0.1021711 -0.1121728 -0.09977783
-0.106115 -0.1086866 -0.1038177 -0.1059108 -0.1036577
-0.1114321 -0.1090419 -0.1104179 -0.1049674 -0.110597
-0.107353 -0.1102378 -0.1078358 -0.1065794 -0.1086591
-0.1087562 -0.1059085 -0.09615749 -0.09527475 -0.1079641
-0.105527 -0.1121241 -0.1084534 -0.1004028 -0.1082226
-0.1132036 -0.1013005 -0.1079376 -0.1331196 -0.101361
-0.1022454 -0.1087866 -0.08683333 -0.1185302 -0.1073105
-0.1070063 -0.1089815 -0.1032538 -0.1108009 -0.1042568
-0.1004288 -0.1050025 -0.1076997 -0.1083449 -0.1094621
-0.1036582 -0.1072456 -0.1106882 -0.1075497 -0.1171686
-0.1081601 -0.1043319 -0.1076989 -0.1042743 -0.1072362

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 6: time-gravity-acceleration-mean-x

* Class: character

* Unique values:
0.9352232 0.9365067 0.972625 0.9580675 0.9325665
0.9135863 0.9464685 0.802974 0.9515244 0.9259813
0.9281124 0.9352226 0.8625248 0.9360964 0.9398097
0.9374831 0.9606478 0.9447593 0.9429303 0.9623744
0.9652176 0.9130173 0.9639997 0.9518671 0.9630921
0.9668735 0.9108557 0.9238652 0.8999652 0.9597011
0.8933511 0.8835334 0.9368218 0.9136322 0.8187466
0.8603687 0.8926262 0.6882561 0.9185448 0.8268743
0.8535306 0.8294284 0.7811772 0.8894544 0.8434388
0.9276932 0.9420953 0.8680003 0.8545082 0.929259
0.9318298 0.7907174 0.9462643 0.9026478 0.931861
0.9383715 0.8476343 0.8833303 0.7770957 0.9063695
0.9318744 0.9390578 0.9566494 0.9285315 0.9306236
0.9140235 0.9417464 0.8162964 0.9323022 0.9178184
0.9288176 0.8819409 0.8726832 0.9218206 0.9237114
0.9296275 0.9467973 0.9313802 0.9292917 0.9484862
0.9580005 0.8618313 0.9477319 0.9384178 0.9398074
0.949862 0.9418756 0.9322775 0.9197266 0.9508834
0.8315099 0.901099 0.8807314 0.9336929 0.9691478
0.8324539 0.8719638 0.9390388 0.8903643 0.9424574
0.9448837 0.5813715 0.9400314 0.8393059 0.9365092
0.8656861 0.7829556 0.8394647 0.9073313 0.8915638
0.8254738 0.9404773 0.869303 0.9163245 0.7918872
0.926229 0.9255765 0.9098165 0.9244545 0.9196376
0.942952 0.9350308 0.9601887 0.945139 0.9587287
0.9576699 0.9564645 0.8753196 0.9655289 0.9415877
0.9046785 0.9440458 0.8812133 0.9540643 0.9198571
0.9297947 0.9654609 0.9653515 0.9485148 0.9745087
0.9685567 0.8969286 0.9561978 0.9613235 0.9540088
0.9573178 0.9426953 0.9475732 0.9112318 0.9664423
-0.2488818 -0.2417585 -0.4834706 -0.4767099 -0.5028143
-0.40593 -0.134832 -0.1454836 -0.1719931 -0.2067837
-0.1991331 -0.6800432 -0.1743492 -0.4184946 -0.391565
-0.4611025 -0.6213097 -0.5304346 -0.4903345 -0.3467898
-0.3447378 -0.5097542 -0.4206647 -0.5802528 -0.4530697
-0.3785921 -0.1568522 -0.2206005 -0.4724314 -0.3592925

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of gravitational acceleration in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 7: time-gravity-acceleration-mean-y

* Class: character

* Unique values:
-0.282165 -0.2619864 -0.1004403 -0.2146949 -0.159097
-0.2171022 -0.2120459 -0.2703148 -0.2339183 -0.06682465
-0.1799274 -0.2233381 -0.3709845 -0.2596449 -0.1617614
-0.1273159 -0.1339222 -0.187497 -0.2293162 -0.1273181
-0.1576738 -0.3466071 -0.08585403 -0.03143417 -0.0838277
-0.1559834 -0.2836586 -0.2543171 -0.3444439 -0.1151162
-0.3621534 -0.3828512 -0.2659426 -0.3407326 -0.2409509
-0.2913415 -0.3435769 -0.3226804 -0.314961 -0.0805926
-0.2841538 -0.3871007 -0.4323096 -0.3368269 -0.2144818
-0.2176413 -0.2461697 -0.2292787 -0.333224 -0.2271201
-0.2266473 -0.4162149 -0.2329443 -0.03779478 -0.05656703
-0.2591442 -0.3574045 -0.3166199 -0.4798948 -0.2374984
-0.2666103 -0.2288292 -0.06075783 -0.2140463 -0.1298717
-0.1876102 -0.2003219 -0.2642547 -0.1674623 -0.05848327
-0.1510771 -0.215018 -0.3566733 -0.2222152 -0.1100288
-0.07242702 -0.07990037 -0.1669388 -0.2358971 -0.0760963
-0.1267104 -0.3257801 -0.06208528 -0.03523046 -0.06461608
-0.1787022 -0.2115551 -0.2258091 -0.2774197 -0.1283267
0.2044116 0.1273034 0.1684455 0.06826287 0.006088466
0.2400951 0.2137163 -0.0364534 0.2108493 -0.08658825
-0.002814673 0.3603435 0.02152067 0.2085539 0.1217511
0.2082871 0.2231056 0.212947 -0.1125967 0.1556595
0.1145884 -0.10563 0.2116225 -0.04142582 -0.04126077
0.0830509 0.1017698 0.1298865 0.07333854 0.1822547
-0.2729838 -0.3017351 -0.03871013 -0.230251 -0.117607
-0.09046035 -0.1730827 -0.2266922 -0.1647132 -0.0578867
-0.2574868 -0.2238978 -0.3461556 -0.2264188 -0.1174014
-0.1593168 -0.1403154 -0.1885048 -0.2476562 -0.05848715
-0.1002968 -0.3700627 -0.07590091 -0.01038382 -0.04315978
-0.2188654 -0.2399431 -0.2042063 -0.3059387 -0.1452013
0.7055498 0.8370321 0.9548903 0.9565938 0.3934443
0.5899224 0.9430179 0.4853969 0.8992426 -0.01992702
0.6587921 0.7256466 0.5999927 0.6324841 0.4384341
0.6206589 0.803015 0.5678795 0.1440733 0.8075354
0.7326612 0.7525366 0.9151651 -0.1191542 -0.1392977
0.8033788 0.6564009 0.7197554 0.864883 0.7384307

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of gravitational acceleration in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 8: time-gravity-acceleration-mean-z

* Class: character

* Unique values:
-0.06810286 -0.1381079 0.002476236 0.03318888 -0.1608469
-0.1862678 0.1340532 -0.4224953 0.07573567 -0.2173512
-0.1902659 -0.08984288 -0.220948 0.02337801 -0.1607634
0.1884163 0.1087387 -0.1262109 -0.1259129 0.09557921
-0.003925564 0.08472709 0.1277641 -0.1158561 0.05492762
-0.03608429 -0.1312997 -0.06093134 -0.03513021 -0.14091
-0.07540294 -0.162944 -0.02320354 -0.0184609 -0.4035997
-0.192307 0.1466337 -0.4950887 0.08118034 -0.3790597
-0.2981715 -0.2210088 -0.309735 -0.0957979 -0.3559345
0.108231 -0.001993106 -0.2946426 -0.2652079 0.0443786
-0.02214011 -0.1958882 0.08416754 -0.2660099 0.02275277
-0.07025038 -0.2075072 -0.1061125 -0.1301176 -0.2271349
-0.06211996 -0.1023528 0.02167779 -0.003079817 -0.1549355
-0.1418179 0.1323717 -0.3925559 0.07888224 -0.2253825
-0.160963 -0.1261469 -0.1878703 0.0412988 -0.1536715
0.218796 0.1539063 -0.1400476 -0.1214773 0.09196505
0.02880817 -0.04388902 0.1487148 -0.08227617 0.04187154
-0.05610506 -0.09508203 -0.04936367 -0.02825916 -0.1401232
0.3320437 0.1390206 0.1430069 0.06952197 0.06496363
0.2638952 0.1885317 -0.09459705 0.00281566 0.08926822
-0.1358039 0.4891266 -0.05677661 0.3155515 0.06301116
0.167141 0.3143876 0.2764174 0.1354026 0.2862561
0.344766 0.1987268 0.1101205 0.0852631 0.2025346
0.08856407 0.07577739 0.1618774 0.1516791 0.1095596
0.01349058 0.02476311 0.1386384 0.01391935 -0.05165737
-0.0979392 0.1271984 -0.3381749 0.0645976 -0.1667375
-0.2026878 0.1306437 -0.2076857 0.0323825 -0.2236312
0.2011821 0.08841427 -0.005574169 -0.03858305 0.03161458
0.02430444 0.1297472 0.1668938 0.009147692 0.03469802
-0.03953828 -0.05248566 -0.04857671 0.07086553 -0.05305854
0.4458177 0.4887032 0.2636447 0.1758677 0.9075378
0.7198315 0.1126202 0.8365629 -0.03691929 0.8938845
0.7226575 0.6876239 0.788251 0.7719039 0.9187828
0.5263538 0.6145234 0.8453924 0.015757 0.5904522
0.6814592 0.6468349 0.3415313 0.957873 -0.03112162
0.2750432 0.598885 0.6054953 0.4775733 0.6838399

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of gravitational acceleration in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 9: time-body-acceleration-jerk-mean-x

* Class: character

* Unique values:
0.07404163 0.08147459 0.08458888 0.06995859 0.09014626
0.07033935 0.08297093 0.07208779 0.08977707 0.07702238
0.07731886 0.08222463 0.07822518 0.06277776 0.09873191
0.07217207 0.06523037 0.0684332 0.09311222 0.08537433
0.068869 0.06180807 0.07835291 0.07043573 0.08579438
0.0457644 0.08095902 0.07675243 0.08412343 0.0731939
0.1013727 0.0426881 0.07954435 0.07210675 0.07246499
0.08138168 0.09685617 0.0803303 0.07297243 0.07625267
0.07680442 0.08315451 0.1040342 0.08771722 0.072365
0.07400414 0.07556453 0.07347635 0.07068319 0.1063452
0.05798404 0.07445078 0.05609719 0.06922662 0.06488293
0.07286608 0.06924421 0.0812402 0.08364513 0.08623101
0.05415532 0.07256893 0.1096506 0.1036813 0.09689262
0.1189381 0.08971687 0.04286316 0.07114572 0.09078571
0.1182509 0.07309303 0.09014529 0.1015846 0.05780106
0.1106569 0.1114708 0.09362732 0.09726535 0.0636872
0.0883933 0.1100406 0.09718627 0.130193 0.1009594
0.06215003 0.1017045 0.0809044 0.06950311 0.08026198
0.07748252 0.07260984 0.07495774 0.07547216 0.06685198
0.07867138 0.07617773 0.07418788 0.07847928 0.07343467
0.07507099 0.07537471 0.07571098 0.08076873 0.07700224
0.0752087 0.07644432 0.0779039 0.07686716 0.07454381
0.07600577 0.07225644 0.07845002 0.07700501 0.07753725
0.07712777 0.07528659 0.07662289 0.07465684 0.07633185
0.07537665 0.07509006 0.07251899 0.07306996 0.07519151
0.0753739 0.07600977 0.07379337 0.07522807 0.07364389
0.0740865 0.07541204 0.07545439 0.07523229 0.07502065
0.07523373 0.07535782 0.07496998 0.07531316 0.07530525
0.07524145 0.07475886 0.07213284 0.07600321 0.08097844
0.07446318 0.0758631 0.07535395 0.07635562 0.07461774
0.08108653 0.07698111 0.08481648 0.0963482 0.0968904
0.08783269 0.07666453 0.09814038 0.07675154 0.07839603
0.07790897 0.0772318 0.08201502 0.07522022 0.08317876
0.08790717 0.08665025 0.07662686 0.07807706 0.07188612
0.07521967 0.08259725 0.09344942 0.08807345 0.07381506
0.08542954 0.07677748 0.0749985 0.0892716 0.08072123

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 10: time-body-acceleration-jerk-mean-y

* Class: character

* Unique values:
0.02827211 0.01005915 -0.01631941 -0.01648317 0.01843227
-0.006039475 0.01276825 0.02411602 0.008905886 0.009684447
0.01300985 0.01441135 0.002351976 0.03567463 0.01489559
0.003511152 0.01967121 0.001612303 0.02264866 0.02238705
0.02196565 0.01824927 0.002956024 0.02122559 0.004082488
0.01977669 0.003083645 0.02827455 -0.02106196 0.01212546
0.01948631 0.03972493 0.01401304 0.003713434 -0.0008123871
0.01412059 -0.01326253 -0.01831312 -0.004173618 0.01737293
0.03083565 0.05681859 -0.01562901 0.0367083 0.03998629
0.00925514 0.002091717 -0.01402294 0.02229854 -0.0006890192
-0.003587192 -0.009709855 0.0234019 0.001266122 0.02663143
-0.006894949 -0.001280098 0.02116547 0.006599826 -0.0150816
0.02965045 0.01097078 0.01376182 0.009876858 -0.01910611
-0.03801938 0.02522742 0.02913394 0.0151159 -0.01481145
-0.01138262 -0.03868721 -0.02139985 0.02111261 0.03750052
-0.01954166 -0.007131602 0.01598695 0.01434509 0.000621017
-0.007561108 -0.003279591 0.005637802 -0.0206866 0.01078249
-0.01192892 -0.007518682 -0.0007570694 0.004364496 -0.004473163
-0.0006191028 0.002725291 -0.002787733 2.556498e-06 0.01168634
-0.006575163 -0.0002138386 -0.00436186 -0.008984376 0.009856429
0.00560971 0.0137921 0.01210201 -0.0008427151 0.01013514
0.004854159 0.00692239 0.004670724 0.01483382 0.005985314
0.009756925 0.01169545 -0.01085822 0.009817397 0.008978755
0.01059905 -0.001123441 0.006945603 0.005974303 0.004767026
0.007975731 0.007716636 -0.002219902 0.00871884 0.006947004
0.008149517 0.0124131 0.005795662 0.006172555 0.0120768
0.006578535 0.009913383 0.01006212 0.0107287 0.01058615
0.00663214 0.008173223 0.01224333 0.009073632 0.0115105
0.01208604 0.01032918 -0.006530157 0.01306998 0.01190076
0.010048 0.007620352 0.01046987 0.01169302 0.01098397
0.003838204 0.0138041 0.007474608 -0.001145292 0.02506242
0.02332992 0.01221939 -0.008315071 0.01239843 0.01328051
0.007068671 0.01114957 0.01199437 0.004598348 0.01535144
0.02846193 0.012442 0.01264911 0.005939923 0.01169121
0.01076802 0.01225479 0.006933132 0.01156173 0.015699
0.007744083 0.01834419 0.0117019 0.001108225 0.01198195

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 11: time-body-acceleration-jerk-mean-z

* Class: character

* Unique values:
-0.004168406 -0.005622646 8.321594e-05 -0.007389312 -0.02103986
-0.0006737989 -0.01336483 0.0199723 0.0006587062 0.003608033
0.02437533 -0.03275287 -0.01018134 0.004436914 -0.001908106
-0.003350987 -0.006183058 -0.02075233 -0.007629152 0.009415473
-0.007395342 0.007895337 -0.0007676793 0.004147627 -0.01629532
0.00502587 0.00597249 0.01068509 0.006344572 -0.01164014
-0.04556254 0.02082055 -0.02559095 -0.002378166 -7.451967e-05
-0.06745839 -0.01514639 0.003441995 -0.005258799 0.03805336
0.007595338 0.0316682 -0.03601155 -0.03361697 0.01592342
-0.01169068 -0.01170893 0.006746791 0.007490817 -0.02907139
0.01615062 0.01948144 0.003402808 0.007660466 -0.05133758
0.009066628 -0.02541263 0.009358966 -0.0245421 -0.01323537
-0.01097197 -0.00202728 0.02133977 -0.009324706 -0.01603904
-0.03943562 -0.02252089 0.01049526 -0.01002129 -0.02931226
-0.009398381 -0.009552025 -0.01255511 0.0112499 -0.0009827171
-0.01133488 -0.01189114 -0.009850348 0.001239501 -0.0140643
-0.01183014 -0.02093517 -0.007291378 0.002625689 0.0001526172
0.004852624 -0.02529777 -0.01417699 -0.002534821 -0.008469159
-0.003367792 -0.004233484 0.003386096 0.006237278 0.01620041
-0.01068089 0.008334008 -0.01057445 -0.002372075 -0.01150306
-0.001554484 0.001731068 -0.0001753522 -0.01268525 -0.001488234
0.002107608 -0.00780238 -0.006112854 0.000257854 0.003167701
-0.002781618 0.007605469 -0.01215 -0.008674673 -0.004995664
-0.00204576 -0.02323972 0.00278757 0.001601349 -0.001133002
-0.00368525 -0.008071779 -0.01228122 -0.004817122 -0.01084203
0.003221533 -0.0007459162 -0.007207778 -0.006587371 -0.004763106
-0.004035996 0.001292163 -0.003320937 -0.006262917 -0.005292609
-0.006228088 -0.002194978 -0.001379503 -0.002678101 0.000332895
0.001908415 -0.008371588 -0.02118899 -0.004700786 -0.00485841
-0.007881314 -0.0007049793 -0.001816405 -0.006136819 -0.003587749
0.01083424 -0.004356259 -0.003040672 0.003288173 -0.01316539
-0.01692188 0.002776905 -0.03236015 -0.00443928 -0.001541051
-0.0001435425 -0.0009886909 -0.01390534 -0.004674387 -0.006282351
-0.03071794 -0.006147551 -0.0006855493 0.006009719 0.002415428
-0.0003741897 -0.001802649 -0.006410543 -0.007053678 0.007166896
-0.004371484 -0.009883897 -0.001213448 -0.003098918 -0.005892258

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 12: time-body-angularvelocity-mean-x

* Class: character

* Unique values:
-0.04183096 -0.02564052 -0.04889199 -0.02550962 0.002288352
0.02350882 -0.0426929 -0.003476551 -0.05548838 -0.01517219
-0.009222655 -0.0274971 -0.04593234 0.0007771571 -0.06311569
-0.01563054 -0.003340859 -0.08558836 -0.1058962 -0.007956682
-0.04595054 -0.05302582 -0.03179826 -0.08083606 0.0106895
-0.1045137 -0.01742076 -0.03993997 -0.02341042 -0.05451269
0.05054938 0.07219803 0.03951911 -0.07674068 -0.1387781
0.1927045 -0.08209097 0.08138417 0.090334 0.07184089
-0.03042506 0.03885371 0.06260869 0.1349788 0.09579402
0.05561219 -0.02479508 -0.09403449 -0.129363 0.09319895
-0.003559746 -0.05769126 0.03938252 -0.1639672 0.07334472
-0.09312341 -0.1382938 -0.04706839 0.06591933 0.08831638
-0.03507819 -0.1315733 -0.06829457 -0.09608374 -0.1054096
-0.1211896 -0.1250687 -0.01470797 -0.1366187 -0.02253734
0.06777284 -0.2057754 -0.126388 -0.07796112 -0.05782302
0.002991129 -0.01075221 -0.1598266 -0.1410963 -0.03741261
-0.07455913 -0.1159474 -0.1028388 -0.0916383 -0.1248396
-0.1125316 -0.1226722 -0.05765487 -0.1113677 -0.0867069
-0.04535006 -0.03853652 -0.04223552 -0.03724423 -0.04963797
-0.0547397 -0.03999849 -0.04404033 -0.03771111 -0.0412014
-0.04254916 -0.02141513 -0.01987128 -0.03604307 -0.04725835
-0.03520521 -0.03702174 -0.03718308 -0.0339018 -0.03792711
-0.03584265 -0.04547066 -0.04944351 -0.04232888 -0.04324322
-0.04241592 -0.03551249 -0.0333057 -0.03640593 -0.03562296
-0.02398773 -0.02466261 -0.03227119 -0.02825191 -0.02915822
-0.0219672 -0.02931415 -0.02208865 -0.02624336 -0.02993373
-0.02695769 -0.02509057 -0.01917319 -0.02752018 -0.03273977
-0.02479468 -0.02453458 -0.02673165 -0.02532815 -0.02760756
-0.02761385 -0.02386239 -0.03064493 -0.02918314 -0.02818543
-0.03000304 -0.02954922 -0.02658732 -0.0241335 -0.02786115
-0.01655309 -0.02081705 -0.0218935 -0.007960503 -0.002826419
0.005353612 -0.01917438 0.005052212 -0.01683009 -0.01615454
-0.02347565 -0.03120727 -0.03051262 -0.02083114 -0.01133997
0.003727235 -0.01706562 -0.01954273 -0.01736771 -0.0258281
-0.02678122 -0.01847661 -0.009231563 -0.01363204 -0.01955594
-0.01465468 -0.0097361 -0.02517618 -0.02317606 -0.01436799

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 13: time-body-angularvelocity-mean-y

* Class: character

* Unique values:
-0.06953005 -0.07791509 -0.06901352 -0.07444625 -0.08371137
-0.09579179 -0.0705105 -0.08296828 -0.06124279 -0.06959557
-0.08397733 -0.07515693 -0.05902944 -0.09608807 -0.06401979
-0.08207681 -0.08415077 -0.03653482 -0.01728222 -0.08196015
-0.06491709 -0.04823823 -0.07269053 -0.06255987 -0.08195408
-0.03442911 -0.07984725 -0.06137274 -0.07410505 -0.06584359
-0.16617 -0.1392754 -0.1171956 -0.0518982 -0.00247162
-0.2042054 -0.05669288 -0.1234996 -0.1547213 -0.04861368
-0.05484559 -0.1345143 -0.1556224 -0.1814584 -0.1115644
-0.1094377 -0.06576018 0.002124994 0.0212251 -0.1523281
-0.07796065 -0.03208831 -0.08594717 -0.04125879 -0.09546002
-0.04113145 0.003819669 -0.05261338 -0.174651 -0.1059329
-0.09093713 -0.0139358 -0.0707806 -0.03417822 -0.04971746
-0.05007602 -0.02627753 -0.09452884 -0.03467557 -0.06826479
-0.1235172 0.02747076 0.01621453 -0.06971545 -0.08530775
-0.1011151 -0.1003822 -0.01631316 0.007105643 -0.08510459
-0.06931124 -0.004823292 -0.0704026 -0.07125988 -0.1067425
-0.04273367 -0.02372057 -0.06362143 0.01390234 -0.05423002
-0.09192415 -0.075241 -0.08354841 -0.08990833 -0.03361196
-0.09550892 -0.07552845 -0.07134783 -0.08034288 -0.05745254
-0.06692459 -0.05202079 -0.06530775 -0.07936174 -0.06843256
-0.07480027 -0.08406485 -0.07973456 -0.06739439 -0.07557977
-0.07435356 -0.05992868 -0.08943006 -0.04142712 -0.06799936
-0.07519804 -0.09026874 -0.06857963 -0.06506893 -0.07501327
-0.05939722 -0.05851019 -0.05098751 -0.05898236 -0.07743364
-0.02801176 -0.0765465 -0.05581088 -0.06596375 -0.06866773
-0.07706321 -0.06314298 -0.07381159 -0.06900677 -0.06522648
-0.06988769 -0.07313858 -0.06750712 -0.07390016 -0.07210607
-0.06703344 -0.08203966 -0.06182485 -0.06081016 -0.08768205
-0.07000838 -0.07532052 -0.07322601 -0.06983089 -0.06925467
-0.06448612 -0.07185072 -0.07987096 -0.1072183 -0.1336057
-0.08913741 -0.04155999 -0.1534238 -0.06197009 -0.1136751
-0.09445802 -0.0952628 -0.1138005 -0.09257231 -0.1050529
-0.07164017 -0.09032292 -0.09578396 -0.09744873 -0.07618144
-0.07614764 -0.1118008 -0.09301282 -0.1589029 -0.07703257
-0.08355374 -0.09662507 -0.08375873 -0.09548996 -0.09555381

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 14: time-body-angularvelocity-mean-z

* Class: character

* Unique values:
0.08494482 0.08134859 0.08154355 0.08388088 0.06411046
0.05096579 0.08437445 0.05132227 0.08424849 0.08186507
0.07571327 0.0798107 0.09837159 0.07752666 0.1077005
0.08678687 0.08510692 0.1182678 0.1160659 0.08568522
0.08395682 0.08283366 0.08056772 0.1116298 0.09866957
0.09997391 0.07842056 0.09447184 0.08513599 0.09720063
0.05835955 0.02156037 0.04244428 0.0664234 0.1392171
-0.0724546 0.06380544 -0.04413819 0.09116815 -0.00779288
0.05609314 -0.0002332482 -0.005468298 0.01573592 -0.03255575
0.09962274 0.0721459 0.1401299 0.103721 0.08543181
0.08146993 0.0688374 0.08437538 0.1456946 0.08796642
0.08980228 0.1166796 0.09067365 0.05870194 0.02482907
0.09008501 0.1238267 0.080656 0.08700126 0.1168948
0.1141439 0.05752446 0.03533445 0.07117582 0.08353801
0.01628787 0.1639625 0.14861 0.05007088 0.09536025
0.09807502 0.0822214 0.152695 0.1386224 0.08222441
0.08957678 0.09717381 0.05926395 0.1168044 0.07244337
0.0895435 0.1112842 0.09874717 0.1039005 0.1119737
0.06293138 0.0940114 0.08239345 0.0854346 0.02594767
0.07160488 0.07617394 0.09285236 0.09519781 0.07957363
0.08600538 0.09689807 0.0831326 0.08044268 0.06456732
0.08527839 0.07111095 0.08337528 0.0870254 0.0580496
0.07020026 0.04122775 0.1011503 0.08079193 0.07459589
0.07284622 0.0823432 0.08481405 0.06428821 0.08004402
0.07480075 0.06652621 0.06909458 0.07673947 0.0851045
0.06368891 0.08105882 0.07904759 0.07619467 0.08673427
0.08805619 0.07105202 0.08648633 0.07334666 0.0816889
0.08526854 0.07767068 0.07168415 0.08651731 0.08275838
0.08025148 0.08783517 0.07556364 0.09924093 0.1032516
0.07425682 0.08547125 0.08431907 0.07736714 0.07712461
0.1486894 0.1379996 0.1598944 0.1791021 0.15592
0.1381883 0.152019 0.1491241 0.1134519 0.09662103
0.1114405 0.1086051 0.09809065 0.1450039 0.1110786
0.1397187 0.1524363 0.1187384 0.09357912 0.127412
0.09384722 0.1448828 0.1697204 0.101275 0.1047205
0.1451918 0.1178196 0.09377819 0.1236802 0.1117307

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 15: time-body-angularvelocity-jerk-mean-x

* Class: character

* Unique values:
-0.08999754 -0.09523982 -0.08884084 -0.08788911 -0.1236542
-0.1358864 -0.09182042 -0.1106561 -0.07766928 -0.1109173
-0.1099592 -0.08323533 -0.08687677 -0.1329776 -0.05781282
-0.1023773 -0.09941146 -0.07861635 -0.09297467 -0.1068883
-0.08738399 -0.08188334 -0.1153216 -0.08092041 -0.1227096
-0.06223893 -0.09665986 -0.09664353 -0.06799924 -0.06253117
-0.1222328 -0.1155106 -0.1430297 -0.06520245 -0.08566409
-0.1554457 -0.06452454 -0.1282667 -0.144486 -0.1409083
-0.1426554 -0.1018063 -0.1443515 -0.1484501 -0.1099131
-0.1264812 -0.09755902 -0.09375187 -0.08056806 -0.1304291
-0.1084143 -0.0828858 -0.1314721 -0.06846896 -0.1572125
-0.04556389 -0.06648172 -0.0899953 -0.1483892 -0.1468008
-0.0739592 -0.07787017 -0.110149 -0.02564522 -0.05972735
-0.03492835 -0.02209163 -0.1086204 -0.04825321 -0.103904
-0.10777 -0.03374296 -0.07264618 -0.09017445 -0.1177258
-0.1279524 -0.09924653 -0.05158148 -0.0266493 -0.07439865
-0.06159546 -0.05810385 -0.09212827 -0.0945912 -0.0643764
-0.0264669 -0.06471998 -0.08365666 -0.04525031 -0.0914145
-0.09367938 -0.1036059 -0.08897477 -0.09366935 -0.09381556
-0.09231503 -0.09484235 -0.09216146 -0.09536491 -0.09572045
-0.0942477 -0.1009861 -0.1011148 -0.09864932 -0.09674222
-0.09548014 -0.09598482 -0.09516358 -0.09539351 -0.0953637
-0.09527077 -0.09363284 -0.09694948 -0.09307081 -0.0931555
-0.09410235 -0.09591985 -0.09547232 -0.09599708 -0.09517827
-0.09960921 -0.09946026 -0.09222499 -0.1032925 -0.09015397
-0.09775758 -0.09951936 -0.1007185 -0.1013588 -0.1001073
-0.1012892 -0.09904679 -0.1031998 -0.09750135 -0.09814811
-0.1004737 -0.100356 -0.09876051 -0.1022484 -0.09887015
-0.09971602 -0.1055622 -0.1030579 -0.0958977 -0.1047538
-0.09763804 -0.09812 -0.0987174 -0.1020491 -0.09919477
-0.1072709 -0.1000445 -0.1021141 -0.1112673 -0.1059442
-0.106445 -0.1022975 -0.1054466 -0.1022667 -0.1022096
-0.1020498 -0.09560183 -0.09641184 -0.1002039 -0.1020249
-0.101647 -0.1003686 -0.1011477 -0.1045116 -0.09953399
-0.1022774 -0.1019741 -0.1050199 -0.1038467 -0.1003083
-0.09904023 -0.1018356 -0.09971542 -0.09950331 -0.1028138

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity jerk in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 16: time-body-angularvelocity-jerk-mean-y

* Class: character

* Unique values:
-0.03984287 -0.03878747 -0.04495595 -0.0362309 -0.0447766
-0.03148809 -0.05141725 -0.04389695 -0.05525366 -0.04338768
-0.03792513 -0.03071284 -0.05156503 -0.03219107 -0.05167048
-0.03989865 -0.04565383 -0.04769744 -0.05153944 -0.04798981
-0.06170289 -0.05382994 -0.03934745 -0.03562834 -0.0519205
-0.0498526 -0.03198493 -0.04337711 -0.05141758 -0.0502895
-0.04214859 -0.04003725 -0.05598958 -0.04577054 -0.04822191
-0.02791958 -0.07198347 -0.02077497 -0.03654192 -0.02962113
-0.04144963 -0.03462885 -0.01320228 -0.03813126 -0.05239438
-0.0281453 -0.03862441 -0.05092352 -0.04925521 -0.05110351
-0.01411134 -0.04240537 -0.03905088 -0.03027975 -0.03723485
-0.03354066 -0.0453052 -0.05274726 -0.01898163 -0.03173506
-0.04399028 -0.03915679 -0.07082966 -0.07680899 -0.03819043
-0.05349697 -0.0520273 -0.07405898 -0.04954155 -0.05676866
-0.03817024 -0.03946126 -0.07359522 -0.03551714 -0.03528916
-0.04152033 -0.03726811 -0.06420236 -0.05704109 -0.06714823
-0.04968076 -0.04214703 -0.03484349 -0.05976083 -0.04893781
-0.06091772 -0.06694141 -0.05091203 -0.05773715 -0.02917663
-0.04021181 -0.03609099 -0.0454703 -0.03339867 -0.03964449
-0.04026738 -0.0392813 -0.04345773 -0.03960688 -0.04503693
-0.04111342 -0.04251702 -0.03914834 -0.04234098 -0.04346026
-0.03916514 -0.04030702 -0.03964108 -0.04080078 -0.04000184
-0.04079306 -0.0415602 -0.04184839 -0.04666344 -0.04112165
-0.03874775 -0.04103669 -0.03971256 -0.04072992 -0.04061694
-0.04406279 -0.04724158 -0.03991082 -0.04288283 -0.04127976
-0.04851907 -0.03959921 -0.04500968 -0.04385075 -0.04249822
-0.04045188 -0.04229185 -0.04043008 -0.04209987 -0.04167742
-0.04182946 -0.0409012 -0.04174718 -0.04313647 -0.04051106
-0.04377597 -0.04224195 -0.04612572 -0.04191996 -0.0371593
-0.04095208 -0.04128726 -0.04065734 -0.04321524 -0.04317386
-0.04151729 -0.03897718 -0.04044469 -0.04241043 -0.03588974
-0.03897352 -0.04123914 -0.03726774 -0.0415879 -0.03477353
-0.03619611 -0.03714766 -0.03462751 -0.03760873 -0.03724498
-0.04267189 -0.03966827 -0.03621862 -0.035601 -0.03867683
-0.03848759 -0.03585902 -0.03812304 -0.02755226 -0.03887979
-0.04106753 -0.0417744 -0.03934402 -0.0387763 -0.03823237

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity jerk in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 17: time-body-angularvelocity-jerk-mean-z

* Class: character

* Unique values:
-0.04613093 -0.05036161 -0.04826796 -0.05395973 -0.04957131
-0.0522684 -0.03426775 -0.03888259 -0.05109765 -0.05329867
-0.05138072 -0.0603092 -0.06211921 -0.05698125 -0.09030025
-0.05126962 -0.04922405 -0.06502476 -0.05935525 -0.0392369
-0.04460072 -0.05149392 -0.05511669 -0.06334066 -0.06112629
-0.04673382 -0.06366932 -0.05026316 -0.05492737 -0.07398355
-0.04071255 -0.04981809 -0.05348954 -0.05768 -0.07245175
-0.05340904 -0.04607615 -0.01372376 -0.07672425 -0.0354163
-0.02234821 -0.05335459 -0.006940664 -0.06745705 -0.09249985
-0.05404522 -0.05955584 -0.06290137 -0.07526104 -0.06809388
-0.03641578 -0.04451575 -0.07224963 -0.02363279 -0.03650217
-0.06531673 -0.06616539 -0.06925362 -0.05189855 -0.04984272
-0.02704611 -0.04161931 -0.03996569 -0.03722287 -0.07894693
-0.08679033 -0.03730484 -0.06159788 -0.03392131 -0.06121369
-0.05825188 -0.05455656 -0.07884365 -0.04814602 -0.0293255
-0.06420781 -0.05105874 -0.06210437 -0.07761739 -0.03596484
-0.05435952 -0.07102298 -0.04928364 -0.06780806 -0.07204131
-0.065324 -0.05120205 -0.05705918 -0.06153128 -0.04120554
-0.04670263 -0.059008 -0.04877147 -0.04655043 -0.04545663
-0.04457322 -0.05053955 -0.05201216 -0.05241483 -0.05883713
-0.05109032 -0.05908017 -0.05264099 -0.0517194 -0.04855611
-0.04955956 -0.04876272 -0.05038836 -0.05790154 -0.0470009
-0.04882046 -0.0435851 -0.04899644 -0.05284149 -0.04894119
-0.05156341 -0.04661216 -0.05230304 -0.04658351 -0.05159666
-0.04895055 -0.04168322 -0.04222213 -0.05064322 -0.054539
-0.04784832 -0.05247328 -0.05090362 -0.0522784 -0.05443353
-0.05463313 -0.05237699 -0.05382117 -0.05131792 -0.05482263
-0.05569791 -0.05325419 -0.05140392 -0.05258963 -0.05449263
-0.05203072 -0.05465395 -0.04907535 -0.05757431 -0.05841625
-0.04828637 -0.05392608 -0.05323845 -0.05181522 -0.05171804
-0.07405012 -0.06873387 -0.07083097 -0.07177747 -0.06719018
-0.06941232 -0.06669575 -0.05661719 -0.06243346 -0.05767904
-0.0604927 -0.05991615 -0.06013987 -0.07027236 -0.06219916
-0.05969221 -0.07115334 -0.06427978 -0.05345019 -0.06744697
-0.05957368 -0.0701783 -0.07121563 -0.05694905 -0.05907449
-0.0678909 -0.06487704 -0.0593136 -0.06100283 -0.0624117

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity jerk in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 18: time-body-acceleration-magnitude-mean

* Class: character

* Unique values:
-0.1369712 -0.2546903 -0.1583387 -0.1668407 -0.09780904
0.05167863 -0.2883235 -0.1444047 -0.1865147 -0.2587667
-0.1511515 0.06481734 -0.1234557 0.07224191 -0.09887702
-0.4052894 -0.2233992 -0.2388539 -0.180666 -0.09552134
-0.19514 -0.2904076 -0.3120506 -0.09808405 -0.1274009
-0.1022046 -0.1356439 -0.2879081 0.03940228 -0.2999836
-0.1299276 -0.1840149 0.0435562 0.0177791 -0.1980744
0.1210266 -0.1325946 0.1401082 -0.0009713947 -0.2339903
-0.01280623 0.01738119 -0.08104532 0.2102826 -0.01175369
-0.3057722 -0.1428745 -0.1605894 -0.1862405 0.008343603
-0.1376279 -0.1073227 -0.1537039 -0.2607276 -0.02666233
-0.2291839 -0.1011535 -0.2791463 0.008725025 -0.2264028
0.02718829 -0.06281261 0.2111389 0.3337547 0.01987953
0.1765993 0.1262277 0.1855377 0.3204494 0.1910798
0.1489511 0.6446043 0.2457717 0.3309992 0.1272111
-0.2201086 0.1143794 0.1080714 0.1043592 0.1037052
-0.03739011 0.08995112 -0.04916167 0.1458864 0.2508438
0.01831394 -0.02946343 -0.293532 0.2218516 -0.07376992
-0.9485368 -0.8953834 -0.9379783 -0.9495435 -0.9184321
-0.9521397 -0.9619708 -0.9441979 -0.9586698 -0.9618797
-0.9727473 -0.9620741 -0.974735 -0.9421674 -0.9440808
-0.9704093 -0.95308 -0.9794817 -0.9557897 -0.978017
-0.9574872 -0.9678936 -0.9356948 -0.8933617 -0.9607572
-0.9521766 -0.9576906 -0.9836742 -0.952738 -0.9689792
-0.9842782 -0.9254308 -0.9061047 -0.9450229 -0.9427247
-0.9537629 -0.9848538 -0.9434568 -0.9612076 -0.9699488
-0.977636 -0.9605057 -0.9587743 -0.9548077 -0.9572123
-0.9726636 -0.9685117 -0.9727533 -0.9254717 -0.9847453
-0.9305736 -0.9658752 -0.9064781 -0.9451675 -0.9519889
-0.9414599 -0.9715642 -0.9726075 -0.9224069 -0.950061
-0.8419292 -0.9727913 -0.9667779 -0.9188789 -0.936392
-0.9353086 -0.9806212 -0.9059783 -0.9553407 -0.9618346
-0.9530214 -0.9662608 -0.9525966 -0.9349938 -0.9629592
-0.5604778 -0.976785 -0.9820917 -0.9581122 -0.9864932
-0.96983 -0.9774355 -0.9545576 -0.9308684 -0.9567818
-0.9482047 -0.9605178 -0.9864562 -0.9607431 -0.971854

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation).


Variable 19: time-gravity-acceleration-magnitude-mean

* Class: character

* Unique values:
-0.1369712 -0.2546903 -0.1583387 -0.1668407 -0.09780904
0.05167863 -0.2883235 -0.1444047 -0.1865147 -0.2587667
-0.1511515 0.06481734 -0.1234557 0.07224191 -0.09887702
-0.4052894 -0.2233992 -0.2388539 -0.180666 -0.09552134
-0.19514 -0.2904076 -0.3120506 -0.09808405 -0.1274009
-0.1022046 -0.1356439 -0.2879081 0.03940228 -0.2999836
-0.1299276 -0.1840149 0.0435562 0.0177791 -0.1980744
0.1210266 -0.1325946 0.1401082 -0.0009713947 -0.2339903
-0.01280623 0.01738119 -0.08104532 0.2102826 -0.01175369
-0.3057722 -0.1428745 -0.1605894 -0.1862405 0.008343603
-0.1376279 -0.1073227 -0.1537039 -0.2607276 -0.02666233
-0.2291839 -0.1011535 -0.2791463 0.008725025 -0.2264028
0.02718829 -0.06281261 0.2111389 0.3337547 0.01987953
0.1765993 0.1262277 0.1855377 0.3204494 0.1910798
0.1489511 0.6446043 0.2457717 0.3309992 0.1272111
-0.2201086 0.1143794 0.1080714 0.1043592 0.1037052
-0.03739011 0.08995112 -0.04916167 0.1458864 0.2508438
0.01831394 -0.02946343 -0.293532 0.2218516 -0.07376992
-0.9485368 -0.8953834 -0.9379783 -0.9495435 -0.9184321
-0.9521397 -0.9619708 -0.9441979 -0.9586698 -0.9618797
-0.9727473 -0.9620741 -0.974735 -0.9421674 -0.9440808
-0.9704093 -0.95308 -0.9794817 -0.9557897 -0.978017
-0.9574872 -0.9678936 -0.9356948 -0.8933617 -0.9607572
-0.9521766 -0.9576906 -0.9836742 -0.952738 -0.9689792
-0.9842782 -0.9254308 -0.9061047 -0.9450229 -0.9427247
-0.9537629 -0.9848538 -0.9434568 -0.9612076 -0.9699488
-0.977636 -0.9605057 -0.9587743 -0.9548077 -0.9572123
-0.9726636 -0.9685117 -0.9727533 -0.9254717 -0.9847453
-0.9305736 -0.9658752 -0.9064781 -0.9451675 -0.9519889
-0.9414599 -0.9715642 -0.9726075 -0.9224069 -0.950061
-0.8419292 -0.9727913 -0.9667779 -0.9188789 -0.936392
-0.9353086 -0.9806212 -0.9059783 -0.9553407 -0.9618346
-0.9530214 -0.9662608 -0.9525966 -0.9349938 -0.9629592
-0.5604778 -0.976785 -0.9820917 -0.9581122 -0.9864932
-0.96983 -0.9774355 -0.9545576 -0.9308684 -0.9567818
-0.9482047 -0.9605178 -0.9864562 -0.9607431 -0.971854

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial gravitational acceleration in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation).


Variable 20: time-body-acceleration-jerk-magnitude-mean

* Class: character

* Unique values:
-0.1414288 -0.2800093 -0.288333 -0.195117 -0.1929489
-0.06683224 -0.4023332 -0.3772932 -0.3201293 -0.3631445
-0.3010933 0.109451 -0.148139 0.02291997 -0.06708197
-0.5382914 -0.290758 -0.2305005 -0.2992234 -0.2402317
-0.3521117 -0.2814242 -0.3667009 -0.2037336 -0.132625
-0.1440649 -0.133205 -0.3792693 -0.04293593 -0.3997222
-0.4665034 -0.4369012 -0.2474035 -0.2073798 -0.4586952
-0.1414946 -0.5095877 -0.2836638 -0.3160504 -0.483219
-0.3572339 -0.1141896 -0.3550477 -0.09578403 -0.3111439
-0.6791608 -0.4044639 -0.4790674 -0.3880862 -0.3443248
-0.5966001 -0.3212689 -0.4009223 -0.4406675 -0.262038
-0.4324693 -0.4561905 -0.6014639 -0.2556112 -0.4884876
-0.08944748 -0.2052392 -0.06375286 0.1038451 -0.1703196
0.2626285 -0.1982061 0.03536014 -0.03726661 -0.1659088
-0.2216317 0.4344904 -0.08022418 -0.01797846 0.1129825
-0.5004833 -0.1488563 -0.1154212 -0.07075603 -0.1386376
-0.2937388 0.005655163 -0.2288514 -0.1623761 0.05070102
-0.107091 -0.1279261 -0.466516 -0.06126998 -0.2631069
-0.9873642 -0.9690808 -0.9693202 -0.9627335 -0.9765597
-0.9860615 -0.9793556 -0.976521 -0.9861078 -0.9874727
-0.9928147 -0.986424 -0.9859472 -0.9793037 -0.9823755
-0.9895451 -0.9908984 -0.9894672 -0.9732744 -0.9907198
-0.9877991 -0.9867747 -0.9701323 -0.9643838 -0.9880542
-0.9747345 -0.9894978 -0.9898696 -0.9787746 -0.9855558
-0.9923678 -0.9593038 -0.9568636 -0.9671024 -0.9733813
-0.9849208 -0.9892424 -0.9729658 -0.9814951 -0.9892052
-0.9917428 -0.9830689 -0.9747652 -0.975876 -0.9786715
-0.9846471 -0.9869852 -0.9853476 -0.959552 -0.9907854
-0.9712252 -0.9804891 -0.9633707 -0.9695246 -0.9651638
-0.9687907 -0.9868 -0.9859653 -0.9566249 -0.977621
-0.9543963 -0.9794846 -0.9801413 -0.9547505 -0.9801272
-0.9731475 -0.9833306 -0.9725764 -0.9798902 -0.9883497
-0.9816076 -0.9847843 -0.9828003 -0.9711698 -0.9870102
-0.9621614 -0.9899706 -0.9883728 -0.9784553 -0.9927254
-0.9792328 -0.9877417 -0.9700958 -0.9633745 -0.9762344
-0.9698438 -0.9854679 -0.9883215 -0.9846701 -0.9855293

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration jerk in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation).


Variable 21: time-body-angularvelocity-magnitude-mean

* Class: character

* Unique values:
-0.1609796 -0.4664118 -0.3559331 -0.2812078 -0.3059594
-0.003102438 -0.4218017 -0.1372087 -0.2437111 -0.4859319
-0.3350098 0.1000451 -0.2847756 -0.210608 -0.01209683
-0.3943624 -0.392092 -0.3966388 -0.3107759 -0.2805733
-0.02296408 -0.4465491 -0.4977922 -0.2945423 -0.1564587
-0.3559304 -0.2186696 -0.5004711 0.06862751 -0.4030642
-0.1267356 -0.3473218 -0.2355169 -0.1291212 -0.2390992
0.166448 -0.2550483 0.3657794 -0.2012173 -0.3082606
-0.2351912 -0.06161577 -0.1689827 -0.1280319 -0.1565271
-0.3186347 -0.344427 -0.2861457 -0.2634153 0.04396277
-0.1136084 -0.2197135 -0.2997794 -0.08332345 0.04385738
-0.3165616 -0.237183 -0.3691086 0.02233025 -0.3344358
-0.07574125 -0.2152945 -0.2180298 0.01426778 -0.1887408
0.09934297 -0.1978834 0.16634 -0.1216863 -0.3098204
-0.2326418 0.4180046 -0.18485 -0.1613333 0.03909155
-0.2160826 -0.2353146 -0.1647832 -0.06824632 -0.1229681
-0.09553732 -0.1621886 -0.3466063 -0.1689214 -0.0238468
-0.2133515 -0.1021145 -0.3810228 0.09384194 -0.3049658
-0.9308925 -0.9193544 -0.9343016 -0.9327038 -0.8978705
-0.9326822 -0.9518845 -0.9427564 -0.9573316 -0.9464174
-0.9671777 -0.942229 -0.9649711 -0.9420774 -0.9365934
-0.9665687 -0.9540529 -0.9635655 -0.9551756 -0.9623773
-0.9558473 -0.9460351 -0.9260633 -0.9032355 -0.944202
-0.9419072 -0.9511426 -0.977635 -0.9395744 -0.9646333
-0.9764938 -0.8920893 -0.9006716 -0.9394047 -0.9434256
-0.9528485 -0.979978 -0.94353 -0.9469614 -0.9725282
-0.9781846 -0.941745 -0.9498372 -0.9316243 -0.9384303
-0.9670774 -0.968674 -0.968703 -0.8942425 -0.9806573
-0.9138906 -0.9634663 -0.9009821 -0.9210302 -0.9297873
-0.8881014 -0.9578254 -0.9630068 -0.883675 -0.9545186
-0.8747595 -0.9515648 -0.9469383 -0.9089802 -0.9157936
-0.9242533 -0.9525238 -0.9046654 -0.9446051 -0.9517771
-0.9607331 -0.9532634 -0.9492789 -0.9266164 -0.949418
-0.8096885 -0.9518636 -0.9669176 -0.9371069 -0.9719236
-0.9622849 -0.9500116 -0.9302365 -0.9071251 -0.937591
-0.9308406 -0.9443031 -0.9807408 -0.9604474 -0.9537915

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial angular velocity in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation).


Variable 22: time-body-angularvelocity-jerk-magnitude-mean

* Class: character

* Unique values:
-0.2987037 -0.5661352 -0.4445325 -0.3212905 -0.3000228
-0.3391293 -0.6307327 -0.519895 -0.5439795 -0.6715418
-0.5171674 -0.1647 -0.4269307 -0.4619995 0.01153054
-0.6784661 -0.5123988 -0.5625872 -0.5462488 -0.5062421
-0.4720687 -0.547912 -0.681304 -0.510254 -0.4403636
-0.5174938 -0.3035082 -0.6364859 -0.1948933 -0.5078247
-0.5948829 -0.6588614 -0.4734882 -0.3428954 -0.6619698
-0.400664 -0.7573148 -0.3999219 -0.6636371 -0.7377052
-0.6373675 -0.3727905 -0.5779356 -0.5681119 -0.5043672
-0.777106 -0.6480999 -0.6998951 -0.6202798 -0.6173408
-0.7187803 -0.5728164 -0.6869784 -0.6728406 -0.523463
-0.6749721 -0.6319649 -0.7816527 -0.3719284 -0.6587516
-0.2954638 -0.5085676 -0.3971956 -0.08293669 -0.39923
-0.1261891 -0.5992948 -0.2751209 -0.5094666 -0.5908966
-0.5403258 0.08758166 -0.4528287 -0.4595797 -0.04631178
-0.6647136 -0.4187798 -0.4405466 -0.3404173 -0.5391745
-0.574337 -0.4108727 -0.592843 -0.4690284 -0.4018543
-0.4428311 -0.3235524 -0.7016631 -0.2681834 -0.4971522
-0.9919763 -0.9779981 -0.9738483 -0.9629292 -0.9816651
-0.9918074 -0.989519 -0.9883176 -0.9921889 -0.9924446
-0.9963348 -0.9894503 -0.9903073 -0.985476 -0.9865141
-0.9928647 -0.9944664 -0.9940347 -0.9812132 -0.9953923
-0.9937374 -0.9910815 -0.9804905 -0.9733641 -0.9937075
-0.9803923 -0.9926043 -0.9948734 -0.9830103 -0.9913064
-0.9949668 -0.9623393 -0.9584059 -0.9634062 -0.9773771
-0.9875806 -0.9934282 -0.9748733 -0.9844071 -0.9928486
-0.993673 -0.9858016 -0.9768571 -0.9786035 -0.9763993
-0.985092 -0.9885448 -0.9895321 -0.959681 -0.9921447
-0.9729953 -0.9839519 -0.9676141 -0.969824 -0.9716377
-0.96929 -0.9836376 -0.988686 -0.9479365 -0.9823873
-0.963461 -0.9867136 -0.9864194 -0.9556457 -0.9830088
-0.9784382 -0.9906412 -0.9756212 -0.983235 -0.9908395
-0.9855424 -0.9853425 -0.9859159 -0.9817169 -0.9845575
-0.9697833 -0.992198 -0.994355 -0.9782203 -0.9973225
-0.9850864 -0.9917671 -0.9850685 -0.9645248 -0.9708308
-0.9710678 -0.9854463 -0.9930951 -0.9867495 -0.9827809

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial angular velocity jerk in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation).


Variable 23: frequency-body-acceleration-mean-x

* Class: character

* Unique values:
-0.2027943 -0.316614 -0.2877826 -0.1879343 -0.3430484
-0.247389 -0.3965337 -0.4214982 -0.3174409 -0.3947904
-0.3609917 -0.02998157 -0.2734962 -0.09949286 -0.2754042
-0.6090389 -0.3219595 -0.3087024 -0.2800622 -0.1358195
-0.3514029 -0.3460482 -0.4267194 -0.2947112 -0.11419
-0.05435764 -0.3350301 -0.3714752 -0.1474043 -0.4924198
-0.4043218 -0.3920042 -0.1614853 -0.1310754 -0.3361994
-0.1664111 -0.3553489 -0.3235084 -0.07463284 -0.474984
-0.1397522 -0.1568795 -0.3191693 -0.05539965 -0.2726057
-0.5216498 -0.2428208 -0.4176074 -0.2661013 -0.1097935
-0.4204028 -0.2667209 -0.2944883 -0.342736 -0.1394108
-0.3214479 -0.3824607 -0.4650973 -0.1404391 -0.3957906
0.03822918 -0.04217069 0.09843201 0.3283085 0.04434283
0.1365902 0.03519372 0.02125416 0.2353098 0.03682635
-0.02262392 0.537012 0.1043235 0.1953484 0.2054282
-0.3722452 0.0228001 0.08298315 0.08907218 0.1106632
-0.106967 0.1128412 -0.07223923 0.1031285 0.2156653
0.02350493 -0.07266027 -0.3500868 -0.034331 -0.2223243
-0.9796412 -0.9701544 -0.9774508 -0.9753515 -0.9726971
-0.9811429 -0.9814815 -0.9764566 -0.9866196 -0.9870438
-0.9939694 -0.979238 -0.9906102 -0.9785054 -0.9863257
-0.9914055 -0.9825795 -0.9886821 -0.9798201 -0.991094
-0.9850088 -0.9858038 -0.9774625 -0.9594136 -0.9849431
-0.9796661 -0.9901355 -0.9931449 -0.9812031 -0.9895295
-0.9952499 -0.9601234 -0.9645009 -0.9771003 -0.9766818
-0.9882199 -0.9938081 -0.9726996 -0.986725 -0.9894277
-0.9909275 -0.987352 -0.9783277 -0.9803739 -0.9836272
-0.9900932 -0.9919934 -0.9901218 -0.9725198 -0.995024
-0.9720141 -0.9839467 -0.9734975 -0.9716627 -0.9700998
-0.9764695 -0.989426 -0.9904099 -0.9619327 -0.9841836
-0.9390991 -0.9806656 -0.9687417 -0.9391143 -0.9534242
-0.9535386 -0.9838014 -0.9339362 -0.9740162 -0.9802132
-0.9743593 -0.9745337 -0.9682344 -0.9537585 -0.9700372
-0.9291474 -0.9732623 -0.9806318 -0.9739309 -0.986627
-0.97479 -0.9767251 -0.9588021 -0.9468655 -0.9691842
-0.9562485 -0.9747169 -0.98518 -0.9657288 -0.9758937

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis X in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 24: frequency-body-acceleration-mean-y

* Class: character

* Unique values:
0.08971273 -0.08130244 0.009460378 0.1407816 -0.06415642
0.3169824 -0.08304784 -0.1746018 0.1113211 -0.3215007
-0.06502676 0.1692586 0.03384658 0.1453675 -0.07243673
-0.2518803 -0.1467022 -0.1367835 -0.1279123 -0.03496423
-0.1938567 -0.02190481 -0.1493996 -0.2576776 0.05339119
-0.07130246 0.09551507 -0.2436063 0.403466 -0.2031937
-0.1909767 -0.07880942 0.07289032 0.09780351 -0.3815905
0.2634314 -0.2546452 0.01639392 -0.1019354 -0.2680638
-0.1175197 0.1118182 0.02215987 0.1306865 -0.07697739
-0.3801508 -0.1855283 -0.2496885 -0.1905891 -0.1960115
-0.2978138 0.009924459 -0.1171092 -0.4050228 -0.03906882
-0.1683415 -0.06365648 -0.3634507 -0.02938324 -0.2524125
0.001549908 -0.007700483 0.07922807 0.3397712 -0.1453023
0.3884128 0.02475081 0.3714825 0.1675181 -0.1345984
-0.1302725 0.4944578 0.181138 0.2257666 0.09594329
-0.1963811 -0.006237 -0.06267296 0.1864417 -0.02122937
-0.02166371 0.278345 -0.1296066 -0.1831205 0.009046604
0.15051 -0.03645352 -0.3090496 0.5241877 -0.08618298
-0.9440846 -0.8919078 -0.9214347 -0.9282644 -0.9314906
-0.9442197 -0.9345032 -0.9326448 -0.9389264 -0.9614567
-0.969928 -0.9607632 -0.9680609 -0.939546 -0.9534604
-0.9591173 -0.9542994 -0.9740579 -0.9463517 -0.9696095
-0.954076 -0.9573435 -0.9057829 -0.9116832 -0.9404502
-0.942768 -0.9596739 -0.9765385 -0.9451986 -0.9627732
-0.9770708 -0.9080754 -0.8907964 -0.9303365 -0.9418838
-0.9500491 -0.9687031 -0.9421782 -0.9433488 -0.969314
-0.9741706 -0.9528729 -0.9496949 -0.9291614 -0.9628318
-0.9598462 -0.9584023 -0.9613561 -0.8934304 -0.9733458
-0.9194751 -0.9598717 -0.8895492 -0.9448494 -0.9233787
-0.9327757 -0.9594276 -0.9612391 -0.8981942 -0.9489702
-0.8670652 -0.96117 -0.9654195 -0.9237068 -0.942194
-0.9518167 -0.9714039 -0.9303669 -0.9624611 -0.9636356
-0.9546481 -0.9727988 -0.9600692 -0.9255247 -0.9820723
-0.7849458 -0.983664 -0.982916 -0.9584364 -0.9890343
-0.9599743 -0.9798009 -0.9388834 -0.9343666 -0.9543418
-0.951266 -0.9658438 -0.9849099 -0.965596 -0.9808304

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Y in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 25: frequency-body-acceleration-mean-z

* Class: character

* Unique values:
-0.3315601 -0.4123741 -0.4902511 -0.4985202 0.03858323
-0.2386346 -0.6164029 -0.1773664 -0.5549421 -0.244363
-0.3828328 -0.1044234 -0.3003091 -0.2552165 0.08140811
-0.5335632 -0.3395396 -0.3123726 -0.3563376 -0.2797348
-0.3095589 -0.4538064 -0.6310055 -0.2508063 -0.4121827
-0.4223253 -0.2468515 -0.4897711 -0.2722139 -0.344493
-0.4333497 -0.5044945 -0.4574707 -0.4272481 -0.317461
-0.07294969 -0.5517421 0.1916937 -0.5395911 -0.335853
-0.3999235 -0.2196445 -0.321713 -0.22802 -0.07057749
-0.5429318 -0.4995028 -0.4188864 -0.4017329 -0.3204879
-0.3675198 -0.281002 -0.5246557 -0.3847104 -0.3012064
-0.5608412 -0.4047852 -0.5227284 -0.3184315 -0.3127922
-0.2255745 -0.4044524 -0.3747401 -0.2776026 -0.1392162
0.1595898 -0.3776248 0.280736 -0.2598122 -0.04769426
-0.3180819 0.1106592 -0.07697131 -0.3227957 0.2805189
-0.5560971 -0.2796401 -0.2416004 -0.3081616 -0.2666922
-0.2580674 -0.1312908 -0.4946835 -0.1037058 -0.1577284
-0.4021212 -0.1511787 -0.5058244 -0.1880988 -0.1738251
-0.9591849 -0.9179879 -0.9460642 -0.9357981 -0.9046753
-0.9594363 -0.9728551 -0.9441261 -0.963227 -0.9595522
-0.9748416 -0.9663351 -0.9708593 -0.9466353 -0.9420312
-0.9747761 -0.9675191 -0.9746658 -0.9522268 -0.975623
-0.9662741 -0.9701622 -0.9517837 -0.8922013 -0.9746447
-0.9546266 -0.9561831 -0.9829964 -0.9475975 -0.9669918
-0.9852971 -0.9395077 -0.9150838 -0.942864 -0.9385505
-0.9503629 -0.9876698 -0.942422 -0.9654735 -0.9699995
-0.9802316 -0.9685434 -0.9602741 -0.9571018 -0.9451706
-0.9740512 -0.9732152 -0.9741462 -0.934503 -0.984096
-0.9380898 -0.9624712 -0.9316434 -0.9416869 -0.9552724
-0.9471782 -0.9775673 -0.9757728 -0.9299858 -0.9538176
-0.8826669 -0.9683321 -0.9770077 -0.9380449 -0.9586116
-0.9442695 -0.9735768 -0.9278823 -0.9515659 -0.9745801
-0.9654061 -0.9853404 -0.9617722 -0.9542192 -0.9775152
-0.816198 -0.9849231 -0.9873566 -0.9611157 -0.9894739
-0.970322 -0.984381 -0.9675043 -0.945919 -0.9643008
-0.9547248 -0.9662956 -0.9886069 -0.9763927 -0.9766348

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Z in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 26: frequency-body-acceleration-jerk-mean-x

* Class: character

* Unique values:
-0.170547 -0.3046944 -0.3449548 -0.1509429 -0.3837158
-0.3111987 -0.4532653 -0.4723606 -0.390822 -0.4414062
-0.4234461 0.0336381 -0.200442 -0.03670471 -0.2904105
-0.6255954 -0.3642268 -0.3454827 -0.362602 -0.2104699
-0.3895956 -0.3046153 -0.3588834 -0.3142654 -0.1079411
-0.0816198 -0.2904608 -0.4147972 -0.1387172 -0.5096282
-0.4798752 -0.4784343 -0.2897255 -0.2448128 -0.4546479
-0.2002772 -0.4959274 -0.3834971 -0.2370531 -0.5460889
-0.3602722 -0.2053226 -0.4368396 -0.03824498 -0.3656425
-0.6682082 -0.3045406 -0.5031139 -0.3188667 -0.2250678
-0.5506784 -0.2586394 -0.4183046 -0.4020448 -0.2012143
-0.3858438 -0.5062121 -0.5894106 -0.2561623 -0.5156446
-0.02766387 -0.09067071 -0.03680122 0.136555 -0.03052267
0.2148414 -0.120463 -0.03378205 0.06196875 -0.1554449
-0.215092 0.4743173 -0.03778947 0.03833642 0.2015429
-0.5257895 -0.2013681 -0.04378263 -0.0268677 -0.03824582
-0.2349231 0.1381207 -0.1616329 -0.06453543 0.1814191
-0.007014723 -0.1148516 -0.4127283 -0.1993604 -0.3761758
-0.986597 -0.9749504 -0.976025 -0.9710375 -0.9820372
-0.9849773 -0.9808318 -0.9815666 -0.9881061 -0.9909643
-0.9945426 -0.9867756 -0.9897592 -0.9809445 -0.9845509
-0.9924788 -0.9920254 -0.9908396 -0.9768918 -0.9934458
-0.9887754 -0.9878488 -0.9768457 -0.9655962 -0.989365
-0.9771099 -0.9926782 -0.9919247 -0.9822436 -0.9888574
-0.9946308 -0.9576669 -0.9630592 -0.9734805 -0.9763231
-0.9890292 -0.9923855 -0.9781816 -0.9853535 -0.9910386
-0.9921292 -0.9850396 -0.976803 -0.9749692 -0.9832833
-0.9884047 -0.990587 -0.9877717 -0.9685137 -0.9937369
-0.9678576 -0.9809732 -0.9723109 -0.9713138 -0.9635652
-0.9719716 -0.9881983 -0.989545 -0.9597105 -0.9811616
-0.9570739 -0.9805132 -0.9826897 -0.9670724 -0.980393
-0.9731106 -0.9848849 -0.9720107 -0.98133 -0.98858
-0.9814721 -0.9834786 -0.9841888 -0.9695703 -0.9862047
-0.9728591 -0.989224 -0.9866796 -0.9800134 -0.992154
-0.9768879 -0.9858136 -0.9785425 -0.9643041 -0.9790147
-0.9687428 -0.9851997 -0.9864047 -0.98389 -0.9859985

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis X in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 27: frequency-body-acceleration-jerk-mean-y

* Class: character

* Unique values:
-0.03522552 -0.1405086 -0.1810556 -0.07537423 -0.1231929
0.07968329 -0.2418017 -0.3767666 -0.06693781 -0.4542708
-0.1942327 0.01073187 -0.1125647 0.1599956 -0.1554887
-0.4344552 -0.298532 -0.1947674 -0.2945483 -0.08802134
-0.2995253 -0.07876408 -0.2795534 -0.3677066 0.0309052
-0.1413741 -0.04391951 -0.3619085 0.157934 -0.3528293
-0.4134446 -0.2837725 -0.1968179 -0.1229916 -0.5370757
-0.02579526 -0.4553179 -0.3476066 -0.3381022 -0.4686052
-0.3770519 -0.07392837 -0.2050673 -0.07518293 -0.3262363
-0.6408494 -0.4193447 -0.4424656 -0.3580094 -0.4088866
-0.5929194 -0.1878421 -0.2978052 -0.6084986 -0.2068728
-0.3330776 -0.3689962 -0.5796503 -0.3121611 -0.5276042
-0.1286672 -0.1359385 -0.0568033 0.1372025 -0.3162365
0.2206397 -0.1774792 0.1647751 -0.02697694 -0.2899579
-0.3512684 0.2767169 -0.1073063 -0.003091553 -0.07245046
-0.4156996 -0.1655524 -0.1709753 -0.01270397 -0.09778507
-0.2249928 0.09620916 -0.1729416 -0.313643 -0.1195043
0.006394069 -0.2078123 -0.4659827 0.205829 -0.2258244
-0.9815795 -0.9541702 -0.9542375 -0.9470708 -0.9694236
-0.9802211 -0.9674546 -0.9689518 -0.978159 -0.9817522
-0.9883274 -0.9791416 -0.9791804 -0.9631295 -0.9781362
-0.982957 -0.9858629 -0.9852386 -0.9630542 -0.9838832
-0.9804057 -0.9771397 -0.9442984 -0.9580074 -0.9809629
-0.9642362 -0.9839141 -0.9836424 -0.9711583 -0.9792282
-0.9854187 -0.943498 -0.9313702 -0.9514055 -0.9671651
-0.9761777 -0.979287 -0.9672499 -0.9678847 -0.9824254
-0.9862783 -0.9700113 -0.964503 -0.9521415 -0.9751766
-0.9725545 -0.9762671 -0.9758687 -0.935169 -0.983195
-0.9574349 -0.9708513 -0.9376242 -0.9626243 -0.9421878
-0.9532918 -0.9777528 -0.9752437 -0.9357176 -0.9677206
-0.9224626 -0.9687521 -0.9653286 -0.9360434 -0.9725316
-0.9758774 -0.9738825 -0.9693421 -0.9708332 -0.9847529
-0.9772124 -0.9748783 -0.9720394 -0.9548333 -0.9882303
-0.946802 -0.9871151 -0.9852573 -0.9780948 -0.9893988
-0.9716963 -0.9827683 -0.94397 -0.9640828 -0.9680392
-0.9632233 -0.9803751 -0.9858653 -0.9772207 -0.9821406

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Y in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 28: frequency-body-acceleration-jerk-mean-z

* Class: character

* Unique values:
-0.4689992 -0.5141373 -0.5904966 -0.5414386 -0.1064904
-0.3615633 -0.6925939 -0.4158992 -0.6489053 -0.4223324
-0.5234271 -0.1293679 -0.4057002 -0.2819734 -0.05720213
-0.6592864 -0.3986732 -0.3826171 -0.4987545 -0.3948778
-0.4670307 -0.5549567 -0.7289916 -0.3995412 -0.4640205
-0.4913862 -0.3422637 -0.6011472 -0.3459945 -0.4699202
-0.6854744 -0.6773145 -0.6067175 -0.5493146 -0.5817645
-0.3866558 -0.7653879 -0.2640085 -0.7145542 -0.5652208
-0.6330177 -0.3806571 -0.5198152 -0.4144489 -0.3466052
-0.793267 -0.6397413 -0.6085442 -0.5878136 -0.6461986
-0.7378039 -0.5227281 -0.6901069 -0.6151257 -0.5532307
-0.6879299 -0.6314964 -0.7361493 -0.4927559 -0.483391
-0.2883347 -0.5290595 -0.4919799 -0.2830862 -0.2964949
0.05860969 -0.5302255 -0.02487898 -0.3453765 -0.2419741
-0.4986685 0.05959058 -0.1968383 -0.4195343 0.1577757
-0.686844 -0.3601146 -0.3436264 -0.3652874 -0.4111735
-0.3996887 -0.2714987 -0.5839174 -0.2936778 -0.240679
-0.4516143 -0.276138 -0.6221359 -0.3562202 -0.2500002
-0.9860531 -0.9708457 -0.9695013 -0.9541998 -0.9685035
-0.9829953 -0.9811249 -0.972752 -0.9849084 -0.981178
-0.9888281 -0.9839805 -0.9834343 -0.9753307 -0.9726562
-0.9863264 -0.98799 -0.9870877 -0.9729396 -0.9884702
-0.9859783 -0.9851291 -0.9751549 -0.957527 -0.9860568
-0.9755516 -0.9852612 -0.9886897 -0.9732115 -0.9819713
-0.9907522 -0.9691749 -0.9584387 -0.9637435 -0.9682296
-0.9794772 -0.9884608 -0.9667184 -0.9826323 -0.9860919
-0.9895636 -0.9834633 -0.9747806 -0.9775674 -0.9696102
-0.9848323 -0.9845639 -0.9851114 -0.9647512 -0.9885416
-0.9628926 -0.9797752 -0.9686484 -0.9671292 -0.9722415
-0.9711225 -0.9846086 -0.9862657 -0.9527411 -0.9741705
-0.9480609 -0.9791223 -0.9832503 -0.9544258 -0.969525
-0.9621111 -0.9795648 -0.9685932 -0.9747757 -0.9855449
-0.9803801 -0.9865065 -0.9816308 -0.9709189 -0.9824155
-0.9626327 -0.9873083 -0.9880331 -0.9702516 -0.9920184
-0.9756324 -0.9861971 -0.9753833 -0.9559092 -0.9725922
-0.9671497 -0.9809946 -0.9891169 -0.9828762 -0.9815497

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Z in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 29: frequency-body-angularvelocity-mean-x

* Class: character

* Unique values:
-0.3390322 -0.4378458 -0.3726687 -0.2396507 -0.3183951
-0.1020631 -0.5147533 -0.5085959 -0.2533994 -0.5957465
-0.4077167 0.2281424 -0.2466574 -0.1446487 -0.3376192
-0.4119097 -0.3681129 -0.4980179 -0.3746811 -0.43149
-0.3744403 -0.4297135 -0.3733845 -0.3836761 -0.2779138
-0.4019759 -0.1928565 -0.6096734 -0.09362487 -0.4682951
-0.4926117 -0.3782167 -0.2636151 -0.115065 -0.3838893
-0.2402608 -0.4717828 -0.4410484 -0.3610969 -0.5323997
-0.416223 -0.1944855 -0.446974 -0.195457 -0.4302392
-0.476145 -0.4276866 -0.5443692 -0.4036363 -0.2605193
-0.488039 -0.3316436 -0.371069 -0.3139416 -0.2185247
-0.4263603 -0.482113 -0.5923237 -0.3726844 -0.5031887
-0.3524496 -0.1290666 -0.2953451 0.06337161 -0.3393015
-0.1307404 -0.318777 -0.2953155 -0.2273596 -0.420844
-0.316413 0.4749624 -0.3667488 -0.09543493 -0.2147307
-0.2177997 -0.1259182 -0.2966286 -0.029997 -0.189418
-0.2630616 -0.145776 -0.2402989 -0.3250429 -0.2143503
-0.1788562 -0.3196771 -0.4892323 -0.06295726 -0.2724692
-0.9761615 -0.9575506 -0.9571173 -0.9396714 -0.9436318
-0.9822003 -0.9851069 -0.9785771 -0.9861526 -0.9786329
-0.9884111 -0.9817437 -0.9848936 -0.9772667 -0.97715
-0.9880026 -0.9901449 -0.9872079 -0.9737243 -0.9883936
-0.9870346 -0.9826214 -0.9605896 -0.9503152 -0.9864774
-0.968529 -0.9832182 -0.9899615 -0.9699133 -0.9856765
-0.9863868 -0.9012823 -0.9096618 -0.9316124 -0.9381216
-0.9696774 -0.9783017 -0.9571118 -0.9503803 -0.9731574
-0.9806963 -0.9478656 -0.95699 -0.9170181 -0.9475104
-0.9680785 -0.9693643 -0.9701496 -0.8804261 -0.9744854
-0.9157429 -0.9670371 -0.9054642 -0.9169744 -0.9240059
-0.8902927 -0.9571541 -0.9644289 -0.8810194 -0.9585402
-0.8502492 -0.9701673 -0.9757975 -0.9354398 -0.9536845
-0.9579039 -0.9761875 -0.949959 -0.9554136 -0.9758924
-0.9719492 -0.9741962 -0.9734105 -0.9533669 -0.9796761
-0.8905175 -0.9883863 -0.9870285 -0.9468042 -0.9931226
-0.9717891 -0.9864311 -0.9672037 -0.9302979 -0.9537939
-0.9566539 -0.9694635 -0.9924369 -0.9826194 -0.9765706

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis X in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 30: frequency-body-angularvelocity-mean-y

* Class: character

* Unique values:
-0.1030594 -0.5615263 -0.5139517 -0.3413784 -0.1519667
-0.2597297 -0.5931074 -0.2158949 -0.5354221 -0.6197319
-0.4901663 -0.09735498 -0.3717441 -0.5011769 0.1955695
-0.6787504 -0.5618278 -0.5347242 -0.5046817 -0.3622323
-0.1759009 -0.5547721 -0.6884601 -0.4369059 -0.345209
-0.4678863 -0.2562136 -0.5708982 0.0310146 -0.4798414
-0.3194746 -0.6372935 -0.516609 -0.3296538 -0.5679203
-0.1131621 -0.5811672 0.1186877 -0.5170252 -0.6420181
-0.5214354 -0.2254218 -0.4466916 -0.5239438 -0.2904474
-0.6185799 -0.6171125 -0.5940926 -0.5220665 -0.3940453
-0.3660584 -0.4880861 -0.6843102 -0.4991592 -0.235859
-0.6047113 -0.4921761 -0.6498173 -0.1623414 -0.546621
-0.05570225 -0.5426942 -0.3824831 -0.1303275 -0.2144431
0.1160909 -0.5282545 0.01320823 -0.4023323 -0.479513
-0.4511269 0.1470831 -0.3088799 -0.5250068 0.328817
-0.6329164 -0.4431262 -0.4021328 -0.2171002 -0.463125
-0.3480651 -0.3619138 -0.7175458 -0.3125122 -0.2724957
-0.4206315 -0.1338289 -0.6415276 -0.1380979 -0.4334754
-0.9758386 -0.9561736 -0.9554604 -0.9438574 -0.9566781
-0.9765899 -0.9826366 -0.9698067 -0.9792017 -0.966796
-0.988794 -0.9681887 -0.9798309 -0.9591618 -0.9579203
-0.9838278 -0.9817408 -0.9841411 -0.9631176 -0.9903292
-0.9820059 -0.9821009 -0.9675836 -0.939693 -0.9861792
-0.9637252 -0.9824561 -0.9887027 -0.9646431 -0.9812002
-0.9889845 -0.9377112 -0.9393735 -0.9432731 -0.9575487
-0.9725955 -0.9940255 -0.9508362 -0.9751339 -0.9835942
-0.987334 -0.9750617 -0.9600826 -0.9706824 -0.9527812
-0.9783999 -0.9838859 -0.9837319 -0.9481608 -0.9915867
-0.9456288 -0.9725762 -0.9559929 -0.9545143 -0.9603238
-0.9482519 -0.9729131 -0.9835612 -0.9106491 -0.9704265
-0.9521915 -0.9780997 -0.9782496 -0.9417715 -0.9575702
-0.9574112 -0.9826403 -0.9380879 -0.9643109 -0.9760929
-0.9736691 -0.972061 -0.964968 -0.9646983 -0.9684691
-0.9462596 -0.983128 -0.9867958 -0.9658245 -0.9936963
-0.9681703 -0.9833216 -0.9721878 -0.9345797 -0.95467
-0.9525617 -0.9686897 -0.9856112 -0.97312 -0.966112

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Y in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 31: frequency-body-angularvelocity-mean-z

* Class: character

* Unique values:
-0.2559409 -0.4181262 -0.213127 -0.2035755 -0.3667336
-0.1329022 -0.3982933 -0.2129258 -0.4614641 -0.4328853
-0.3988092 -0.01050471 -0.2832625 -0.08350118 -0.1949704
-0.561323 -0.3185168 -0.3181824 -0.255029 -0.3972775
-0.2473503 -0.3966599 -0.6013811 -0.2402225 -0.10853
-0.3172825 -0.276608 -0.5381523 -0.1088925 -0.3914479
-0.4535972 -0.4315034 -0.1398014 -0.04641421 -0.4081503
0.1659742 -0.6746719 0.1967032 -0.4857017 -0.4924275
-0.3242737 -0.06612935 -0.1557624 -0.1993131 -0.1630013
-0.5751697 -0.3427039 -0.4005285 -0.318211 -0.3417001
-0.318937 -0.2486011 -0.3507657 -0.3276987 -0.2627634
-0.4060809 -0.2553389 -0.5043641 0.1150766 -0.3721829
-0.03186943 -0.3028665 -0.03417503 0.1528452 -0.2996003
0.02774981 -0.2734591 0.4924144 -0.1831948 -0.3750006
-0.4033804 0.2106731 -0.2382217 -0.1949157 -0.1412669
-0.4103114 -0.2213888 -0.1449049 -0.1843923 -0.1992259
-0.2637208 -0.08749447 -0.3183065 -0.2506866 0.03913668
-0.2127674 -0.2129067 -0.4470307 0.2570378 -0.3962866
-0.9513155 -0.934968 -0.9380034 -0.9347649 -0.9474199
-0.9617987 -0.9544538 -0.9570209 -0.9667315 -0.9600583
-0.9816171 -0.9682358 -0.9768397 -0.9483671 -0.9654288
-0.9758059 -0.9704237 -0.9768481 -0.9541803 -0.9739336
-0.9611771 -0.9598148 -0.9337769 -0.9403123 -0.9653955
-0.9557182 -0.9683844 -0.9830274 -0.9509634 -0.9746869
-0.9807731 -0.9161725 -0.9071908 -0.9432396 -0.9571651
-0.9755123 -0.980763 -0.9509999 -0.9682649 -0.9836393
-0.985955 -0.9651006 -0.9594326 -0.9623278 -0.9679396
-0.9704569 -0.9744593 -0.9808625 -0.9266552 -0.9836547
-0.9377981 -0.9606277 -0.915281 -0.9415103 -0.9509157
-0.952602 -0.9743944 -0.9742944 -0.9114099 -0.9701334
-0.9093027 -0.962342 -0.9632029 -0.9326366 -0.9569053
-0.9674612 -0.9614344 -0.9491072 -0.9581901 -0.9859578
-0.9761649 -0.9739323 -0.9808112 -0.9425702 -0.9842388
-0.9245369 -0.9701712 -0.979202 -0.9611648 -0.9761843
-0.9675774 -0.9626719 -0.9614793 -0.959815 -0.9697558
-0.9456732 -0.9691269 -0.9849993 -0.9722786 -0.981093

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Z in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 32: frequency-body-acceleration-magnitude-mean

* Class: character

* Unique values:
-0.1286235 -0.2900315 -0.3049925 -0.2013866 -0.1512436
-0.09521728 -0.4585141 -0.3735168 -0.2751562 -0.4104632
-0.42938 0.03222723 -0.2512664 -0.0241585 -0.09426063
-0.56606 -0.3798367 -0.3272294 -0.3521568 -0.2356833
-0.3423638 -0.3242894 -0.4508046 -0.318801 -0.09302374
-0.153116 -0.2346009 -0.4243867 -0.003533418 -0.4346189
-0.3523959 -0.3158661 -0.1692615 -0.08194794 -0.3786188
-0.1302645 -0.336061 -0.07598518 -0.1652421 -0.3706497
-0.1503056 -0.07962876 -0.2578944 -0.08669051 -0.2313827
-0.5279076 -0.1675664 -0.3939289 -0.2135194 -0.1083064
-0.4005884 -0.1453185 -0.2768255 -0.3728903 -0.1668667
-0.2900054 -0.3675228 -0.4365611 -0.2050093 -0.322301
0.09658453 0.02894132 0.1557422 0.395958 0.2189111
0.3016268 0.09028076 0.4719052 0.3311502 0.1140321
0.05806805 0.5866376 0.2398959 0.1555269 0.36483
-0.2881548 0.07510168 0.1498165 0.18884 0.115974
0.00410151 0.2934248 -0.01907434 0.2222039 0.2201157
0.1480173 0.05287919 -0.2419735 0.1518877 -0.02317016
-0.9477829 -0.9041857 -0.9362906 -0.9357504 -0.9089568
-0.9479818 -0.953066 -0.9405899 -0.949752 -0.9583355
-0.9736268 -0.9626326 -0.9748292 -0.9430782 -0.9458378
-0.967018 -0.952411 -0.9747665 -0.9539281 -0.9733465
-0.9599234 -0.9612737 -0.9290021 -0.8977182 -0.955281
-0.9559443 -0.9569016 -0.9847815 -0.9469135 -0.968905
-0.9853564 -0.9269689 -0.9046414 -0.9459498 -0.9456115
-0.9537461 -0.9822554 -0.9497151 -0.9603373 -0.9710826
-0.9809677 -0.9689108 -0.9622913 -0.9490445 -0.9579862
-0.9723554 -0.9706053 -0.9731862 -0.9291465 -0.9845481
-0.9320475 -0.9640522 -0.917614 -0.9463302 -0.9401102
-0.9452178 -0.9723936 -0.9767976 -0.9212256 -0.9600661
-0.8617676 -0.9655243 -0.962235 -0.9123517 -0.9279769
-0.9322796 -0.973994 -0.8994637 -0.956001 -0.9680205
-0.9610463 -0.9719574 -0.9537691 -0.929819 -0.9677471
-0.7744819 -0.9692691 -0.981389 -0.9610356 -0.9868006
-0.9628408 -0.9751102 -0.9393897 -0.9266043 -0.9508481
-0.9438674 -0.9595355 -0.9867884 -0.9528271 -0.9731711

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation)


Variable 33: frequency-body-acceleration-jerk-magnitude-mean

* Class: character

* Unique values:
-0.0571194 -0.1867645 -0.2694817 -0.05540142 -0.03841873
-0.1238344 -0.3951161 -0.4315915 -0.289754 -0.3782785
-0.3359389 0.07301799 -0.1440099 0.06597273 -0.01807057
-0.5645913 -0.2933583 -0.259934 -0.3608115 -0.1089782
-0.3471801 -0.1690644 -0.3185878 -0.3168707 0.02051895
-0.02991243 -0.1521115 -0.4140378 0.05452695 -0.418641
-0.4426522 -0.4129209 -0.2646749 -0.1698682 -0.4547832
-0.1318506 -0.4759285 -0.2887443 -0.2619567 -0.4755977
-0.3602999 -0.1873913 -0.3554437 -0.04580204 -0.3029681
-0.6547951 -0.2949705 -0.4607703 -0.2944334 -0.239108
-0.5497849 -0.1895111 -0.3974063 -0.4195331 -0.1535531
-0.3208845 -0.4251 -0.5744814 -0.215014 -0.4298008
0.02621849 -0.04947798 0.009183943 0.2438343 0.06738989
0.3315285 -0.097455 0.1862235 0.1584133 -0.07456591
-0.1886804 0.5384048 0.1124426 0.02247835 0.3350097
-0.4716421 -0.153172 0.01085756 -0.01288238 0.0004488963
-0.1259614 0.2222474 -0.1752953 0.007168779 0.156978
0.07699684 -0.02821567 -0.3833987 0.01379172 -0.2008301
-0.9852621 -0.9658889 -0.9644403 -0.9483487 -0.9709542
-0.9809323 -0.9753153 -0.9729853 -0.9846894 -0.9839686
-0.9914273 -0.9837516 -0.9853424 -0.9689083 -0.9741215
-0.9879418 -0.9894819 -0.9887733 -0.9691787 -0.9900937
-0.9858263 -0.9838747 -0.9625007 -0.9530504 -0.9859008
-0.9717153 -0.9883485 -0.9904071 -0.9717305 -0.98447
-0.9925425 -0.9486275 -0.9418259 -0.955914 -0.9674179
-0.9797459 -0.9886366 -0.9702141 -0.9790788 -0.9865027
-0.9901628 -0.9791354 -0.9706343 -0.9597439 -0.9737982
-0.9822942 -0.9828769 -0.9841516 -0.9527278 -0.9897939
-0.9533576 -0.9770653 -0.9561393 -0.9632429 -0.9516337
-0.960859 -0.9819775 -0.9849871 -0.9400079 -0.9722514
-0.9333004 -0.9759496 -0.9773564 -0.9486555 -0.9680663
-0.9617929 -0.9769408 -0.9679886 -0.9736812 -0.9875145
-0.9796873 -0.9806216 -0.9784441 -0.9626548 -0.9859057
-0.9600831 -0.9891382 -0.9880989 -0.9734362 -0.9939983
-0.9699493 -0.9853741 -0.9622871 -0.9543206 -0.9685611
-0.9624484 -0.9807544 -0.9885484 -0.9796955 -0.9831081

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration jerk in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation)


Variable 34: frequency-body-angularvelocity-magnitude-mean

* Class: character

* Unique values:
-0.1992526 -0.5697558 -0.4842628 -0.3296811 -0.1929098
-0.3012418 -0.6102226 -0.3113864 -0.4891664 -0.6692285
-0.5186181 -0.09524605 -0.4095161 -0.4383787 0.1850782
-0.5627333 -0.5519276 -0.5194517 -0.5146024 -0.4168179
-0.3583444 -0.5307048 -0.6092856 -0.5137975 -0.4126169
-0.4425038 -0.2674724 -0.6203314 -0.05200656 -0.5345092
-0.3259615 -0.5142116 -0.3925645 -0.230627 -0.5339829
-0.229611 -0.5500997 0.04885887 -0.4536936 -0.6305467
-0.504067 -0.2888403 -0.4753699 -0.369902 -0.3803883
-0.5671535 -0.5560848 -0.6076677 -0.5348354 -0.3572139
-0.4491507 -0.4506122 -0.5757941 -0.5314827 -0.2653717
-0.5940325 -0.4854773 -0.6540291 -0.2866277 -0.564665
-0.1857203 -0.3323766 -0.3493384 -0.01437354 -0.2550451
-0.0003627297 -0.4561701 -0.07875684 -0.3738986 -0.4882539
-0.4094388 0.2039798 -0.4063923 -0.3384173 0.1508257
-0.4857636 -0.3345099 -0.3591137 -0.2233548 -0.3814599
-0.3567723 -0.3208385 -0.4292134 -0.3475402 -0.3123475
-0.3449384 -0.2061217 -0.6047354 -0.1005661 -0.3742987
-0.9584356 -0.9466649 -0.9447603 -0.9297257 -0.933082
-0.9658068 -0.9698 -0.9633205 -0.9737622 -0.954061
-0.9833693 -0.9642388 -0.9778397 -0.9519528 -0.9522933
-0.9793509 -0.9764639 -0.9794828 -0.9602975 -0.9802694
-0.9738763 -0.9718406 -0.9487698 -0.9344377 -0.9744597
-0.9585119 -0.9732583 -0.9865352 -0.9533991 -0.9779737
-0.9846176 -0.9136824 -0.9045439 -0.9266643 -0.938705
-0.9645642 -0.9825765 -0.9444056 -0.9567339 -0.9754486
-0.9842911 -0.9585781 -0.956723 -0.9320653 -0.9445838
-0.9689725 -0.9723331 -0.9755256 -0.9096524 -0.9808797
-0.9174494 -0.9617759 -0.9142092 -0.9297691 -0.9377867
-0.9023568 -0.9574888 -0.9723526 -0.8794377 -0.9639223
-0.8621902 -0.9645867 -0.9682571 -0.9301536 -0.9411307
-0.944529 -0.9670934 -0.9301517 -0.9468126 -0.9702496
-0.9690144 -0.9656247 -0.962349 -0.9460558 -0.9662393
-0.910127 -0.9743052 -0.9798907 -0.9442184 -0.9840013
-0.9620012 -0.972113 -0.9615567 -0.9186053 -0.9376926
-0.945497 -0.9576816 -0.9843291 -0.9698322 -0.9640014

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion angular velocity in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation)


Variable 35: frequency-body-angularvelocity-jerk-magnitude-mean

* Class: character

* Unique values:
-0.3193086 -0.6077516 -0.5480536 -0.3665005 -0.1553399
-0.4730262 -0.7519145 -0.5910369 -0.6450752 -0.7206823
-0.5827119 -0.2624428 -0.4995972 -0.5539461 0.1466186
-0.7703009 -0.619461 -0.6232882 -0.5959651 -0.6285011
-0.5476218 -0.5832493 -0.7243274 -0.6025816 -0.5150653
-0.5611764 -0.3385271 -0.7105963 -0.1803653 -0.5715944
-0.6346651 -0.7168778 -0.5713441 -0.4592363 -0.6733273
-0.4632706 -0.7959861 -0.4572506 -0.7314224 -0.7878336
-0.6690088 -0.4771839 -0.6289157 -0.667996 -0.5187156
-0.8224039 -0.6735807 -0.7191798 -0.6625058 -0.6974546
-0.7739745 -0.6007985 -0.7407492 -0.7341594 -0.600583
-0.7143326 -0.6560885 -0.8261932 -0.4503934 -0.6461147
-0.2819634 -0.5762772 -0.4536972 -0.1327054 -0.2890967
-0.1251796 -0.6683405 -0.2547471 -0.5653961 -0.5896632
-0.5773489 -0.02290453 -0.4908049 -0.5835105 0.07467546
-0.6870343 -0.4722008 -0.4677778 -0.3967207 -0.5965786
-0.6175788 -0.3801753 -0.6217525 -0.4631721 -0.4841965
-0.4582275 -0.2663999 -0.744236 -0.3116685 -0.4744499
-0.9897975 -0.9778981 -0.9715984 -0.9520346 -0.978635
-0.9877306 -0.987256 -0.9873242 -0.990181 -0.9893631
-0.9952046 -0.9867274 -0.9900143 -0.9777754 -0.9807072
-0.9917817 -0.9939854 -0.9923903 -0.9794659 -0.995063
-0.9917507 -0.989862 -0.9765478 -0.9683156 -0.9921915
-0.9784845 -0.9917237 -0.9948082 -0.9761084 -0.9908548
-0.9948154 -0.9603317 -0.9522864 -0.9554251 -0.9736712
-0.9837092 -0.992981 -0.9691756 -0.9831881 -0.9911724
-0.9927239 -0.9845366 -0.9761268 -0.9683778 -0.9725988
-0.9840178 -0.9857623 -0.9894185 -0.9587586 -0.9916721
-0.9592422 -0.9778498 -0.9644711 -0.9674916 -0.9656141
-0.9630598 -0.9771974 -0.9889607 -0.9296 -0.9811192
-0.9423669 -0.9842783 -0.984618 -0.953696 -0.9741179
-0.9684039 -0.9859788 -0.9664553 -0.9757279 -0.9886953
-0.9827655 -0.9818905 -0.9829933 -0.976639 -0.9818469
-0.9682516 -0.9904309 -0.9935638 -0.9718306 -0.9976174
-0.9778213 -0.9902487 -0.9836091 -0.9558063 -0.9609768
-0.9639496 -0.9781508 -0.991901 -0.9811198 -0.9785967

* Description of the variable:
Average by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion angular velocity jerk in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation)


Variable 36: time-body-acceleration-standarddeviation-x

* Class: character

* Unique values:
-0.2837403 -0.3603567 -0.2940985 -0.2965387 -0.3272432
-0.1736057 -0.4228421 -0.4026391 -0.3279618 -0.4046925
-0.3195002 -0.04890494 -0.2978148 -0.008659219 -0.3135218
-0.5960074 -0.3401855 -0.3484756 -0.2930035 -0.1743379
-0.3463943 -0.4236428 -0.44083 -0.2383536 -0.1787097
-0.1288985 -0.3469804 -0.3760055 -0.2083428 -0.4707624
-0.354708 -0.3131234 -0.04572378 -0.05013502 -0.294873
-0.1717122 -0.238803 -0.3093967 -0.02609718 -0.3970838
-0.06295275 -0.1287421 -0.2408083 0.08357386 -0.2438878
-0.4597756 -0.169007 -0.2954395 -0.2420624 -0.08677156
-0.3505045 -0.3043764 -0.204933 -0.3614444 -0.1615919
-0.2901492 -0.2962846 -0.3801683 -0.1160887 -0.3443994
0.03003534 -0.05741005 0.2750461 0.3836816 0.06608156
0.02413935 0.1424566 0.01783134 0.4064711 0.207252
0.1877198 0.6269171 0.2243435 0.3486182 0.04413928
-0.2537569 0.1739538 0.1674075 0.1257129 0.1673836
-0.05777032 0.04636668 0.01119355 0.2133923 0.2957335
0.04240849 -0.06815636 -0.3026346 0.07450988 -0.08273248
-0.977229 -0.9710101 -0.980945 -0.9801649 -0.9726684
-0.9790262 -0.9827966 -0.9763022 -0.9870844 -0.9868256
-0.9944439 -0.9763577 -0.9917773 -0.9784668 -0.9876076
-0.9918928 -0.979769 -0.9885801 -0.9832728 -0.990745
-0.9836227 -0.9868223 -0.9803099 -0.9572278 -0.9829018
-0.9825688 -0.9895463 -0.994348 -0.9830819 -0.9905938
-0.9957599 -0.9667425 -0.9685918 -0.9817582 -0.9793076
-0.9888154 -0.9949789 -0.9732689 -0.9889492 -0.9890768
-0.9911639 -0.989911 -0.98142 -0.9850005 -0.9854215
-0.9919701 -0.9930694 -0.9919516 -0.9777486 -0.9960686
-0.9775594 -0.9872719 -0.9769206 -0.9757413 -0.9784035
-0.981244 -0.9910208 -0.9920198 -0.96721 -0.9872559
-0.9280565 -0.9827766 -0.9659345 -0.9340494 -0.9365136
-0.9430412 -0.9847773 -0.9175019 -0.9722556 -0.9736914
-0.9729606 -0.9650196 -0.9550199 -0.9477353 -0.9567564
-0.9091165 -0.9694454 -0.9784552 -0.9688883 -0.9842196
-0.9763625 -0.9740595 -0.9541937 -0.9423331 -0.9682837
-0.9553187 -0.968892 -0.9845276 -0.9622491 -0.967984

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 37: time-body-acceleration-standarddeviation-y

* Class: character

* Unique values:
0.1144613 -0.06991407 0.0767484 0.1642139 -0.07726186
0.3807821 -0.05221208 -0.05361267 0.1389129 -0.3145698
-0.01757979 0.1818016 0.05408805 0.1003842 -0.1190206
-0.1618524 -0.1363514 -0.1873012 -0.1178862 -0.09175406
-0.17355 -0.07809125 -0.07882674 -0.201697 -0.02274317
-0.1227833 0.1418667 -0.2270059 0.4897718 -0.1541275
-0.002320265 0.01162808 0.1850225 0.1892761 -0.32616
0.3487687 -0.1031675 0.3071955 -0.00406536 -0.1637327
-0.0131721 0.1763499 0.1097875 0.2500675 0.04484358
-0.2230868 -0.04917263 -0.09501041 -0.1467539 -0.1221283
-0.1273112 0.1080273 -0.06668991 -0.3022062 -0.005552877
-0.1038183 0.1044708 -0.2111551 0.1521963 -0.1168045
-0.03193594 -0.03315037 0.09076308 0.360165 -0.1381791
0.3438263 0.07081227 0.3788705 0.1865324 -0.1469938
-0.0607892 0.5148164 0.3013364 0.2398123 0.108259
-0.1405406 -0.01162991 -0.097971 0.1564966 -0.1224635
-0.02726281 0.2628818 -0.2185983 -0.2083107 0.004079154
0.1108353 -0.03212525 -0.254214 0.616937 -0.1026073
-0.9226186 -0.8566178 -0.9043351 -0.9236821 -0.9094547
-0.927332 -0.9214021 -0.9149357 -0.9224072 -0.9516079
-0.9618586 -0.9503889 -0.9668776 -0.9280591 -0.9349336
-0.9474576 -0.940799 -0.9715791 -0.9399052 -0.9632225
-0.937857 -0.9507045 -0.890224 -0.8751414 -0.9179795
-0.9285812 -0.9389677 -0.9749281 -0.9361227 -0.956256
-0.9731901 -0.8934493 -0.8694399 -0.9214932 -0.9234009
-0.9384794 -0.9641733 -0.9285257 -0.9319001 -0.9602983
-0.9681767 -0.9444303 -0.9436016 -0.9226933 -0.9584445
-0.9545692 -0.9494662 -0.9551714 -0.8756892 -0.9692957
-0.8916545 -0.957305 -0.8615974 -0.9386358 -0.9195618
-0.9231403 -0.9494224 -0.9542234 -0.8754104 -0.936872
-0.8368274 -0.9620575 -0.9692956 -0.9246448 -0.9262627
-0.9348912 -0.9721969 -0.909697 -0.9627594 -0.9430612
-0.9447929 -0.97345 -0.9569594 -0.9132763 -0.9763098
-0.6917707 -0.9832314 -0.983736 -0.9453868 -0.9902409
-0.9542018 -0.9802774 -0.941714 -0.9162928 -0.9464543
-0.949072 -0.9509479 -0.9861609 -0.9640982 -0.9831265

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 38: time-body-acceleration-standarddeviation-z

* Class: character

* Unique values:
-0.2600279 -0.387412 -0.4570214 -0.5043242 0.1596313
-0.1420885 -0.5306263 0.0518841 -0.5189326 -0.1597998
-0.2658245 -0.1394779 -0.1686887 -0.213352 0.1642207
-0.4371334 -0.3334865 -0.2973183 -0.3009284 -0.242828
-0.1204768 -0.4252575 -0.5862528 -0.05796365 -0.3956451
-0.4106061 -0.2205035 -0.4283481 -0.2287342 -0.28884
-0.01947924 -0.3697546 -0.308939 -0.3535195 -0.145665
0.1211873 -0.2033694 0.6090179 -0.3797175 -0.1292838
-0.230221 -0.1904686 -0.2197079 -0.1096132 0.1008012
-0.296524 -0.4045969 -0.2307079 -0.2859869 0.09954435
0.0249468 -0.112121 -0.3721378 -0.2534341 -0.07387449
-0.4366974 -0.2172106 -0.3143734 -0.2292495 -0.255601
-0.2304342 -0.3622402 -0.3258914 -0.3202042 -0.06364024
0.133717 -0.3240269 0.4515761 -0.2819822 0.01143539
-0.2310642 0.04932245 -0.07178936 -0.3257227 0.2298987
-0.4579724 -0.2848077 -0.2400408 -0.3410318 -0.223178
-0.2172757 -0.1028379 -0.479186 -0.0077153 -0.1835576
-0.4250174 -0.1583331 -0.4186101 -0.1609385 -0.2055664
-0.9395863 -0.8751102 -0.9260947 -0.9257971 -0.8565329
-0.939553 -0.9683702 -0.9227748 -0.949338 -0.9396722
-0.9657292 -0.9519296 -0.9595679 -0.9175649 -0.9055844
-0.9651396 -0.9500044 -0.9658587 -0.9366672 -0.9680639
-0.950654 -0.9598282 -0.932203 -0.8320019 -0.967827
-0.9396619 -0.9386412 -0.9775727 -0.9291064 -0.9570561
-0.9797759 -0.911419 -0.8693273 -0.9256924 -0.9170642
-0.9260653 -0.9863827 -0.9222763 -0.9516703 -0.953469
-0.9704627 -0.9525997 -0.9461234 -0.9422017 -0.9294097
-0.9646427 -0.9629884 -0.9624084 -0.9051238 -0.9802075
-0.9128506 -0.9497419 -0.8968805 -0.9192958 -0.9412714
-0.9206848 -0.967538 -0.9618739 -0.9131425 -0.9302835
-0.8260614 -0.963691 -0.9685625 -0.9252161 -0.9529784
-0.9324915 -0.9713112 -0.9003319 -0.9295868 -0.9654903
-0.9534767 -0.9846728 -0.9456538 -0.9429458 -0.9732235
-0.717262 -0.9845 -0.986637 -0.9564503 -0.9872551
-0.9670442 -0.9842333 -0.9626673 -0.9407073 -0.9594715
-0.9483338 -0.950393 -0.9876587 -0.972572 -0.973567

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 39: time-gravity-acceleration-standarddeviation-x

* Class: character

* Unique values:
-0.9766096 -0.9777716 -0.9793484 -0.9777799 -0.9798513
-0.9747521 -0.981101 -0.9748169 -0.9783973 -0.9824696
-0.9809834 -0.9698615 -0.9695764 -0.9696434 -0.9772309
-0.9794993 -0.9800557 -0.9798661 -0.9766939 -0.9782535
-0.9797525 -0.9726932 -0.9838265 -0.980972 -0.9744352
-0.9791131 -0.9725449 -0.9830109 -0.9703273 -0.9831324
-0.956367 -0.9440408 -0.95358 -0.9593994 -0.9328231
-0.9266733 -0.9534631 -0.9285236 -0.9525624 -0.9484136
-0.9494604 -0.916496 -0.9409116 -0.9406338 -0.9333445
-0.9508785 -0.9620114 -0.9564339 -0.9446978 -0.954189
-0.9540336 -0.9344077 -0.9584952 -0.9543836 -0.9592161
-0.9602463 -0.9464415 -0.9617388 -0.931405 -0.9621906
-0.9505598 -0.9500611 -0.9504909 -0.9544063 -0.964876
-0.9457666 -0.9544975 -0.9190988 -0.9428065 -0.9577851
-0.9500262 -0.8997261 -0.9401948 -0.9412423 -0.9507908
-0.9644701 -0.962722 -0.9469752 -0.9569215 -0.9417362
-0.9588904 -0.9403618 -0.9552589 -0.9521412 -0.9392676
-0.959504 -0.9526431 -0.9604049 -0.9404581 -0.9618453
-0.9684571 -0.9573245 -0.9831375 -0.9888724 -0.9570824
-0.966758 -0.9880693 -0.9762804 -0.9826209 -0.9801582
-0.9901966 -0.969355 -0.9929364 -0.97201 -0.9845367
-0.98888 -0.9650829 -0.9824457 -0.9891325 -0.9846792
-0.9783647 -0.9799888 -0.9814053 -0.9552804 -0.9731284
-0.9852036 -0.9813791 -0.9940438 -0.985829 -0.9896601
-0.993763 -0.9820204 -0.9740882 -0.9855831 -0.9879175
-0.9876902 -0.9945294 -0.9720054 -0.9884321 -0.9853597
-0.9857514 -0.9924115 -0.9829067 -0.9928273 -0.9846104
-0.9931483 -0.9926788 -0.9940122 -0.9900594 -0.9967642
-0.9964209 -0.9866858 -0.9729084 -0.9891032 -0.9912595
-0.9853142 -0.9922324 -0.9942701 -0.9819169 -0.9921976
-0.89683 -0.9825122 -0.9456953 -0.8877463 -0.9142213
-0.9188732 -0.9795656 -0.8621369 -0.9615097 -0.963762
-0.9610632 -0.9589596 -0.9459053 -0.9287812 -0.9479488
-0.8295549 -0.9444725 -0.9711839 -0.9705991 -0.9729399
-0.9795639 -0.9590144 -0.9212 -0.9218211 -0.9545319
-0.9364583 -0.9578752 -0.982716 -0.9286742 -0.9604122

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of gravitational acceleration in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 40: time-gravity-acceleration-standarddeviation-y

* Class: character

* Unique values:
-0.971306 -0.9623556 -0.9615855 -0.9642486 -0.9694042
-0.9567815 -0.9662406 -0.9544559 -0.9710565 -0.9737848
-0.9686132 -0.9586512 -0.9641445 -0.9636393 -0.9665507
-0.9650934 -0.9690403 -0.973793 -0.9687809 -0.9752728
-0.9701766 -0.9721169 -0.9679632 -0.9712424 -0.9711147
-0.9646192 -0.9608998 -0.9753117 -0.9620034 -0.9625788
-0.9528492 -0.909826 -0.9005117 -0.9129007 -0.9397743
-0.9310321 -0.9243608 -0.9072314 -0.9276488 -0.9336575
-0.9159735 -0.9010449 -0.9415236 -0.9416202 -0.9104746
-0.9317583 -0.9378582 -0.9477134 -0.9276411 -0.9230078
-0.9149339 -0.9237675 -0.923376 -0.9013173 -0.9370394
-0.9413784 -0.922055 -0.9420569 -0.9245944 -0.9166908
-0.9370187 -0.9460946 -0.9123634 -0.9335776 -0.9526787
-0.9415809 -0.9263105 -0.9207259 -0.9256859 -0.9554878
-0.9465767 -0.9178809 -0.9401118 -0.9458244 -0.9390125
-0.937816 -0.9354259 -0.934964 -0.9484042 -0.9139031
-0.9186788 -0.9400685 -0.932066 -0.9363066 -0.9370038
-0.9432984 -0.9285444 -0.9329622 -0.9085772 -0.941479
-0.9355171 -0.903923 -0.939943 -0.960876 -0.9454363
-0.9374623 -0.9497926 -0.9503227 -0.9435614 -0.9680232
-0.9667201 -0.9699698 -0.9793554 -0.954225 -0.9609174
-0.963415 -0.9492867 -0.9825533 -0.9717664 -0.9736043
-0.9593613 -0.9567503 -0.9327271 -0.946452 -0.93569
-0.963642 -0.9513531 -0.9840355 -0.9669835 -0.9716925
-0.981226 -0.9574253 -0.9319739 -0.9684491 -0.966163
-0.9589041 -0.9810478 -0.965781 -0.965688 -0.9805524
-0.9758105 -0.9714266 -0.9776814 -0.9710807 -0.9848186
-0.980643 -0.9669864 -0.9796411 -0.9628014 -0.985134
-0.9581458 -0.9741944 -0.9176135 -0.9725739 -0.9754107
-0.9704826 -0.9746812 -0.9813359 -0.9574627 -0.9681554
-0.90772 -0.9812027 -0.9859641 -0.959162 -0.9555435
-0.95799 -0.9907656 -0.9487749 -0.9860362 -0.9660871
-0.9614667 -0.9869931 -0.9837329 -0.9588269 -0.9827946
-0.6435784 -0.987888 -0.9937017 -0.969759 -0.9942476
-0.9889307 -0.9882119 -0.9698166 -0.9699945 -0.9667012
-0.9743965 -0.9759481 -0.9940935 -0.9760185 -0.9934544

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of gravitational acceleration in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 41: time-gravity-acceleration-standarddeviation-z

* Class: character

* Unique values:
-0.9477172 -0.9520918 -0.9645808 -0.957205 -0.9521598
-0.9566401 -0.9608527 -0.947517 -0.9580588 -0.9613873
-0.9569032 -0.9291879 -0.9749394 -0.9551478 -0.9329813
-0.9449957 -0.9662316 -0.9565935 -0.944225 -0.9459814
-0.9439584 -0.9720728 -0.9629681 -0.955524 -0.9578627
-0.9502762 -0.9486376 -0.9724838 -0.9538504 -0.962823
-0.9123794 -0.9094697 -0.9214196 -0.9061964 -0.8816759
-0.8761689 -0.9069332 -0.8754508 -0.9216185 -0.9076496
-0.9301598 -0.8369357 -0.9327163 -0.9131536 -0.9020659
-0.8827224 -0.9296368 -0.9266754 -0.900514 -0.8588495
-0.8624028 -0.8780041 -0.9196195 -0.8940711 -0.8647458
-0.9380712 -0.9102711 -0.9078397 -0.9040641 -0.9349529
-0.8959397 -0.8999439 -0.9271927 -0.9343788 -0.9287565
-0.89719 -0.9258149 -0.8795653 -0.9340083 -0.9105889
-0.9010978 -0.8993631 -0.9163246 -0.906594 -0.9058883
-0.9261917 -0.9330818 -0.9209215 -0.9170597 -0.8693009
-0.8776671 -0.9314383 -0.9377538 -0.8766413 -0.9020852
-0.9353993 -0.893963 -0.9216617 -0.9196935 -0.9422077
-0.9490409 -0.8977363 -0.945009 -0.9554758 -0.8686025
-0.9354753 -0.9716616 -0.9384157 -0.9529737 -0.9458136
-0.9566106 -0.960395 -0.9654265 -0.9279506 -0.9239536
-0.96946 -0.9445809 -0.9672681 -0.9560877 -0.966032
-0.9566357 -0.9544159 -0.9509493 -0.8858541 -0.9668985
-0.9562086 -0.9309796 -0.9783402 -0.935855 -0.9634068
-0.9763241 -0.9281616 -0.9146085 -0.9427951 -0.939161
-0.9182939 -0.9894333 -0.9407577 -0.9588102 -0.9595628
-0.9691718 -0.958862 -0.95859 -0.9588902 -0.9471997
-0.9677926 -0.9642285 -0.96817 -0.9517822 -0.9844645
-0.9492074 -0.9459271 -0.8994048 -0.9322453 -0.9595797
-0.9395341 -0.9768272 -0.9760443 -0.9424373 -0.9461849
-0.8523663 -0.9648075 -0.9770766 -0.9281307 -0.961909
-0.9418363 -0.9841926 -0.9013039 -0.9507104 -0.967886
-0.9571646 -0.988819 -0.9524163 -0.9524354 -0.9767805
-0.6101612 -0.9840817 -0.9890563 -0.9791247 -0.9857782
-0.9832745 -0.9842304 -0.9761766 -0.9712047 -0.9630456
-0.959644 -0.9598929 -0.9909572 -0.9765186 -0.9792397

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of gravitational acceleration in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 42: time-body-acceleration-jerk-standarddeviation-x

* Class: character

* Unique values:
-0.1136156 -0.2686796 -0.302891 -0.1327848 -0.3460262
-0.2586886 -0.4285163 -0.454497 -0.3732176 -0.3962237
-0.3554926 0.1103067 -0.1148889 0.03587871 -0.2293281
-0.6076209 -0.3284529 -0.316184 -0.3357002 -0.2214335
-0.3744009 -0.2775305 -0.2970426 -0.2067338 -0.0521991
-0.01350661 -0.2209101 -0.3680569 -0.09064504 -0.4858633
-0.4468439 -0.4583646 -0.2238966 -0.1803012 -0.4151531
-0.1866189 -0.4529617 -0.3687804 -0.1869447 -0.5210891
-0.2926658 -0.1742791 -0.424052 -0.008539927 -0.3653986
-0.6636427 -0.29088 -0.4680662 -0.3126717 -0.1823658
-0.5354202 -0.2761219 -0.380488 -0.3352916 -0.1872202
-0.359857 -0.4873255 -0.5632021 -0.1856954 -0.4987647
-0.01228386 -0.085801 0.03224155 0.1652711 0.02850339
0.2501437 -0.08342127 0.01295975 0.1345938 -0.1011869
-0.1034365 0.544273 0.002146557 0.08691398 0.1989471
-0.5019684 -0.1281116 -0.003583389 -0.01676522 -0.02395257
-0.2266439 0.1472491 -0.1457597 0.01762334 0.2232758
0.006319144 -0.0740908 -0.3872239 -0.1356996 -0.3372189
-0.9864307 -0.9744674 -0.9752049 -0.9699295 -0.9821581
-0.9851888 -0.9803352 -0.9808907 -0.9881623 -0.9908611
-0.9943406 -0.9870433 -0.9894394 -0.9816641 -0.9845618
-0.9922786 -0.9922584 -0.9906581 -0.9762867 -0.9935256
-0.9888646 -0.9880559 -0.9767422 -0.9645359 -0.9889464
-0.9764942 -0.9928273 -0.9916247 -0.9820782 -0.9885644
-0.9946045 -0.9570865 -0.9626471 -0.9731326 -0.9764035
-0.9891989 -0.9925274 -0.9782485 -0.9854591 -0.9910265
-0.992094 -0.984792 -0.9770634 -0.9756391 -0.983142
-0.9883127 -0.9904984 -0.9876284 -0.9686046 -0.9936528
-0.9684307 -0.9810857 -0.9725865 -0.9699734 -0.9643115
-0.9724402 -0.9876361 -0.9894367 -0.9595283 -0.9805738
-0.9584821 -0.9808793 -0.9833079 -0.9663411 -0.9809778
-0.973253 -0.9852591 -0.9714736 -0.9817394 -0.9884167
-0.981489 -0.9836052 -0.9848265 -0.9703552 -0.9863604
-0.9733234 -0.9893158 -0.9864719 -0.9801647 -0.992006
-0.9774638 -0.9858722 -0.9783028 -0.9647405 -0.9780075
-0.9692763 -0.98542 -0.9859211 -0.9842707 -0.9863654

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 43: time-body-acceleration-jerk-standarddeviation-y

* Class: character

* Unique values:
0.0670025 -0.04496196 -0.09103974 0.008088974 -0.05474489
0.2339875 -0.1814192 -0.3443396 -0.03192655 -0.4255639
-0.0935385 0.08092712 -0.03471439 0.2255423 -0.08050173
-0.3826197 -0.2618636 -0.1040905 -0.2201231 -0.08717464
-0.2707093 -0.01660224 -0.2211651 -0.2769299 0.0750805
-0.08940497 0.05654888 -0.3201588 0.2443109 -0.3022202
-0.3782744 -0.2516804 -0.1250266 -0.04139946 -0.5198976
-0.01235011 -0.4281192 -0.3364272 -0.3118614 -0.4256259
-0.3497919 -0.01288655 -0.2032097 -0.05757845 -0.328225
-0.6271312 -0.3997715 -0.4268335 -0.3316024 -0.3886242
-0.5872145 -0.185649 -0.2815432 -0.586147 -0.1778031
-0.311329 -0.3233339 -0.5679406 -0.2607897 -0.5152208
-0.1016014 -0.1114392 0.04736123 0.276544 -0.2962797
0.2881407 -0.1268167 0.1927918 0.01580592 -0.2616848
-0.3040635 0.3553067 -0.07960098 0.01986133 -0.08833012
-0.3716615 -0.0864049 -0.1385281 0.02655301 -0.07734084
-0.1946561 0.126828 -0.1462423 -0.3094425 -0.1050204
0.06292167 -0.1490278 -0.4470339 0.289671 -0.1692919
-0.981372 -0.9536314 -0.9527863 -0.9451437 -0.9694587
-0.9807846 -0.9667666 -0.9678284 -0.978127 -0.981801
-0.988637 -0.9792677 -0.9790028 -0.9647828 -0.9780458
-0.982871 -0.9862152 -0.9850975 -0.9622195 -0.9840551
-0.9804209 -0.977984 -0.9445961 -0.9567775 -0.9807568
-0.9640475 -0.9842676 -0.9840027 -0.9708969 -0.9795737
-0.9856487 -0.9416868 -0.9312171 -0.9493623 -0.9658106
-0.9764421 -0.9794283 -0.9663624 -0.9677204 -0.982622
-0.9866613 -0.9705433 -0.9639215 -0.9523035 -0.97522
-0.9722724 -0.9759355 -0.9758297 -0.9337682 -0.9833382
-0.9573189 -0.9710594 -0.9383547 -0.9638493 -0.9413287
-0.9532031 -0.9777042 -0.9752778 -0.9356057 -0.9677456
-0.9241493 -0.9687107 -0.9645604 -0.9336745 -0.9730932
-0.976521 -0.9727775 -0.9681276 -0.9709216 -0.9848673
-0.9769605 -0.9745245 -0.9715848 -0.9551515 -0.9886116
-0.9456872 -0.9871829 -0.9851595 -0.9786795 -0.9895136
-0.9710498 -0.9831725 -0.9422095 -0.9639967 -0.9669308
-0.9626395 -0.9801523 -0.9855543 -0.9770026 -0.9824305

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 44: time-body-acceleration-jerk-standarddeviation-z

* Class: character

* Unique values:
-0.5026998 -0.5294861 -0.6128953 -0.5757775 -0.1494885
-0.3832006 -0.7206547 -0.4727911 -0.6862684 -0.4402582
-0.5343033 -0.1793905 -0.4251426 -0.3131559 -0.02931151
-0.6756014 -0.3974835 -0.4011885 -0.5374705 -0.461758
-0.5213519 -0.5860904 -0.7513914 -0.4097645 -0.5116629
-0.5122768 -0.3746332 -0.6333259 -0.3876646 -0.4911895
-0.7065935 -0.7085517 -0.638369 -0.5608307 -0.6078084
-0.4475182 -0.7853592 -0.3278688 -0.7488095 -0.5934111
-0.6574308 -0.4442822 -0.5620524 -0.4717033 -0.408094
-0.8124584 -0.6779956 -0.6337229 -0.6374889 -0.6787638
-0.761942 -0.5737464 -0.7264953 -0.647296 -0.6075205
-0.7193364 -0.6609213 -0.7608299 -0.5136412 -0.5238073
-0.345735 -0.5717352 -0.5226516 -0.3368173 -0.3471078
-0.01351363 -0.5797105 -0.1336341 -0.4040056 -0.3033816
-0.5363316 -0.02001111 -0.2460619 -0.4778066 0.03101571
-0.7114947 -0.379336 -0.4093109 -0.4270533 -0.4787642
-0.4670702 -0.340122 -0.626647 -0.3595134 -0.3181884
-0.4986558 -0.3170466 -0.6512467 -0.3815034 -0.2902394
-0.9879108 -0.9746616 -0.9734365 -0.958573 -0.9722565
-0.9852858 -0.9834416 -0.9761334 -0.987011 -0.9834872
-0.9905293 -0.9867047 -0.9858236 -0.9789284 -0.975979
-0.9884332 -0.9900087 -0.988904 -0.9763274 -0.9901687
-0.9881644 -0.9875182 -0.9790388 -0.9618894 -0.9882558
-0.9791135 -0.9876121 -0.9901531 -0.9765225 -0.9846629
-0.9922512 -0.9730596 -0.9638321 -0.9675472 -0.9720601
-0.9826109 -0.990133 -0.9707667 -0.9853019 -0.9880738
-0.991217 -0.9861425 -0.9779157 -0.9814781 -0.9735952
-0.9870627 -0.9866934 -0.9873548 -0.9697654 -0.9905939
-0.9688973 -0.9828414 -0.9730542 -0.9705843 -0.9764306
-0.975557 -0.9869262 -0.9884552 -0.9589363 -0.9777164
-0.9548551 -0.9820932 -0.9854194 -0.9596461 -0.9729831
-0.9660876 -0.9821118 -0.9724319 -0.978403 -0.9876441
-0.982813 -0.9882602 -0.9839776 -0.974527 -0.9846635
-0.9678355 -0.9890646 -0.9896851 -0.9730717 -0.9932883
-0.9795179 -0.988442 -0.978512 -0.9585625 -0.9762567
-0.9706293 -0.9830707 -0.9906602 -0.9849892 -0.9830874

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 45: time-body-angularvelocity-standarddeviation-x

* Class: character

* Unique values:
-0.4735355 -0.5718696 -0.4908775 -0.446021 -0.5033135
-0.1992097 -0.5963469 -0.6003882 -0.3296246 -0.6541718
-0.4798135 -0.0264358 -0.4322329 -0.3185379 -0.4943226
-0.4011588 -0.4928857 -0.6068602 -0.5037986 -0.5988687
-0.3879206 -0.5615503 -0.5009167 -0.4761635 -0.4142055
-0.5462635 -0.3760599 -0.7044398 -0.2329406 -0.5805974
-0.5448711 -0.4560393 -0.4433423 -0.3219737 -0.3638532
-0.3674284 -0.5013316 -0.4542833 -0.4152513 -0.5080872
-0.4965627 -0.4068 -0.5319094 -0.3014917 -0.5506646
-0.4890118 -0.5502744 -0.562461 -0.5188182 -0.3239047
-0.4938375 -0.4392531 -0.454431 -0.3439766 -0.3085347
-0.5266593 -0.5410667 -0.5938415 -0.4927012 -0.5774264
-0.4580305 -0.2616534 -0.4606468 -0.1983039 -0.4077441
-0.2584309 -0.374069 -0.3545516 -0.3186925 -0.4541885
-0.3704369 0.2676572 -0.4421486 -0.2373492 -0.416133
-0.2888248 -0.3313129 -0.3637229 -0.2681063 -0.2820773
-0.2659232 -0.3207892 -0.3702447 -0.3964292 -0.3047454
-0.3621431 -0.4170142 -0.502473 -0.2049396 -0.4319191
-0.9772113 -0.9654348 -0.9662255 -0.9573677 -0.941871
-0.9845241 -0.9881649 -0.98083 -0.9882041 -0.9810374
-0.9896383 -0.9846253 -0.9884105 -0.9810992 -0.9803637
-0.9899076 -0.9910277 -0.9884924 -0.979672 -0.9901787
-0.9881327 -0.985742 -0.9701318 -0.95902 -0.9888731
-0.9744254 -0.9858443 -0.991957 -0.976309 -0.9881116
-0.9871919 -0.9004622 -0.9103952 -0.9475613 -0.9452477
-0.9729904 -0.9802425 -0.9610918 -0.9477908 -0.9734001
-0.9813731 -0.9461097 -0.9625145 -0.917837 -0.9420112
-0.9713574 -0.9737851 -0.969902 -0.8840322 -0.9779948
-0.9114085 -0.9729986 -0.909688 -0.9219906 -0.9298951
-0.8836553 -0.9555774 -0.9622542 -0.8867492 -0.9607387
-0.8735439 -0.9745458 -0.9794987 -0.9553782 -0.9601268
-0.965204 -0.9808369 -0.957221 -0.9571677 -0.9770108
-0.9758931 -0.9813576 -0.9754119 -0.9566419 -0.9818494
-0.8897696 -0.9903282 -0.9888372 -0.9551623 -0.9942766
-0.9736628 -0.9882752 -0.9731024 -0.9422465 -0.9617132
-0.9660907 -0.9721435 -0.9928726 -0.9844774 -0.9826517

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 46: time-body-angularvelocity-standarddeviation-y

* Class: character

* Unique values:
-0.05460777 -0.5637933 -0.504622 -0.3317023 -0.2310983
-0.2119973 -0.4996253 -0.01483926 -0.420865 -0.6125936
-0.4549329 -0.1144061 -0.3978923 -0.4863221 0.2594572
-0.6040321 -0.5757354 -0.5298651 -0.497684 -0.1818026
0.006002779 -0.5384537 -0.6653941 -0.4670542 -0.2508533
-0.4494014 -0.2900236 -0.4964315 0.08583215 -0.4871663
0.004105184 -0.5827428 -0.4403458 -0.3157999 -0.5729968
-0.06669809 -0.2820445 0.4765187 -0.3302332 -0.5863829
-0.4930441 -0.1726332 -0.4631368 -0.4894179 -0.2936819
-0.4336734 -0.6030971 -0.5879668 -0.4793195 0.0461103
-0.08404815 -0.4662983 -0.5511856 -0.4008591 0.04117247
-0.5229498 -0.4035722 -0.507297 -0.1047222 -0.5685341
-0.1263492 -0.5467404 -0.4091341 -0.1892296 -0.2926261
0.02431312 -0.4959117 0.05699022 -0.3732082 -0.5283293
-0.459282 0.04831477 -0.3537335 -0.5503032 0.2138256
-0.5233779 -0.4734081 -0.4818134 -0.2593687 -0.3904601
-0.2853924 -0.4157391 -0.6994535 -0.3407652 -0.3114075
-0.4762877 -0.1988482 -0.6172308 -0.1467942 -0.4846735
-0.9664739 -0.9448546 -0.9500641 -0.94413 -0.9441243
-0.9715007 -0.982249 -0.9620482 -0.9753215 -0.9583366
-0.9861287 -0.9597583 -0.9763805 -0.9501735 -0.9481095
-0.9811935 -0.9734448 -0.9820675 -0.9563165 -0.988334
-0.9764776 -0.9789195 -0.9584681 -0.9191882 -0.9843733
-0.9604971 -0.9796685 -0.9867533 -0.9601045 -0.977954
-0.9877344 -0.9277886 -0.9337381 -0.9424866 -0.9496469
-0.969421 -0.9942105 -0.9462806 -0.9713326 -0.9801103
-0.9851212 -0.9695763 -0.9559792 -0.9647147 -0.9480748
-0.9767576 -0.9824081 -0.982499 -0.9400063 -0.9903649
-0.9407054 -0.971442 -0.9492271 -0.9460466 -0.9588612
-0.9414692 -0.9717218 -0.9804171 -0.9039139 -0.9672985
-0.9510904 -0.9772727 -0.9774274 -0.9436349 -0.9450719
-0.9520394 -0.9824426 -0.9324998 -0.9611429 -0.9707475
-0.9714843 -0.9636177 -0.9521471 -0.961885 -0.9591952
-0.9366308 -0.9793257 -0.9842875 -0.9600575 -0.992751
-0.9660417 -0.9822916 -0.9611093 -0.9266185 -0.9536602
-0.9538739 -0.9627046 -0.9842029 -0.9729419 -0.9602996

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 47: time-body-angularvelocity-standarddeviation-z

* Class: character

* Unique values:
-0.3442666 -0.4766964 -0.3187006 -0.3831393 -0.3960135
-0.07544478 -0.4341782 -0.1260908 -0.4865327 -0.3654895
-0.3860444 -0.104203 -0.3118756 -0.1514395 -0.2096349
-0.5627752 -0.3545491 -0.2501204 -0.2426014 -0.4302324
-0.1825697 -0.4810855 -0.6626082 -0.2656835 -0.1745249
-0.3501703 -0.3633699 -0.5114172 -0.1657485 -0.396154
-0.5071687 -0.4923273 -0.2654513 -0.1839002 -0.3489801
0.3375265 -0.6946589 0.5648758 -0.4773659 -0.3650252
-0.2344024 -0.1101172 0.05171554 -0.1577581 -0.03173012
-0.5641956 -0.3090881 -0.1699608 -0.1893068 -0.3748151
-0.2115736 -0.1639958 -0.360811 -0.1381765 -0.3205093
-0.3496146 -0.2118051 -0.4339222 0.1841193 -0.2745963
-0.1247025 -0.4423078 -0.227869 -0.09407979 -0.4010514
-0.1295652 -0.3189596 0.3561986 -0.2506481 -0.4446363
-0.468463 -0.03140835 -0.3497595 -0.280418 -0.2087025
-0.4437805 -0.3320502 -0.2578462 -0.307025 -0.3111226
-0.2953704 -0.2794184 -0.4984808 -0.2796852 -0.03530218
-0.3378067 -0.3227741 -0.4836583 0.1597235 -0.4910772
-0.9414259 -0.9264137 -0.9406379 -0.9396814 -0.9370212
-0.9596235 -0.9528443 -0.9529044 -0.9637658 -0.9602878
-0.9797052 -0.965595 -0.9769727 -0.9465014 -0.9597186
-0.9726376 -0.9664413 -0.9757133 -0.9566328 -0.971228
-0.9550532 -0.9598037 -0.9279722 -0.9301768 -0.960446
-0.9515525 -0.9668964 -0.9815255 -0.9457718 -0.9712777
-0.9806456 -0.9123641 -0.9074716 -0.9477822 -0.9516308
-0.9741183 -0.9806367 -0.9465891 -0.968167 -0.982357
-0.9855384 -0.9607343 -0.959327 -0.9605825 -0.9623897
-0.9718141 -0.9748914 -0.9812818 -0.9254914 -0.9833686
-0.9308347 -0.9648567 -0.909995 -0.9398897 -0.9536811
-0.9503648 -0.9734366 -0.9728204 -0.9073433 -0.9699587
-0.9082847 -0.9635056 -0.9605838 -0.9391419 -0.9552949
-0.9675898 -0.9598974 -0.952297 -0.9565371 -0.9847815
-0.9762008 -0.9731975 -0.9813454 -0.9332519 -0.9839201
-0.910928 -0.9693022 -0.978375 -0.9623749 -0.9749946
-0.9688892 -0.9603066 -0.9620738 -0.9615954 -0.9719406
-0.9501574 -0.9673505 -0.9851084 -0.9724099 -0.9817014

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 48: time-body-angularvelocity-jerk-standarddeviation-x

* Class: character

* Unique values:
-0.2074219 -0.385923 -0.3576814 -0.1826009 -0.2116673
-0.2460828 -0.5416164 -0.5717599 -0.283768 -0.6758897
-0.4312961 0.08011865 -0.2389083 -0.2266564 -0.3639694
-0.5079571 -0.4174386 -0.5232569 -0.3994171 -0.3959096
-0.4603454 -0.3895498 -0.4923411 -0.5269853 -0.3660637
-0.3908072 -0.2168121 -0.578134 -0.2532274 -0.4907735
-0.6147865 -0.5072708 -0.3052452 -0.1867633 -0.6168127
-0.4050707 -0.6604313 -0.646611 -0.5255339 -0.7072642
-0.6060443 -0.2393764 -0.5735418 -0.3966992 -0.5483189
-0.6938549 -0.5158294 -0.6957749 -0.4942829 -0.4749326
-0.7427495 -0.4648544 -0.5336668 -0.6604195 -0.4272913
-0.5499992 -0.6310376 -0.760689 -0.4711077 -0.6404895
-0.4870273 -0.2856832 -0.4113022 0.0393388 -0.510731
-0.2678879 -0.5343749 -0.5370021 -0.4559808 -0.623676
-0.5268018 0.1791486 -0.5496483 -0.264848 -0.3230157
-0.4301344 -0.1708427 -0.4938376 -0.1639449 -0.3478076
-0.5427645 -0.2439406 -0.3959955 -0.5096693 -0.4169861
-0.2786082 -0.4637367 -0.6767162 -0.2492351 -0.3584446
-0.9917316 -0.9725469 -0.966037 -0.9437148 -0.974369
-0.9932646 -0.9905015 -0.9902842 -0.992889 -0.9895833
-0.9952559 -0.9884648 -0.989473 -0.9856713 -0.9870846
-0.9923047 -0.9958825 -0.9936403 -0.9821557 -0.993322
-0.9938685 -0.989709 -0.9698997 -0.9645323 -0.9923267
-0.9773299 -0.991371 -0.9941702 -0.9774149 -0.991442
-0.9929451 -0.9409376 -0.94193 -0.9464236 -0.9659834
-0.9815731 -0.9866904 -0.9699489 -0.9715143 -0.9871023
-0.9892572 -0.9751267 -0.9718665 -0.949716 -0.9727707
-0.9779097 -0.9784724 -0.9826424 -0.9283434 -0.9832931
-0.9601191 -0.979324 -0.9496339 -0.9491057 -0.9503675
-0.9554156 -0.9784651 -0.981971 -0.9216442 -0.9758568
-0.9186085 -0.9803286 -0.9834223 -0.9396116 -0.9738372
-0.9699241 -0.9817248 -0.970275 -0.973924 -0.9858355
-0.9807924 -0.9761057 -0.9846437 -0.9720926 -0.9850279
-0.9573811 -0.9926652 -0.9935037 -0.9608029 -0.9965425
-0.9837758 -0.9932358 -0.9751032 -0.945329 -0.9659006
-0.9671982 -0.9814047 -0.9961044 -0.9892836 -0.9798657

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity jerk in axis X in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 49: time-body-angularvelocity-jerk-standarddeviation-y

* Class: character

* Unique values:
-0.3044685 -0.639088 -0.5714381 -0.4163902 -0.1741364
-0.4280557 -0.7379938 -0.5367377 -0.7024029 -0.7122378
-0.5602035 -0.2915948 -0.4828543 -0.6518755 0.2959459
-0.7996354 -0.5870001 -0.6341055 -0.6390186 -0.5879443
-0.4976218 -0.6341404 -0.8074199 -0.5492002 -0.5096833
-0.5812907 -0.3577609 -0.6949258 -0.1275541 -0.5142466
-0.6016967 -0.7757741 -0.631822 -0.4864941 -0.6712437
-0.4246757 -0.8094594 -0.3714797 -0.7630535 -0.7747191
-0.6767228 -0.4921222 -0.6044696 -0.7042554 -0.4935141
-0.8396991 -0.7252103 -0.7111484 -0.6905711 -0.7342252
-0.743337 -0.6454913 -0.8407228 -0.7086048 -0.6046291
-0.7611956 -0.6788059 -0.8288722 -0.3939886 -0.6466444
-0.2388248 -0.6809473 -0.5145915 -0.1935084 -0.2995202
-0.07045265 -0.6845933 -0.284318 -0.5749641 -0.5834218
-0.5721447 -0.01462992 -0.4424268 -0.6402801 0.1466501
-0.8104445 -0.5471984 -0.4594593 -0.4245679 -0.693469
-0.6137963 -0.4693967 -0.8168582 -0.4486025 -0.471651
-0.5174791 -0.2591632 -0.7526086 -0.3345688 -0.5193267
-0.9895181 -0.9786359 -0.9754339 -0.9617807 -0.9810247
-0.9888763 -0.9885548 -0.9869113 -0.9903133 -0.9906218
-0.9949819 -0.9874659 -0.9897227 -0.9802756 -0.9807274
-0.9913158 -0.9931398 -0.9922264 -0.9807139 -0.9953192
-0.9924913 -0.9908896 -0.9844414 -0.9719274 -0.9925845
-0.9793478 -0.9917734 -0.9942242 -0.9796841 -0.9897808
-0.9951379 -0.9684337 -0.9611777 -0.9624222 -0.9768378
-0.9855088 -0.9955716 -0.970693 -0.9881074 -0.9925894
-0.9936999 -0.9880967 -0.9768159 -0.9849001 -0.9725095
-0.9872421 -0.989767 -0.990798 -0.972977 -0.9955331
-0.968135 -0.9834473 -0.9760652 -0.9750365 -0.976445
-0.9711955 -0.9809827 -0.991152 -0.9476331 -0.9819836
-0.9679072 -0.9867627 -0.9837595 -0.9586288 -0.9764837
-0.9741865 -0.9908457 -0.9680429 -0.9804828 -0.9890466
-0.9831356 -0.9846077 -0.9819985 -0.9804842 -0.9794278
-0.9715643 -0.9890633 -0.9930259 -0.9803998 -0.9970816
-0.9803571 -0.9895675 -0.9868556 -0.9621702 -0.966621
-0.9659004 -0.9788547 -0.9905476 -0.9815401 -0.9780913

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity jerk in axis Y in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 50: time-body-angularvelocity-jerk-standarddeviation-z

* Class: character

* Unique values:
-0.4042555 -0.5366641 -0.1576825 -0.1666844 -0.458303
-0.388447 -0.5510799 -0.4971877 -0.5916686 -0.5712648
-0.5244229 -0.2134941 -0.4949277 -0.2342782 -0.3744568
-0.6595762 -0.485543 -0.426347 -0.4409279 -0.5041301
-0.4762088 -0.4354927 -0.6404541 -0.4578815 -0.3290795
-0.4806422 -0.3417658 -0.6632596 -0.2270443 -0.5579682
-0.606332 -0.5734339 -0.2821544 -0.1708148 -0.6821842
-0.4303667 -0.7771734 -0.3598166 -0.6579076 -0.717101
-0.6105862 -0.375415 -0.5641492 -0.5156978 -0.5437654
-0.7462683 -0.5563902 -0.6768765 -0.6035683 -0.558417
-0.6651506 -0.467596 -0.5562366 -0.6571142 -0.4822448
-0.6064121 -0.5508803 -0.7189518 -0.2538671 -0.6489753
-0.2687615 -0.3746054 -0.03442175 0.1932065 -0.4252004
-0.1896044 -0.4805592 0.09138576 -0.3945422 -0.5406335
-0.5427706 0.1166462 -0.4283377 -0.3587621 -0.3678696
-0.599482 -0.3589516 -0.3072683 -0.3362127 -0.3797694
-0.4988829 -0.2182663 -0.3257801 -0.4172396 -0.2271374
-0.3652322 -0.3670895 -0.6056554 0.003078546 -0.4786909
-0.9879358 -0.9737517 -0.9648785 -0.9587877 -0.9809547
-0.9852414 -0.981016 -0.9828191 -0.9879372 -0.9883643
-0.9938413 -0.9853107 -0.9879545 -0.9795441 -0.9881301
-0.9914914 -0.9919298 -0.9917668 -0.9710017 -0.9928338
-0.9881245 -0.9855423 -0.9688048 -0.9687389 -0.9902598
-0.977139 -0.9898614 -0.9928143 -0.9797421 -0.9898502
-0.9921085 -0.958293 -0.9447553 -0.9627582 -0.9781668
-0.9892709 -0.9906632 -0.9746879 -0.9812931 -0.9926985
-0.9923271 -0.9834539 -0.9754273 -0.9797536 -0.9846545
-0.9807223 -0.9859925 -0.9889704 -0.9564972 -0.9906857
-0.9708457 -0.9736101 -0.957982 -0.9697265 -0.969051
-0.9736894 -0.985177 -0.986259 -0.9486699 -0.9832769
-0.9577902 -0.9833383 -0.9896796 -0.9595791 -0.9888719
-0.9876012 -0.9865491 -0.9797114 -0.9801127 -0.9944652
-0.9882217 -0.9869584 -0.9887495 -0.9786363 -0.994909
-0.9742423 -0.9937598 -0.9932967 -0.9814189 -0.9953808
-0.9807689 -0.9880358 -0.9839654 -0.9770762 -0.9839493
-0.9699539 -0.9898015 -0.9925481 -0.9866705 -0.9923816

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity jerk in axis Z in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 51: time-body-acceleration-magnitude-standarddeviation

* Class: character

* Unique values:
-0.2196886 -0.3284289 -0.3771787 -0.2667342 -0.1985547
-0.1804073 -0.4877359 -0.3638056 -0.3238783 -0.4718093
-0.4618379 -0.09939272 -0.2997098 -0.1615918 -0.2099894
-0.5656015 -0.4218483 -0.4073558 -0.392694 -0.2626951
-0.3598734 -0.4225442 -0.5276791 -0.3794288 -0.1856024
-0.2369729 -0.2925464 -0.4603465 -0.1569304 -0.481064
-0.3249709 -0.3335974 -0.1367364 -0.07915088 -0.3347446
-0.2272003 -0.2895921 -0.01976867 -0.1365522 -0.3347951
-0.1028777 -0.1776668 -0.2784743 -0.1587575 -0.2718937
-0.4800066 -0.1507071 -0.3799488 -0.2119287 -0.04146961
-0.3274108 -0.205977 -0.2120123 -0.400222 -0.2115375
-0.285844 -0.3263396 -0.3718416 -0.1982697 -0.3068545
0.01988435 -0.04113401 0.2054224 0.3736119 0.214544
0.1313379 0.05077437 0.4284059 0.353204 0.1191837
0.09140768 0.4134724 0.2643419 0.1332675 0.230364
-0.2594652 0.1470017 0.1211763 0.1354656 0.1344812
-0.01357712 0.2155863 -0.0819559 0.2651201 0.1569982
0.09726083 -0.01560982 -0.2299342 0.1726364 -0.02248391
-0.9270784 -0.8703017 -0.920939 -0.9315727 -0.8819576
-0.9299436 -0.9445818 -0.9254958 -0.9379779 -0.9410512
-0.9650652 -0.9517557 -0.9719943 -0.9243362 -0.9249633
-0.9600034 -0.9336028 -0.9695267 -0.9477827 -0.9692903
-0.9429015 -0.9530814 -0.9144078 -0.8637564 -0.9396696
-0.9475171 -0.9379357 -0.9815953 -0.937764 -0.9637797
-0.9819429 -0.9151433 -0.8797738 -0.9393102 -0.9335902
-0.9371872 -0.9803054 -0.9367356 -0.9486004 -0.9572945
-0.9753773 -0.9625493 -0.9569199 -0.9398663 -0.9516699
-0.9680756 -0.9626973 -0.9663601 -0.9176583 -0.9817457
-0.9165704 -0.957875 -0.8909767 -0.936105 -0.9372645
-0.9352329 -0.9685197 -0.9722855 -0.9106721 -0.947901
-0.7951449 -0.9642182 -0.9586128 -0.8973262 -0.9070395
-0.9132503 -0.9728918 -0.8565931 -0.9433141 -0.9578959
-0.948258 -0.9631935 -0.9421864 -0.9094078 -0.957872
-0.6492548 -0.9643552 -0.9789202 -0.954574 -0.9815721
-0.9601679 -0.9728739 -0.9312922 -0.9151268 -0.9403017
-0.9365427 -0.9479447 -0.9864645 -0.9394894 -0.9693548

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation).


Variable 52: time-gravity-acceleration-magnitude-standarddeviation

* Class: character

* Unique values:
-0.2196886 -0.3284289 -0.3771787 -0.2667342 -0.1985547
-0.1804073 -0.4877359 -0.3638056 -0.3238783 -0.4718093
-0.4618379 -0.09939272 -0.2997098 -0.1615918 -0.2099894
-0.5656015 -0.4218483 -0.4073558 -0.392694 -0.2626951
-0.3598734 -0.4225442 -0.5276791 -0.3794288 -0.1856024
-0.2369729 -0.2925464 -0.4603465 -0.1569304 -0.481064
-0.3249709 -0.3335974 -0.1367364 -0.07915088 -0.3347446
-0.2272003 -0.2895921 -0.01976867 -0.1365522 -0.3347951
-0.1028777 -0.1776668 -0.2784743 -0.1587575 -0.2718937
-0.4800066 -0.1507071 -0.3799488 -0.2119287 -0.04146961
-0.3274108 -0.205977 -0.2120123 -0.400222 -0.2115375
-0.285844 -0.3263396 -0.3718416 -0.1982697 -0.3068545
0.01988435 -0.04113401 0.2054224 0.3736119 0.214544
0.1313379 0.05077437 0.4284059 0.353204 0.1191837
0.09140768 0.4134724 0.2643419 0.1332675 0.230364
-0.2594652 0.1470017 0.1211763 0.1354656 0.1344812
-0.01357712 0.2155863 -0.0819559 0.2651201 0.1569982
0.09726083 -0.01560982 -0.2299342 0.1726364 -0.02248391
-0.9270784 -0.8703017 -0.920939 -0.9315727 -0.8819576
-0.9299436 -0.9445818 -0.9254958 -0.9379779 -0.9410512
-0.9650652 -0.9517557 -0.9719943 -0.9243362 -0.9249633
-0.9600034 -0.9336028 -0.9695267 -0.9477827 -0.9692903
-0.9429015 -0.9530814 -0.9144078 -0.8637564 -0.9396696
-0.9475171 -0.9379357 -0.9815953 -0.937764 -0.9637797
-0.9819429 -0.9151433 -0.8797738 -0.9393102 -0.9335902
-0.9371872 -0.9803054 -0.9367356 -0.9486004 -0.9572945
-0.9753773 -0.9625493 -0.9569199 -0.9398663 -0.9516699
-0.9680756 -0.9626973 -0.9663601 -0.9176583 -0.9817457
-0.9165704 -0.957875 -0.8909767 -0.936105 -0.9372645
-0.9352329 -0.9685197 -0.9722855 -0.9106721 -0.947901
-0.7951449 -0.9642182 -0.9586128 -0.8973262 -0.9070395
-0.9132503 -0.9728918 -0.8565931 -0.9433141 -0.9578959
-0.948258 -0.9631935 -0.9421864 -0.9094078 -0.957872
-0.6492548 -0.9643552 -0.9789202 -0.954574 -0.9815721
-0.9601679 -0.9728739 -0.9312922 -0.9151268 -0.9403017
-0.9365427 -0.9479447 -0.9864645 -0.9394894 -0.9693548

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial gravitational acceleration in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation).


Variable 53: time-body-acceleration-jerk-magnitude-standarddeviation

* Class: character

* Unique values:
-0.07447175 -0.1399164 -0.2822423 -0.07060296 -0.02755733
-0.1845711 -0.4031413 -0.4397469 -0.3100714 -0.4033866
-0.2756728 0.03565588 -0.0838488 0.1115329 -0.02681944
-0.5428701 -0.2793508 -0.2661389 -0.3904497 -0.1330363
-0.353751 -0.164151 -0.316919 -0.3171135 0.03760834
-0.02028505 -0.1317885 -0.4254187 0.02107657 -0.4098246
-0.4789916 -0.4390206 -0.3101865 -0.1699704 -0.4712657
-0.2282964 -0.4904858 -0.3370863 -0.3133636 -0.4930671
-0.3909125 -0.2840607 -0.4041839 -0.08765016 -0.3627088
-0.6745131 -0.3345313 -0.4646106 -0.3253623 -0.2544852
-0.5618377 -0.2173894 -0.4372615 -0.4454854 -0.2260102
-0.329828 -0.4512259 -0.5793303 -0.2394444 -0.4410687
-0.02578772 -0.09263245 -0.02925705 0.2095022 0.09018363
0.2534083 -0.1270172 0.1947088 0.1596317 -0.07834989
-0.2065767 0.4506121 0.09523394 -0.0337641 0.2920872
-0.4829769 -0.111304 -0.03863674 -0.04188726 -0.03076934
-0.1252832 0.2296172 -0.2168589 0.03990782 0.1108772
0.06557813 -0.04339598 -0.3825173 0.04671858 -0.143502
-0.98412 -0.9665501 -0.9657577 -0.9481818 -0.9702433
-0.9806674 -0.9745117 -0.9733434 -0.984639 -0.9836153
-0.9914465 -0.9842052 -0.9865209 -0.9685768 -0.9736688
-0.9883118 -0.9899861 -0.9892005 -0.9703016 -0.9905317
-0.9860576 -0.9844759 -0.9625491 -0.9517802 -0.9852099
-0.9727459 -0.9888131 -0.9911594 -0.9725379 -0.9854185
-0.9930962 -0.94877 -0.942962 -0.9560991 -0.9685664
-0.9799322 -0.988854 -0.9704372 -0.9799948 -0.9867616
-0.9903632 -0.9796408 -0.9716065 -0.9588251 -0.9748115
-0.9826371 -0.9826263 -0.9841591 -0.9540684 -0.9904957
-0.9507623 -0.9766753 -0.9581595 -0.9637642 -0.9520582
-0.9626789 -0.9818656 -0.9860153 -0.9384544 -0.9731083
-0.9282456 -0.9761213 -0.9774771 -0.9503419 -0.9673109
-0.9629545 -0.9765049 -0.9664509 -0.9736445 -0.987891
-0.9801267 -0.9806683 -0.9785526 -0.9598498 -0.9866857
-0.9619316 -0.9891019 -0.9885868 -0.9733126 -0.9946469
-0.9696423 -0.9855181 -0.9607864 -0.9550268 -0.967557
-0.9625809 -0.9800662 -0.9895263 -0.9801617 -0.9836059

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration jerk in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation).


Variable 54: time-body-angularvelocity-magnitude-standarddeviation

* Class: character

* Unique values:
-0.1869784 -0.5615107 -0.4921768 -0.3656029 -0.1982832
-0.2387467 -0.5583628 -0.2014019 -0.4257985 -0.6650784
-0.5224948 -0.02184632 -0.4083044 -0.3907757 0.1633465
-0.4898094 -0.5383293 -0.4824524 -0.4605117 -0.3588141
-0.2668457 -0.5530199 -0.5531161 -0.4897258 -0.4020251
-0.4132083 -0.2532401 -0.6085101 -0.03678532 -0.5638632
-0.1486193 -0.4088867 -0.3546879 -0.1998937 -0.4181449
-0.1093279 -0.3779099 0.299976 -0.288429 -0.5181896
-0.4408373 -0.2644014 -0.420236 -0.2025582 -0.366733
-0.3877541 -0.5140324 -0.5017754 -0.4769233 -0.08004762
-0.1692935 -0.3775322 -0.5109741 -0.4258398 -0.1130627
-0.5256869 -0.4156586 -0.5280581 -0.25393 -0.5039291
-0.2257244 -0.2457947 -0.3606783 -0.04262768 -0.2597516
-0.04662919 -0.3393498 -0.06651446 -0.2842497 -0.4223153
-0.3526873 0.2378212 -0.3884203 -0.263922 0.05399729
-0.3821609 -0.2961583 -0.3079521 -0.2244841 -0.2674098
-0.2082675 -0.2748441 -0.3805726 -0.3223315 -0.2803829
-0.3204586 -0.2367626 -0.5079955 -0.03057624 -0.3636949
-0.9345318 -0.9255181 -0.9314148 -0.9212595 -0.8980633
-0.9530016 -0.9599645 -0.9470812 -0.9634751 -0.9379424
-0.9754103 -0.9504918 -0.9712251 -0.9332685 -0.9370061
-0.9706391 -0.964742 -0.9707821 -0.951066 -0.971578
-0.9606413 -0.9613136 -0.9288983 -0.9066063 -0.9630646
-0.9467692 -0.9639406 -0.9813727 -0.9410699 -0.9692572
-0.97869 -0.8821252 -0.8670417 -0.9158916 -0.918439
-0.9532248 -0.9770714 -0.9314262 -0.9312868 -0.9641058
-0.9776808 -0.937951 -0.9456144 -0.9007766 -0.9237966
-0.9598843 -0.9626536 -0.9656933 -0.8769175 -0.9753587
-0.8872476 -0.9539434 -0.8851443 -0.9082914 -0.9204868
-0.8522716 -0.9449802 -0.9597971 -0.8436834 -0.9531048
-0.8190102 -0.9542751 -0.9582879 -0.9209145 -0.9186625
-0.9324708 -0.9547132 -0.9134332 -0.924043 -0.95902
-0.9593255 -0.9559066 -0.9492891 -0.9239116 -0.9572276
-0.8560174 -0.9656768 -0.9719157 -0.9289409 -0.9770401
-0.9512644 -0.9611641 -0.9470318 -0.8985579 -0.9274712
-0.9357257 -0.9446875 -0.9805609 -0.9621536 -0.9578299

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial angular velocity in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation).


Variable 55: time-body-angularvelocity-jerk-magnitude-standarddeviation

* Class: character

* Unique values:
-0.3253249 -0.5673716 -0.4891997 -0.3647083 -0.09534012
-0.5029573 -0.7536714 -0.6061033 -0.637786 -0.7228084
-0.5397085 -0.2714875 -0.45037 -0.5031063 0.2501732
-0.7570325 -0.6034687 -0.6187186 -0.5798612 -0.6122229
-0.5469773 -0.5577982 -0.7301464 -0.5998665 -0.5010279
-0.5488905 -0.3221184 -0.7265918 -0.1498641 -0.5560228
-0.648553 -0.718028 -0.5579881 -0.4400799 -0.6764281
-0.493975 -0.801127 -0.4858193 -0.7489548 -0.7972932
-0.6823116 -0.5074003 -0.6477234 -0.675633 -0.5512752
-0.8248833 -0.6618297 -0.7246712 -0.6701321 -0.7128463
-0.7744391 -0.5972917 -0.7552705 -0.7486513 -0.6182724
-0.7134067 -0.6692164 -0.8355251 -0.4553961 -0.6381804
-0.3065106 -0.5839192 -0.4503032 -0.1112284 -0.2947787
-0.1574849 -0.6777506 -0.274744 -0.5636401 -0.5958222
-0.5923195 -0.0438985 -0.5091309 -0.6176594 0.05949085
-0.679606 -0.4631408 -0.4658075 -0.4071323 -0.597057
-0.6176621 -0.3431879 -0.6370795 -0.4558554 -0.4941058
-0.4524499 -0.2764915 -0.7441595 -0.2755919 -0.4591599
-0.9883087 -0.9767727 -0.9703926 -0.9501506 -0.9762144
-0.9867567 -0.9862567 -0.986964 -0.98972 -0.9882613
-0.9944468 -0.9858313 -0.9903022 -0.9765038 -0.979227
-0.9917664 -0.9940332 -0.9921128 -0.9784419 -0.9949053
-0.9912802 -0.9895949 -0.9758067 -0.9663611 -0.9916962
-0.9782605 -0.9914149 -0.9948689 -0.9750762 -0.9907245
-0.9947332 -0.9576798 -0.9479707 -0.9525362 -0.9721079
-0.9824603 -0.9925792 -0.9668342 -0.9814328 -0.9908094
-0.9923721 -0.9830694 -0.9761537 -0.9660861 -0.9723874
-0.9832308 -0.9842538 -0.9888198 -0.9562665 -0.9914536
-0.9559957 -0.9772044 -0.9642828 -0.9652871 -0.9644094
-0.9619232 -0.9761977 -0.9885197 -0.9263288 -0.9799957
-0.935841 -0.9831393 -0.9837714 -0.953157 -0.9712051
-0.9690291 -0.9844765 -0.9640099 -0.97365 -0.9882124
-0.9820381 -0.9802455 -0.9822465 -0.9742017 -0.9813148
-0.9683095 -0.9899174 -0.9934843 -0.9697733 -0.9976661
-0.9761771 -0.9897181 -0.9826982 -0.9528016 -0.9596329
-0.962012 -0.9751133 -0.9921531 -0.9810793 -0.9786591

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial angular velocity jerk in the time domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation).


Variable 56: frequency-body-acceleration-standarddeviation-x

* Class: character

* Unique values:
-0.3191347 -0.3792768 -0.2975174 -0.3452277 -0.3220349
-0.1483869 -0.4337033 -0.39586 -0.3325206 -0.4090705
-0.3048063 -0.05788208 -0.3085472 0.02439582 -0.3298073
-0.59145 -0.3479979 -0.3652563 -0.2988324 -0.190356
-0.3449281 -0.4576514 -0.4472349 -0.21802 -0.2063665
-0.1607073 -0.3532998 -0.3780682 -0.2349856 -0.4627336
-0.3374282 -0.285333 -0.004738197 -0.02113356 -0.2798701
-0.175285 -0.1987337 -0.3049802 -0.008382438 -0.3696361
-0.03553812 -0.1199348 -0.213184 0.1320488 -0.2343095
-0.4379758 -0.1428438 -0.2535041 -0.2337266 -0.07906253
-0.3262604 -0.3205824 -0.1732172 -0.3698158 -0.1719573
-0.2789297 -0.2660813 -0.3506398 -0.1084448 -0.3261656
0.02433084 -0.06544172 0.3365547 0.4033698 0.07301108
-0.02604633 0.1799068 0.01408261 0.4663257 0.2661155
0.2589417 0.6585065 0.2669878 0.402892 -0.02829625
-0.2130289 0.2267838 0.1949127 0.1377971 0.1874386
-0.04052571 0.01610462 0.03900983 0.2504888 0.3249577
0.04833471 -0.06804362 -0.2855359 0.1130334 -0.03490859
-0.9764123 -0.9716059 -0.9825908 -0.9824513 -0.97288
-0.9782567 -0.9833898 -0.9763031 -0.9873848 -0.9868924
-0.9946573 -0.9752042 -0.9923752 -0.9786232 -0.9883453
-0.9921243 -0.9787552 -0.9886592 -0.9849567 -0.9906175
-0.983231 -0.9873621 -0.9819082 -0.9569035 -0.9822424
-0.9839995 -0.9894106 -0.9949066 -0.9839784 -0.9911
-0.9960283 -0.9699313 -0.9706684 -0.9840674 -0.9805413
-0.9891837 -0.9955738 -0.9736056 -0.990061 -0.9891006
-0.9913185 -0.9911617 -0.9828928 -0.9874003 -0.9863334
-0.9928517 -0.9937024 -0.9928758 -0.9802675 -0.9966046
-0.9804266 -0.9890565 -0.9787376 -0.9775792 -0.9829492
-0.9836472 -0.9918177 -0.9927891 -0.9698062 -0.9888519
-0.9244374 -0.9836911 -0.9649539 -0.9324629 -0.9311206
-0.9401253 -0.9853222 -0.9119727 -0.9717188 -0.9714091
-0.9724385 -0.962085 -0.9509295 -0.9456568 -0.952411
-0.9025477 -0.9679719 -0.9776157 -0.9673249 -0.9834323
-0.9770453 -0.9732465 -0.9524649 -0.940981 -0.967968
-0.9552076 -0.9669601 -0.9843219 -0.9609979 -0.9651671

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis X in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 57: frequency-body-acceleration-standarddeviation-y

* Class: character

* Unique values:
0.05604001 -0.1240308 0.04260268 0.1016996 -0.1437218
0.3248449 -0.09660683 -0.054271 0.08056462 -0.3543707
-0.05561379 0.1126151 -0.002562942 0.003868411 -0.2025241
-0.1703138 -0.1857258 -0.2677416 -0.168789 -0.1820685
-0.2156343 -0.1692197 -0.1017995 -0.2239726 -0.1297757
-0.2085153 0.09219689 -0.2672736 0.4384363 -0.1827665
0.02176951 -0.008039875 0.1650376 0.1591238 -0.3410256
0.3054015 -0.08850481 0.3560728 -0.01913283 -0.1663242
-0.02527817 0.1325576 0.08234343 0.2300588 0.03805974
-0.1999884 -0.04394731 -0.07940598 -0.178555 -0.1412581
-0.1042992 0.08488028 -0.1014344 -0.2976411 -0.05162847
-0.1301756 0.1146567 -0.1905506 0.1645468 -0.1077877
-0.1129637 -0.1097224 0.02682699 0.2832478 -0.1901871
0.2321841 0.02627772 0.2936339 0.1199936 -0.2086806
-0.08605274 0.4279288 0.2778943 0.1674097 0.04322837
-0.1668424 -0.07828378 -0.1756471 0.0653012 -0.2393491
-0.09346826 0.171974 -0.3225313 -0.2735614 -0.06333377
0.01674951 -0.09244442 -0.2737982 0.5601913 -0.1691911
-0.917275 -0.8496557 -0.9022915 -0.925677 -0.9046292
-0.92383 -0.9200472 -0.9115912 -0.9191627 -0.9498293
-0.9597891 -0.9480531 -0.9675613 -0.9269953 -0.9307815
-0.944843 -0.9377835 -0.9712661 -0.9398855 -0.9616939
-0.9339926 -0.9500738 -0.8894673 -0.8676136 -0.9128381
-0.926034 -0.9336665 -0.9749801 -0.9350317 -0.954998
-0.9722931 -0.8924343 -0.8679332 -0.9214491 -0.9191188
-0.9362317 -0.9635068 -0.9260559 -0.9302864 -0.9581743
-0.9664273 -0.9431938 -0.9435452 -0.9236576 -0.9580424
-0.9541793 -0.9478297 -0.9543816 -0.8744693 -0.9682786
-0.8855728 -0.9579088 -0.8573803 -0.93879 -0.9218605
-0.922852 -0.9471798 -0.952912 -0.8725254 -0.9344548
-0.8336256 -0.9640946 -0.9729092 -0.9297112 -0.9229179
-0.9312368 -0.9735893 -0.905221 -0.9645904 -0.9370836
-0.9427916 -0.9748321 -0.957259 -0.9125629 -0.9743041
-0.6723843 -0.9833171 -0.9842691 -0.942004 -0.9906804
-0.9535584 -0.9810251 -0.946381 -0.9128368 -0.9462291
-0.95064 -0.9474623 -0.9867465 -0.964961 -0.9845718

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Y in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 58: frequency-body-acceleration-standarddeviation-z

* Class: character

* Unique values:
-0.2796868 -0.4229985 -0.48306 -0.5504746 0.1333168
-0.1584373 -0.5230934 0.08548921 -0.5370264 -0.1805013
-0.2623916 -0.2338723 -0.164961 -0.2536436 0.1161434
-0.4306246 -0.3844453 -0.3455152 -0.3260462 -0.2833481
-0.09314476 -0.4552221 -0.5941983 -0.03379653 -0.4353042
-0.4521467 -0.2698964 -0.4398616 -0.2664977 -0.3146469
0.08595655 -0.3507972 -0.2892567 -0.3658742 -0.1249123
0.1337662 -0.1137018 0.6871242 -0.3496004 -0.09456123
-0.2048157 -0.2399807 -0.2271642 -0.1167533 0.1045088
-0.2372967 -0.4009023 -0.1973389 -0.2816852 0.2030578
0.1214474 -0.09454498 -0.3451098 -0.2440818 -0.03423472
-0.4186 -0.1848422 -0.2695714 -0.242439 -0.2831434
-0.2979279 -0.389723 -0.3533979 -0.4060143 -0.1001215
0.02149148 -0.3486266 0.4275638 -0.3574076 -0.03797162
-0.2454135 -0.0783635 -0.1450817 -0.3832427 0.0947941
-0.4494654 -0.3466485 -0.3030907 -0.4169403 -0.2620732
-0.2573934 -0.1620329 -0.5126943 -0.03494949 -0.2686862
-0.4873901 -0.2333152 -0.4182586 -0.2139168 -0.2915538
-0.9344696 -0.8643225 -0.9218435 -0.9257685 -0.8440831
-0.9338898 -0.9678844 -0.9176782 -0.9457047 -0.9346521
-0.9629211 -0.9475149 -0.9564125 -0.9093443 -0.8961253
-0.9620906 -0.9447813 -0.9632207 -0.9330455 -0.965801
-0.9462038 -0.9568629 -0.9269993 -0.8180018 -0.966121
-0.935917 -0.934189 -0.9757221 -0.9249472 -0.9544027
-0.9779373 -0.9048013 -0.8582314 -0.9220672 -0.9123588
-0.919745 -0.9859585 -0.9177819 -0.9479059 -0.9485403
-0.966999 -0.947754 -0.9424589 -0.9384099 -0.9261101
-0.9621237 -0.9600278 -0.9589248 -0.8976008 -0.978803
-0.9072868 -0.9464336 -0.8875543 -0.9138968 -0.9380987
-0.9141892 -0.9640481 -0.9572162 -0.9109959 -0.9238025
-0.8128916 -0.9632791 -0.9658822 -0.9240047 -0.9533806
-0.9311465 -0.9716681 -0.8940557 -0.923924 -0.9625244
-0.950117 -0.984741 -0.940919 -0.941164 -0.9722613
-0.6941004 -0.9848545 -0.9865824 -0.9567709 -0.9863788
-0.9671882 -0.9847922 -0.9621545 -0.9419712 -0.9598137
-0.9483808 -0.9458521 -0.9872248 -0.9719013 -0.9730578

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration in axis Z in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 59: frequency-body-acceleration-jerk-standarddeviation-x

* Class: character

* Unique values:
-0.1335866 -0.2965966 -0.3213903 -0.1926947 -0.3653148
-0.2714482 -0.453943 -0.4847977 -0.4115001 -0.4028841
-0.3438661 0.09083665 -0.1074128 0.01800478 -0.235173
-0.6241457 -0.351066 -0.3466104 -0.3671164 -0.3073367
-0.4151354 -0.3143131 -0.2973261 -0.1702283 -0.07915183
-0.03105929 -0.2197162 -0.3759928 -0.1222372 -0.5076407
-0.461907 -0.4864465 -0.2253278 -0.1868151 -0.426974
-0.2473366 -0.458255 -0.4109679 -0.2072316 -0.5380731
-0.287219 -0.2172652 -0.4629728 -0.06779785 -0.4248776
-0.6902136 -0.3420754 -0.4789234 -0.3702737 -0.2113854
-0.5615652 -0.3654154 -0.3967626 -0.327422 -0.2475983
-0.3906012 -0.5143378 -0.5753313 -0.1870908 -0.5271047
-0.0863279 -0.1654429 0.01105593 0.08865151 -0.004262891
0.172659 -0.1283416 -0.03023964 0.1080627 -0.1256828
-0.0718767 0.4768039 -0.04638679 0.04046185 0.08195872
-0.5221533 -0.1308259 -0.05228113 -0.09801123 -0.09863792
-0.2898027 0.04995906 -0.2082501 0.009382243 0.1569127
-0.07231143 -0.114745 -0.4160505 -0.1472786 -0.3559306
-0.987493 -0.9762835 -0.9765305 -0.9714888 -0.9840263
-0.9869136 -0.9816079 -0.9819208 -0.9893144 -0.9915679
-0.9946132 -0.988577 -0.9900278 -0.9842996 -0.9860196
-0.9927501 -0.9932999 -0.9912923 -0.9777868 -0.9942202
-0.9900176 -0.9894591 -0.9787769 -0.9666604 -0.9895509
-0.9779803 -0.9936822 -0.9920391 -0.9835658 -0.9892888
-0.9950738 -0.9605709 -0.9657789 -0.9752357 -0.9787291
-0.9904141 -0.9934146 -0.9803966 -0.9869341 -0.9918471
-0.9927754 -0.9859137 -0.9795305 -0.978773 -0.9845316
-0.9893399 -0.9912757 -0.9886068 -0.9716728 -0.9941234
-0.9722167 -0.9830079 -0.9757067 -0.9712788 -0.9686121
-0.9755814 -0.9881851 -0.9902879 -0.9630989 -0.9817217
-0.9641607 -0.9831226 -0.9856253 -0.9686192 -0.9835602
-0.9759599 -0.9871227 -0.9734914 -0.9839493 -0.9892874
-0.9832132 -0.985278 -0.9870614 -0.9741261 -0.9878409
-0.976424 -0.9904101 -0.9874775 -0.9822059 -0.9925435
-0.9803507 -0.9872503 -0.9800793 -0.9686013 -0.9789044
-0.97282 -0.9870782 -0.9866412 -0.9862139 -0.9881405

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis X in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 60: frequency-body-acceleration-jerk-standarddeviation-y

* Class: character

* Unique values:
0.1067399 -0.005614988 -0.05452136 0.03144507 -0.04319175
0.3158835 -0.1701774 -0.3535269 -0.06068391 -0.4336127
-0.04703794 0.08540107 -0.01484152 0.2134236 -0.06097531
-0.3677601 -0.2719522 -0.0655179 -0.1917575 -0.1550207
-0.2894661 -0.01533295 -0.2099 -0.2283805 0.04848677
-0.09405641 0.09467416 -0.3202641 0.2556141 -0.2943535
-0.3817771 -0.2681915 -0.1053112 -0.01698114 -0.5341913
-0.07008215 -0.4372763 -0.3715725 -0.3303914 -0.417127
-0.3651143 -0.01316959 -0.2612611 -0.1060996 -0.3808944
-0.638086 -0.4200558 -0.4501164 -0.3490266 -0.4086489
-0.6108266 -0.2435541 -0.314525 -0.5901129 -0.2027961
-0.3359264 -0.3194004 -0.5855314 -0.2550083 -0.5358433
-0.13458 -0.1477282 0.09017201 0.3412424 -0.3243786
0.2739438 -0.1304438 0.138738 -0.007228602 -0.2815074
-0.2989311 0.3497713 -0.1131619 -0.02702944 -0.1776978
-0.3657198 -0.06153707 -0.163244 -0.00175392 -0.1203815
-0.217432 0.08083335 -0.1772021 -0.3559818 -0.1533558
0.05151231 -0.1417751 -0.4645461 0.2931195 -0.1636268
-0.9825139 -0.9564618 -0.9544644 -0.94688 -0.971815
-0.9830388 -0.9684215 -0.9689437 -0.979713 -0.9832308
-0.9899158 -0.9809999 -0.9803472 -0.9697761 -0.9795647
-0.984068 -0.9877546 -0.9860831 -0.9639904 -0.9854933
-0.9819021 -0.9808042 -0.9492932 -0.958523 -0.9820456
-0.9665389 -0.9859081 -0.9856947 -0.9727766 -0.9815501
-0.9870182 -0.9439485 -0.9362026 -0.9506815 -0.9668503
-0.9785817 -0.9811858 -0.9678302 -0.9699341 -0.9842365
-0.9882003 -0.9735885 -0.9660241 -0.95617 -0.977158
-0.9740295 -0.9773549 -0.9776056 -0.9369913 -0.9847828
-0.9604424 -0.9735202 -0.9440753 -0.9682346 -0.9448474
-0.9566663 -0.9794123 -0.977179 -0.9404742 -0.9702282
-0.9322179 -0.971044 -0.9662426 -0.9357175 -0.9758861
-0.9791709 -0.9734867 -0.9691133 -0.9732153 -0.986215
-0.9783439 -0.9759641 -0.9731644 -0.958961 -0.9899956
-0.9484143 -0.9882386 -0.986116 -0.9811175 -0.9904681
-0.9724342 -0.9849874 -0.9443669 -0.9666341 -0.9681207
-0.9647037 -0.9813943 -0.9862107 -0.9784514 -0.9841245

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Y in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 61: frequency-body-acceleration-jerk-standarddeviation-z

* Class: character

* Unique values:
-0.5347134 -0.5435291 -0.63343 -0.6086244 -0.1907515
-0.4044825 -0.7475646 -0.5288895 -0.7230511 -0.4566363
-0.543873 -0.2278298 -0.4435634 -0.3431956 -0.006236475
-0.6904134 -0.3965304 -0.417958 -0.5745797 -0.5290349
-0.5754103 -0.6158982 -0.7723591 -0.4191044 -0.5585127
-0.5314863 -0.4061734 -0.6643271 -0.4276905 -0.5111156
-0.7260402 -0.7387059 -0.6688257 -0.571674 -0.6319196
-0.5082483 -0.8038451 -0.3910779 -0.7830045 -0.6201236
-0.6803258 -0.5077162 -0.6031274 -0.5285678 -0.4689564
-0.8305266 -0.7157269 -0.6571394 -0.6879076 -0.7101166
-0.7847539 -0.625091 -0.7627722 -0.6778311 -0.6628941
-0.7501149 -0.6892358 -0.7847284 -0.5332017 -0.5627271
-0.4017215 -0.6135251 -0.5511781 -0.389057 -0.3977745
-0.08466742 -0.6289027 -0.2448571 -0.4615991 -0.3640267
-0.5730437 -0.09839301 -0.2932376 -0.5358938 -0.09851956
-0.7349901 -0.3967017 -0.4747555 -0.4884884 -0.5473209
-0.535515 -0.4082274 -0.6688673 -0.4253774 -0.3961479
-0.5444614 -0.3565795 -0.6787511 -0.4052949 -0.32857
-0.9883392 -0.9771596 -0.9760223 -0.9616366 -0.9746992
-0.9861853 -0.9843496 -0.97818 -0.9876941 -0.9843625
-0.9908182 -0.9881519 -0.9868457 -0.9812722 -0.9779364
-0.9891561 -0.9906931 -0.9892825 -0.9783278 -0.9904459
-0.9889712 -0.9885708 -0.9816994 -0.9649413 -0.9891109
-0.9814089 -0.9886121 -0.9901417 -0.9784589 -0.9860084
-0.9923498 -0.9755959 -0.9680723 -0.9698958 -0.9745337
-0.9844657 -0.9903781 -0.9735943 -0.9866545 -0.988658
-0.9914504 -0.9875246 -0.9797233 -0.9843052 -0.9762413
-0.987898 -0.9874281 -0.9882083 -0.9735721 -0.9913164
-0.9739543 -0.9845999 -0.9762295 -0.9725887 -0.9794287
-0.9787928 -0.9878715 -0.9892758 -0.9639731 -0.9799367
-0.960587 -0.9837119 -0.9861356 -0.9635675 -0.975073
-0.9686992 -0.9833029 -0.9749144 -0.9807451 -0.9883489
-0.9838542 -0.9885587 -0.9849253 -0.9768332 -0.985502
-0.9718854 -0.9893705 -0.9899012 -0.9745308 -0.9931078
-0.9822816 -0.9893454 -0.9802612 -0.9597147 -0.9785823
-0.9727138 -0.98367 -0.9907448 -0.9857078 -0.9831856

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion acceleration jerk in axis Z in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is jerk, fifth level is the statistic measured (mean or standard deviation), sixth level is the axis.


Variable 62: frequency-body-angularvelocity-standarddeviation-x

* Class: character

* Unique values:
-0.5166919 -0.6151214 -0.5293928 -0.5153239 -0.5636153
-0.234252 -0.6231503 -0.6300821 -0.3576334 -0.6737411
-0.5048493 -0.1083888 -0.4918592 -0.3744963 -0.5450517
-0.4066781 -0.5329996 -0.6423491 -0.5454802 -0.6543136
-0.3990323 -0.604053 -0.5426468 -0.5074045 -0.4582929
-0.5931429 -0.4357147 -0.7349014 -0.2799315 -0.6169158
-0.5658925 -0.484821 -0.5016856 -0.3902481 -0.368637
-0.4099556 -0.5178116 -0.4647429 -0.4372253 -0.509896
-0.5244684 -0.4775147 -0.560968 -0.3381398 -0.5904308
-0.5001198 -0.5908123 -0.5742543 -0.5563834 -0.3503382
-0.5034842 -0.4763588 -0.4835487 -0.3616264 -0.3413016
-0.560463 -0.562911 -0.6007113 -0.5320217 -0.6029455
-0.4954225 -0.3086303 -0.5149409 -0.2867249 -0.432731
-0.3027351 -0.3977228 -0.3788829 -0.35163 -0.4703735
-0.3931947 0.1966133 -0.4697901 -0.2845324 -0.4825983
-0.3162521 -0.3981999 -0.3909684 -0.3454533 -0.3191231
-0.2783866 -0.3794367 -0.414919 -0.4235588 -0.3395144
-0.4223632 -0.4521904 -0.5139471 -0.2533656 -0.4848947
-0.9779042 -0.9680131 -0.9693904 -0.963407 -0.9427264
-0.9853393 -0.9891895 -0.9815731 -0.9888819 -0.9820579
-0.9900413 -0.985576 -0.9895593 -0.9823733 -0.9815232
-0.99055 -0.9913184 -0.9889846 -0.9816151 -0.9907278
-0.9884848 -0.9868085 -0.9733331 -0.961836 -0.9897124
-0.9763399 -0.9867147 -0.9925754 -0.9784335 -0.9888916
-0.9874971 -0.9019857 -0.9127809 -0.9528174 -0.947892
-0.974201 -0.9810091 -0.962741 -0.9482752 -0.9739269
-0.9817913 -0.946607 -0.9645303 -0.9198518 -0.9416985
-0.9726642 -0.9753216 -0.9702218 -0.8867068 -0.9791626
-0.9117182 -0.9749881 -0.9124648 -0.9247386 -0.9322739
-0.8843852 -0.9558184 -0.9622727 -0.8905257 -0.9618857
-0.8822965 -0.9759864 -0.9807058 -0.962165 -0.9623483
-0.9678464 -0.9824246 -0.9597405 -0.9582245 -0.9775096
-0.9772035 -0.9839448 -0.9762269 -0.958031 -0.9826652
-0.8913081 -0.9909701 -0.9893823 -0.9580921 -0.9946522
-0.9744884 -0.9888607 -0.9750947 -0.9463892 -0.9645446
-0.9692546 -0.9734468 -0.9930194 -0.9851546 -0.9847133

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis X in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 63: frequency-body-angularvelocity-standarddeviation-y

* Class: character

* Unique values:
-0.03350816 -0.5688887 -0.5026834 -0.3320087 -0.2908594
-0.1908057 -0.4536632 0.08329506 -0.3653612 -0.6119409
-0.4392388 -0.1330103 -0.4194009 -0.4816244 0.2865815
-0.5672013 -0.5879396 -0.5309438 -0.4974707 -0.09413597
0.0955456 -0.533047 -0.6546578 -0.4909903 -0.2043928
-0.4437983 -0.3186185 -0.4608907 0.1077048 -0.4958963
0.1515389 -0.5560459 -0.4034864 -0.3136186 -0.5799646
-0.04788025 -0.1537879 0.6462336 -0.2436123 -0.5596006
-0.4811541 -0.1499252 -0.4782996 -0.4738821 -0.30162
-0.3493627 -0.5982366 -0.5878695 -0.4599893 0.2343468
0.04495455 -0.4597585 -0.4898243 -0.3520331 0.1717358
-0.4839184 -0.3642833 -0.4434298 -0.07904672 -0.5861778
-0.1814147 -0.5530945 -0.4315528 -0.235471 -0.3517177
-0.04613563 -0.4811275 0.07413912 -0.3609728 -0.565214
-0.4693904 -0.02848957 -0.3884187 -0.5703399 0.1260523
-0.4706411 -0.4975063 -0.5430332 -0.2931084 -0.3548727
-0.2557321 -0.4587327 -0.6915184 -0.3642826 -0.343237
-0.5189231 -0.2496603 -0.607758 -0.1599614 -0.5234127
-0.962345 -0.93961 -0.9475715 -0.9449015 -0.9382447
-0.9689244 -0.9821379 -0.9582274 -0.9734561 -0.9543438
-0.9848131 -0.9555986 -0.9747232 -0.9461079 -0.9437334
-0.9798289 -0.9694882 -0.9810377 -0.953207 -0.9872598
-0.973805 -0.9773562 -0.9541204 -0.9105834 -0.9835796
-0.9590407 -0.9782707 -0.9857101 -0.9580157 -0.9762524
-0.9871077 -0.9231259 -0.9318578 -0.9425392 -0.9458182
-0.9680555 -0.9943531 -0.9443069 -0.9694429 -0.9784024
-0.9839466 -0.9669672 -0.9540809 -0.9621727 -0.9458712
-0.9759607 -0.9817409 -0.9818578 -0.9361016 -0.9896437
-0.9394698 -0.9710361 -0.9458258 -0.9419506 -0.9583999
-0.9385299 -0.9714252 -0.9788018 -0.9012375 -0.9657981
-0.951232 -0.9770325 -0.9772578 -0.9453651 -0.9397279
-0.9503165 -0.9826606 -0.9299554 -0.9599919 -0.9681353
-0.9706278 -0.9598314 -0.9465999 -0.9607113 -0.9549973
-0.9322933 -0.9774918 -0.9830523 -0.957553 -0.9922408
-0.9651342 -0.9819106 -0.9561825 -0.9231319 -0.9534535
-0.9553437 -0.9599441 -0.9834578 -0.9730925 -0.9577929

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Y in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 64: frequency-body-angularvelocity-standarddeviation-z

* Class: character

* Unique values:
-0.4365622 -0.5458964 -0.4203671 -0.5122092 -0.46327
-0.1429742 -0.4985546 -0.1802329 -0.5439976 -0.4032198
-0.4387687 -0.2202712 -0.3855054 -0.2531739 -0.2878209
-0.6035442 -0.4262321 -0.2978475 -0.3082434 -0.4941175
-0.2379415 -0.5598566 -0.7164585 -0.3423672 -0.2732929
-0.4222565 -0.4553339 -0.5484098 -0.2649572 -0.4533379
-0.5717078 -0.5610976 -0.380378 -0.3099981 -0.3930629
0.2632029 -0.7299287 0.5224542 -0.5237443 -0.3873095
-0.2778915 -0.2074981 0.01309164 -0.2224318 -0.08225211
-0.6011126 -0.3620522 -0.1835087 -0.2262434 -0.4441531
-0.2534271 -0.2180725 -0.4245335 -0.1655546 -0.4038221
-0.3960957 -0.272525 -0.4660224 0.09547683 -0.3119964
-0.2384436 -0.5481643 -0.3747052 -0.2756673 -0.4951201
-0.2682534 -0.3972205 0.1827947 -0.3436733 -0.5211008
-0.5409495 -0.2158922 -0.4507721 -0.377319 -0.3058967
-0.5067383 -0.4344822 -0.367816 -0.4165059 -0.4161658
-0.3715415 -0.4229877 -0.6216585 -0.3565615 -0.1503916
-0.448513 -0.4270083 -0.5439961 0.01830508 -0.5732819
-0.9439178 -0.9306332 -0.9473465 -0.9473268 -0.939826
-0.9626323 -0.9568028 -0.9560288 -0.9662286 -0.9642701
-0.9809696 -0.9678692 -0.9791307 -0.9510457 -0.9619141
-0.9741729 -0.9682667 -0.9775955 -0.961561 -0.9729125
-0.9573087 -0.9635227 -0.9328684 -0.9341875 -0.9624186
-0.9547699 -0.9694518 -0.9827973 -0.9491768 -0.9728518
-0.9823453 -0.9197438 -0.9167894 -0.9544557 -0.9543394
-0.9759765 -0.9823088 -0.9501627 -0.9712822 -0.9835274
-0.9867253 -0.9632128 -0.9631246 -0.9636528 -0.9642499
-0.9749821 -0.977351 -0.983105 -0.9320391 -0.9847142
-0.9351769 -0.9697543 -0.9166516 -0.9449428 -0.9589013
-0.9543358 -0.9755333 -0.9748226 -0.914872 -0.9726887
-0.9165825 -0.9672569 -0.9633057 -0.9471368 -0.9588764
-0.970672 -0.9631839 -0.9577905 -0.9600158 -0.985731
-0.9783571 -0.9754175 -0.9832707 -0.9369656 -0.9853178
-0.9154675 -0.971789 -0.9800964 -0.966312 -0.976859
-0.9721992 -0.9631742 -0.9658075 -0.9656863 -0.9752988
-0.9564244 -0.9697972 -0.986483 -0.9749953 -0.9836027

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of body motion angular velocity in axis Z in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level is the statistic measured (mean or standard deviation), fifth level is the axis.


Variable 65: frequency-body-acceleration-magnitude-standarddeviation

* Class: character

* Unique values:
-0.3980326 -0.4563731 -0.5196369 -0.4216831 -0.3517068
-0.360819 -0.584456 -0.45749 -0.4583448 -0.592151
-0.5651625 -0.3247934 -0.4381498 -0.3813993 -0.4075775
-0.6329275 -0.537184 -0.5503926 -0.5115737 -0.3932575
-0.4698528 -0.5771052 -0.6511726 -0.513892 -0.3704719
-0.4088963 -0.438389 -0.5655631 -0.389934 -0.5902658
-0.4162601 -0.4479944 -0.2540919 -0.2221614 -0.4153071
-0.4092829 -0.3760279 -0.1432539 -0.2556593 -0.4189243
-0.2173932 -0.3682535 -0.4033576 -0.3341262 -0.4100476
-0.5361203 -0.2742262 -0.4687077 -0.3346262 -0.1559938
-0.3945081 -0.3667282 -0.3010059 -0.5099295 -0.3614375
-0.3952851 -0.4090655 -0.4362189 -0.320241 -0.4062834
-0.1865303 -0.2338494 0.04285336 0.1446228 0.0214441
-0.1561411 -0.1371231 0.1786846 0.1531242 -0.05341372
-0.06188768 0.08286306 0.07912714 -0.05752026 -0.04539303
-0.3594371 0.005749437 -0.071212 -0.0740586 -0.03308681
-0.1785352 -0.02147879 -0.263644 0.08886717 -0.06167428
-0.105125 -0.2109128 -0.3442994 0.0002421746 -0.1752917
-0.9284448 -0.8746266 -0.9256693 -0.9395472 -0.8869156
-0.9317212 -0.948522 -0.9291939 -0.9411959 -0.9425883
-0.9653997 -0.9528023 -0.9744476 -0.926798 -0.9270901
-0.9619973 -0.9345877 -0.9708853 -0.9522814 -0.971218
-0.9435437 -0.9555756 -0.9198157 -0.8691725 -0.941512
-0.9506472 -0.9385299 -0.9822262 -0.9421512 -0.9658523
-0.9823138 -0.9218361 -0.8867452 -0.9445641 -0.937288
-0.9386282 -0.981504 -0.9397999 -0.950204 -0.9571736
-0.9755048 -0.9642591 -0.9600418 -0.9437391 -0.9552914
-0.9702037 -0.9639093 -0.9675291 -0.9238572 -0.9822477
-0.9217332 -0.9605194 -0.89534 -0.9402655 -0.9450482
-0.9397419 -0.9704454 -0.9732649 -0.9186519 -0.9495226
-0.7983009 -0.9683502 -0.9625254 -0.905374 -0.9105425
-0.917258 -0.9760377 -0.859606 -0.9455086 -0.9581119
-0.9490425 -0.9640568 -0.9444491 -0.9132673 -0.9584657
-0.6513532 -0.9665766 -0.9802963 -0.957564 -0.9815998
-0.9640518 -0.9751214 -0.937188 -0.9219297 -0.944305
-0.9421333 -0.9494313 -0.9876485 -0.9418941 -0.971063

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation)


Variable 66: frequency-body-acceleration-jerk-magnitude-standarddeviation

* Class: character

* Unique values:
-0.1034924 -0.08985199 -0.3056854 -0.09649997 -0.02213836
-0.2764361 -0.4174468 -0.453426 -0.3424119 -0.4414478
-0.2112319 -0.02228696 -0.01867344 0.1582867 -0.04573723
-0.5190042 -0.2689485 -0.279732 -0.436273 -0.1695065
-0.3665374 -0.164092 -0.3204587 -0.3223375 0.05020876
-0.01395391 -0.1135919 -0.4444535 -0.03106503 -0.40298
-0.5330599 -0.4806092 -0.3786167 -0.1777348 -0.4974414
-0.3792665 -0.5137035 -0.4098476 -0.3913134 -0.5199312
-0.4373831 -0.4346713 -0.4777219 -0.1512998 -0.4543248
-0.7034337 -0.3937154 -0.4730116 -0.3744959 -0.2805836
-0.5808781 -0.2604238 -0.4973241 -0.4849358 -0.334365
-0.3465651 -0.4910908 -0.5879261 -0.28045 -0.4596478
-0.1040523 -0.1591023 -0.0897357 0.1548089 0.1078568
0.1347347 -0.1736618 0.1942634 0.1505078 -0.09196234
-0.2365385 0.3163464 0.06320531 -0.1185303 0.2244805
-0.5022248 -0.06794108 -0.1136259 -0.08835985 -0.07977143
-0.1331243 0.2274807 -0.2804268 0.07055261 0.03802667
0.04206313 -0.07098938 -0.3865651 0.07903798 -0.08275549
-0.9816062 -0.9665689 -0.9665453 -0.9473047 -0.9684949
-0.9793202 -0.9722891 -0.9729594 -0.9832763 -0.9821906
-0.9903196 -0.9836873 -0.9869915 -0.9670263 -0.972117
-0.9876188 -0.9895213 -0.9885317 -0.9708233 -0.9898229
-0.985295 -0.9841242 -0.9615845 -0.949395 -0.9832667
-0.9729514 -0.9883323 -0.9910443 -0.9725977 -0.9856137
-0.992536 -0.9482068 -0.943602 -0.9553816 -0.9690922
-0.9791354 -0.9880212 -0.9696775 -0.9801841 -0.9859127
-0.9894721 -0.9791791 -0.9719261 -0.956654 -0.9750537
-0.9820833 -0.9811293 -0.9830223 -0.9549632 -0.9903279
-0.9466398 -0.9751605 -0.9600325 -0.9635932 -0.952106
-0.9641456 -0.9806213 -0.9862774 -0.936025 -0.9731955
-0.921804 -0.9753054 -0.9763819 -0.9515527 -0.9653592
-0.9637911 -0.9751265 -0.9636074 -0.9725301 -0.9872472
-0.9796572 -0.9794522 -0.9776049 -0.9556356 -0.9865402
-0.9636012 -0.9879015 -0.9881749 -0.9723361 -0.9943667
-0.9680878 -0.9845685 -0.9580371 -0.9550947 -0.9653776
-0.961653 -0.9780443 -0.9897107 -0.9795652 -0.9832851

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion acceleration jerk in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation)


Variable 67: frequency-body-angularvelocity-magnitude-standarddeviation

* Class: character

* Unique values:
-0.321018 -0.6326433 -0.5897415 -0.5106483 -0.3438949
-0.3274596 -0.5997454 -0.2655046 -0.4817502 -0.721137
-0.6153201 -0.1415984 -0.5122493 -0.4640191 -0.06147658
-0.5292622 -0.6094662 -0.5468881 -0.5168116 -0.4291568
-0.3315417 -0.6517928 -0.5939372 -0.5627145 -0.4997598
-0.4948022 -0.3799518 -0.6689081 -0.1962102 -0.6680328
-0.1829855 -0.4451818 -0.4404451 -0.3181739 -0.4449945
-0.1833256 -0.3812234 0.2366597 -0.3085859 -0.5324867
-0.4964446 -0.3771328 -0.4834071 -0.234023 -0.4704916
-0.386613 -0.569632 -0.523336 -0.528187 -0.07433147
-0.1514723 -0.4386204 -0.5524896 -0.4568413 -0.1669694
-0.5644351 -0.4707708 -0.5330446 -0.3609483 -0.549071
-0.3983504 -0.3224408 -0.4841413 -0.2423539 -0.3969097
-0.2555903 -0.3805594 -0.2239274 -0.3493872 -0.4799398
-0.4288687 0.03203667 -0.48449 -0.3418637 -0.2189304
-0.4237073 -0.3929907 -0.3979842 -0.3629038 -0.3230246
-0.2523619 -0.3725768 -0.4576741 -0.4241707 -0.3877801
-0.423554 -0.4005601 -0.5338449 -0.151682 -0.4701473
-0.9321984 -0.9254496 -0.9347469 -0.9295491 -0.895805
-0.9532512 -0.9607112 -0.946518 -0.9633782 -0.9388632
-0.9747109 -0.9504844 -0.9720273 -0.933563 -0.9386808
-0.9703219 -0.9636507 -0.9705283 -0.9535343 -0.9710114
-0.9595139 -0.9613857 -0.9288506 -0.9064712 -0.96246
-0.948461 -0.9642681 -0.9812526 -0.9437258 -0.9691059
-0.9784661 -0.8834397 -0.868914 -0.9231088 -0.9198481
-0.9541198 -0.9774377 -0.9348156 -0.9288383 -0.9635747
-0.9772634 -0.9367235 -0.9477632 -0.9002224 -0.9248054
-0.9610904 -0.9629676 -0.9654002 -0.8784597 -0.9759387
-0.8888722 -0.9567887 -0.8871944 -0.9109097 -0.9229616
-0.8500332 -0.9468575 -0.9591135 -0.8491273 -0.9544072
-0.8243194 -0.9554419 -0.9592631 -0.9286949 -0.9188925
-0.936787 -0.9548491 -0.9177601 -0.9236822 -0.9589751
-0.9600238 -0.957496 -0.9497366 -0.9235524 -0.9590255
-0.8506613 -0.9661392 -0.9718062 -0.931675 -0.976679
-0.9526444 -0.9610984 -0.9471003 -0.9034006 -0.9337013
-0.9403738 -0.9461334 -0.9814688 -0.9642059 -0.9613691

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion angular velocity in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the magnitude, fifth level is the statistic measured (mean or standard deviation)


Variable 68: frequency-body-angularvelocity-jerk-magnitude-standarddeviation

* Class: character

* Unique values:
-0.3816019 -0.549087 -0.4556653 -0.4080789 -0.08416638
-0.5812402 -0.7735741 -0.6556777 -0.6540101 -0.7457269
-0.5203855 -0.3361487 -0.4293235 -0.4764053 0.2878346
-0.7573858 -0.6129303 -0.6392424 -0.5890717 -0.6186677
-0.57858 -0.5581046 -0.7577681 -0.6243519 -0.5176758
-0.564934 -0.3492856 -0.7694084 -0.1719758 -0.5674477
-0.6939305 -0.7400334 -0.572485 -0.4559377 -0.704091
-0.5757333 -0.8224287 -0.5649641 -0.7931045 -0.8253143
-0.7241557 -0.5882897 -0.7009804 -0.7098705 -0.6326595
-0.841061 -0.6698463 -0.7517143 -0.7048528 -0.7564642
-0.7913494 -0.6218202 -0.7942095 -0.7877816 -0.6712906
-0.7331308 -0.7122615 -0.860911 -0.5028215 -0.653877
-0.3919199 -0.6249108 -0.4871284 -0.1457335 -0.3535447
-0.2629845 -0.7142297 -0.3568494 -0.5934724 -0.6334798
-0.6433992 -0.1432545 -0.5716668 -0.6974514 -0.03985738
-0.6930324 -0.4894974 -0.5028314 -0.4647222 -0.626676
-0.6455039 -0.343699 -0.6854709 -0.4851589 -0.5449885
-0.4867804 -0.3430949 -0.7634308 -0.2816573 -0.4780305
-0.9870496 -0.9766898 -0.9706754 -0.9511967 -0.9749659
-0.9861473 -0.9856072 -0.9870652 -0.9895039 -0.9875063
-0.9936245 -0.9854164 -0.9910622 -0.9763181 -0.978499
-0.9920196 -0.9942098 -0.9919678 -0.9783954 -0.994742
-0.9909464 -0.9896329 -0.9762618 -0.965997 -0.9914091
-0.9792564 -0.9912194 -0.9949676 -0.9752266 -0.9909331
-0.9946711 -0.9571215 -0.9461965 -0.9520885 -0.9718994
-0.9818323 -0.9922775 -0.9660193 -0.9803297 -0.9906728
-0.9921773 -0.9822286 -0.9777066 -0.9653447 -0.9738497
-0.9830989 -0.983314 -0.9885791 -0.9559834 -0.9915168
-0.9550086 -0.9777543 -0.9664302 -0.9647708 -0.9650558
-0.9629097 -0.9764673 -0.9884075 -0.9272257 -0.9797551
-0.9326607 -0.9825682 -0.9834345 -0.9555047 -0.969403
-0.9717933 -0.9835695 -0.963666 -0.9726457 -0.9880584
-0.9819834 -0.9793278 -0.9823051 -0.972789 -0.9815851
-0.9704579 -0.989628 -0.9935523 -0.9693198 -0.9975852
-0.9754815 -0.9894927 -0.9825436 -0.9522905 -0.9607729
-0.9619116 -0.9727986 -0.992738 -0.9819862 -0.980097

* Description of the variable:
Standard deviation by subject and activity of the variable "mean of 128 readings of the magnitude of the triaxial body motion angular velocity jerk in the frequency domain (normalized between -1 and 1)"

* Explanation of the schema:
First level is the domain of the variable (frequency or time), second level indicates the component (body motion or gravitational), third level is the physics concept measured (acceleration or angular velocity), fourth level specifies it is the jerk, fifth level specifies it is the magnitude, sixth level is the statistic measured (mean or standard deviation)
