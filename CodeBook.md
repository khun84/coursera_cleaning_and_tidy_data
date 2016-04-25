# CODE BOOK

This code book describes how the original dataset from [UCI](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) is being transformed into an aggregated dataset in 'tidy.txt'.

The **subject id**, **activity id** and **measurements** of both **test** and **train data** are being merged into a single dataset with 
10299 rows and 563 columns (variables).

The variables in the dataset is then being reduced by only **selecting** the **subject id**, **activity id** and **measurements that only contains mean or standard deviation**. This variables reduction results in a dataset with 10299 rows and 88 columns (variables).

The activity id being replaced by its descriptive activity label via data mapping.

The column (variable) names is then renamed to some more descriptive names.

Lastly, the datasets is being **summarized by computing the average of each variable for each activity and each subject**. This results in a dataset with 180 rows and 88 columns (variables).

When trying to load the data in R with read.x functions, users shall set parameter 'check.names = FALSE' to avoid symbols in the column names being converted into '.'

In general, the variables can be categorised into:
1. Categorical variable
2. Measurement variable

## Categorical Variable
1. **Activity**  
(factor)  
Physical activity performed by the subject, can be any of the following value:  
    1.STANDING  
    2.SITTING  
    3.LAYING  
    4.WALKING  
    5.WALKING_DOWNSTAIRS  
    6.WALKING_UPSTAIRS  
  
2. **Subject**  
(integer)  
There are 30 participants acting as the subjects in this exercise. Each of them is represented by an unique numeric ID and the value of the ID is ranged from 1 to 30. 

## Measurement Variable
1. **TimeBodyAccelerationMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
2. **TimeBodyAccelerationMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
3. **TimeBodyAccelerationMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
4. **TimeBodyAccelerationSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
5. **TimeBodyAccelerationSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
6. **TimeBodyAccelerationSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
7. **TimeGravityAccelerationMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
8. **TimeGravityAccelerationMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
9. **TimeGravityAccelerationMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
10. **TimeGravityAccelerationSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
11. **TimeGravityAccelerationSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
12. **TimeGravityAccelerationSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
13. **TimeBodyAccelerationJerkMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
14. **TimeBodyAccelerationJerkMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
15. **TimeBodyAccelerationJerkMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
16. **TimeBodyAccelerationJerkSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
17. **TimeBodyAccelerationJerkSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
18. **TimeBodyAccelerationJerkSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
19. **TimeBodyGyrometerMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
20. **TimeBodyGyrometerMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
21. **TimeBodyGyrometerMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
22. **TimeBodyGyrometerSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
23. **TimeBodyGyrometerSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
24. **TimeBodyGyrometerSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
25. **TimeBodyGyrometerJerkMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
26. **TimeBodyGyrometerJerkMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
27. **TimeBodyGyrometerJerkMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
28. **TimeBodyGyrometerJerkSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
29. **TimeBodyGyrometerJerkSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
30. **TimeBodyGyrometerJerkSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
31. **TimeBodyAccelerationMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
32. **TimeBodyAccelerationMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
33. **TimeGravityAccelerationMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
34. **TimeGravityAccelerationMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
35. **TimeBodyAccelerationJerkMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
36. **TimeBodyAccelerationJerkMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
37. **TimeBodyGyrometerMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
38. **TimeBodyGyrometerMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
39. **TimeBodyGyrometerJerkMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
40. **TimeBodyGyrometerJerkMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
41. **FrequencyBodyAccelerationMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
42. **FrequencyBodyAccelerationMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
43. **FrequencyBodyAccelerationMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
44. **FrequencyBodyAccelerationSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
45. **FrequencyBodyAccelerationSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
46. **FrequencyBodyAccelerationSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
47. **FrequencyBodyAccelerationMeanFrequency-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
48. **FrequencyBodyAccelerationMeanFrequency-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
49. **FrequencyBodyAccelerationMeanFrequency-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
50. **FrequencyBodyAccelerationJerkMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
51. **FrequencyBodyAccelerationJerkMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
52. **FrequencyBodyAccelerationJerkMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
53. **FrequencyBodyAccelerationJerkSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
54. **FrequencyBodyAccelerationJerkSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
55. **FrequencyBodyAccelerationJerkSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
56. **FrequencyBodyAccelerationJerkMeanFrequency-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
57. **FrequencyBodyAccelerationJerkMeanFrequency-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
58. **FrequencyBodyAccelerationJerkMeanFrequency-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
59. **FrequencyBodyGyrometerMean-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
60. **FrequencyBodyGyrometerMean-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
61. **FrequencyBodyGyrometerMean-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
62. **FrequencyBodyGyrometerSTD-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
63. **FrequencyBodyGyrometerSTD-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
64. **FrequencyBodyGyrometerSTD-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
65. **FrequencyBodyGyrometerMeanFrequency-X**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
66. **FrequencyBodyGyrometerMeanFrequency-Y**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
67. **FrequencyBodyGyrometerMeanFrequency-Z**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
68. **FrequencyBodyAccelerationMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
69. **FrequencyBodyAccelerationMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
70. **FrequencyBodyAccelerationMagnitudeMeanFrequency**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
71. **FrequencyBodyAccelerationJerkMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
72. **FrequencyBodyAccelerationJerkMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
73. **FrequencyBodyAccelerationJerkMagnitudeMeanFrequency**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
74. **FrequencyBodyGyrometerMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
75. **FrequencyBodyGyrometerMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
76. **FrequencyBodyGyrometerMagnitudeMeanFrequency**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
77. **FrequencyBodyGyrometerJerkMagnitudeMean**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
78. **FrequencyBodyGyrometerJerkMagnitudeSTD**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
79. **FrequencyBodyGyrometerJerkMagnitudeMeanFrequency**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
80. **Angle(tBodyAccelerationMean,Gravity)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
81. **Angle(tBodyAccelerationJerkMean),GravityMean)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
82. **Angle(tBodyGyrometerMean,GravityMean)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
83. **Angle(tBodyGyrometerJerkMean,GravityMean)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
84. **Angle(X,GravityMean)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
85. **Angle(Y,GravityMean)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
86. **Angle(Z,GravityMean)**  
(numeric)  
Measurement being summarized by computing the average of each variable for each activity and each subject.   