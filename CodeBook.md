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
Value range: [0.22159824394, 0.3014610196]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
2. **TimeBodyAccelerationMean-Y**  
(numeric)  
Value range: [-0.0405139534294, -0.00130828765170213]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
3. **TimeBodyAccelerationMean-Z**  
(numeric)  
Value range: [-0.152513899520833, -0.07537846886]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
4. **TimeBodyAccelerationSTD-X**  
(numeric)  
Value range: [-0.996068635384615, 0.626917070512821]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
5. **TimeBodyAccelerationSTD-Y**  
(numeric)  
Value range: [-0.990240946666667, 0.616937015333333]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
6. **TimeBodyAccelerationSTD-Z**  
(numeric)  
Value range: [-0.987658662307692, 0.609017879074074]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
7. **TimeGravityAccelerationMean-X**  
(numeric)  
Value range: [-0.680043155060241, 0.974508732]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
8. **TimeGravityAccelerationMean-Y**  
(numeric)  
Value range: [-0.479894842941176, 0.956593814210526]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
9. **TimeGravityAccelerationMean-Z**  
(numeric)  
Value range: [-0.49508872037037, 0.9578730416]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
10. **TimeGravityAccelerationSTD-X**  
(numeric)  
Value range: [-0.996764227384615, -0.829554947808219]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
11. **TimeGravityAccelerationSTD-Y**  
(numeric)  
Value range: [-0.99424764884058, -0.643578361424658]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
12. **TimeGravityAccelerationSTD-Z**  
(numeric)  
Value range: [-0.990957249538462, -0.610161166287671]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
13. **TimeBodyAccelerationJerkMean-X**  
(numeric)  
Value range: [0.0426880986186441, 0.130193043809524]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
14. **TimeBodyAccelerationJerkMean-Y**  
(numeric)  
Value range: [-0.0386872111282051, 0.056818586275]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
15. **TimeBodyAccelerationJerkMean-Z**  
(numeric)  
Value range: [-0.0674583919268293, 0.0380533591627451]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
16. **TimeBodyAccelerationJerkSTD-X**  
(numeric)  
Value range: [-0.994604542264151, 0.544273037307692]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
17. **TimeBodyAccelerationJerkSTD-Y**  
(numeric)  
Value range: [-0.989513565652174, 0.355306716915385]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
18. **TimeBodyAccelerationJerkSTD-Z**  
(numeric)  
Value range: [-0.993288313333333, 0.0310157077775926]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
19. **TimeBodyGyrometerMean-X**  
(numeric)  
Value range: [-0.205775427307692, 0.19270447595122]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
20. **TimeBodyGyrometerMean-Y**  
(numeric)  
Value range: [-0.204205356087805, 0.0274707556666667]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
21. **TimeBodyGyrometerMean-Z**  
(numeric)  
Value range: [-0.0724546025804878, 0.179102058245614]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
22. **TimeBodyGyrometerSTD-X**  
(numeric)  
Value range: [-0.994276591304348, 0.267657219333333]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
23. **TimeBodyGyrometerSTD-Y**  
(numeric)  
Value range: [-0.994210471914894, 0.476518714444444]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
24. **TimeBodyGyrometerSTD-Z**  
(numeric)  
Value range: [-0.985538363333333, 0.564875818162963]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
25. **TimeBodyGyrometerJerkMean-X**  
(numeric)  
Value range: [-0.157212539189362, -0.0220916265065217]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
26. **TimeBodyGyrometerJerkMean-Y**  
(numeric)  
Value range: [-0.0768089915604167, -0.0132022768074468]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
27. **TimeBodyGyrometerJerkMean-Z**  
(numeric)  
Value range: [-0.0924998531372549, -0.00694066389361702]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
28. **TimeBodyGyrometerJerkSTD-X**  
(numeric)  
Value range: [-0.99654254057971, 0.179148649684615]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
29. **TimeBodyGyrometerJerkSTD-Y**  
(numeric)  
Value range: [-0.997081575652174, 0.295945926186441]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
30. **TimeBodyGyrometerJerkSTD-Z**  
(numeric)  
Value range: [-0.995380794637681, 0.193206498960417]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
31. **TimeBodyAccelerationMagnitudeMean**  
(numeric)  
Value range: [-0.986493196666667, 0.644604325128205]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
32. **TimeBodyAccelerationMagnitudeSTD**  
(numeric)  
Value range: [-0.986464542615385, 0.428405922622222]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
33. **TimeGravityAccelerationMagnitudeMean**  
(numeric)  
Value range: [-0.986493196666667, 0.644604325128205]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
34. **TimeGravityAccelerationMagnitudeSTD**  
(numeric)  
Value range: [-0.986464542615385, 0.428405922622222]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
35. **TimeBodyAccelerationJerkMagnitudeMean**  
(numeric)  
Value range: [-0.99281471515625, 0.434490400974359]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
36. **TimeBodyAccelerationJerkMagnitudeSTD**  
(numeric)  
Value range: [-0.994646916811594, 0.450612065720513]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
37. **TimeBodyGyrometerMagnitudeMean**  
(numeric)  
Value range: [-0.980740846769231, 0.418004608615385]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
38. **TimeBodyGyrometerMagnitudeSTD**  
(numeric)  
Value range: [-0.981372675614035, 0.299975979851852]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
39. **TimeBodyGyrometerJerkMagnitudeMean**  
(numeric)  
Value range: [-0.997322526811594, 0.0875816618205128]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
40. **TimeBodyGyrometerJerkMagnitudeSTD**  
(numeric)  
Value range: [-0.997666071594203, 0.250173204117966]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
41. **FrequencyBodyAccelerationMean-X**  
(numeric)  
Value range: [-0.995249932641509, 0.537012022051282]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
42. **FrequencyBodyAccelerationMean-Y**  
(numeric)  
Value range: [-0.989034304057971, 0.524187686888889]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
43. **FrequencyBodyAccelerationMean-Z**  
(numeric)  
Value range: [-0.989473926666667, 0.280735952206667]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
44. **FrequencyBodyAccelerationSTD-X**  
(numeric)  
Value range: [-0.996604570307692, 0.658506543333333]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
45. **FrequencyBodyAccelerationSTD-Y**  
(numeric)  
Value range: [-0.990680395362319, 0.560191344]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
46. **FrequencyBodyAccelerationSTD-Z**  
(numeric)  
Value range: [-0.987224804307692, 0.687124163703704]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
47. **FrequencyBodyAccelerationMeanFrequency-X**  
(numeric)  
Value range: [-0.635913046346154, 0.159123629063636]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
48. **FrequencyBodyAccelerationMeanFrequency-Y**  
(numeric)  
Value range: [-0.379518455061538, 0.466528231788462]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
49. **FrequencyBodyAccelerationMeanFrequency-Z**  
(numeric)  
Value range: [-0.520114793584906, 0.402532553395833]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
50. **FrequencyBodyAccelerationJerkMean-X**  
(numeric)  
Value range: [-0.994630797358491, 0.474317256051282]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
51. **FrequencyBodyAccelerationJerkMean-Y**  
(numeric)  
Value range: [-0.989398823913043, 0.276716853307692]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
52. **FrequencyBodyAccelerationJerkMean-Z**  
(numeric)  
Value range: [-0.992018447826087, 0.157775692377778]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
53. **FrequencyBodyAccelerationJerkSTD-X**  
(numeric)  
Value range: [-0.995073759245283, 0.476803887476923]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
54. **FrequencyBodyAccelerationJerkSTD-Y**  
(numeric)  
Value range: [-0.990468082753623, 0.349771285415897]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
55. **FrequencyBodyAccelerationJerkSTD-Z**  
(numeric)  
Value range: [-0.993107759855072, -0.00623647528983051]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
56. **FrequencyBodyAccelerationJerkMeanFrequency-X**  
(numeric)  
Value range: [-0.576044001875, 0.331449281481482]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
57. **FrequencyBodyAccelerationJerkMeanFrequency-Y**  
(numeric)  
Value range: [-0.601971415384615, 0.195677336307692]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
58. **FrequencyBodyAccelerationJerkMeanFrequency-Z**  
(numeric)  
Value range: [-0.62755547372549, 0.230107945944444]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
59. **FrequencyBodyGyrometerMean-X**  
(numeric)  
Value range: [-0.99312260884058, 0.474962448333333]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
60. **FrequencyBodyGyrometerMean-Y**  
(numeric)  
Value range: [-0.994025488297872, 0.328817010088889]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
61. **FrequencyBodyGyrometerMean-Z**  
(numeric)  
Value range: [-0.985957788, 0.492414379822222]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
62. **FrequencyBodyGyrometerSTD-X**  
(numeric)  
Value range: [-0.994652185217391, 0.196613286661538]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
63. **FrequencyBodyGyrometerSTD-Y**  
(numeric)  
Value range: [-0.994353086595745, 0.646233637037037]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
64. **FrequencyBodyGyrometerSTD-Z**  
(numeric)  
Value range: [-0.986725274871795, 0.522454216314815]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
65. **FrequencyBodyGyrometerMeanFrequency-X**  
(numeric)  
Value range: [-0.395770150677419, 0.249209411510602]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
66. **FrequencyBodyGyrometerMeanFrequency-Y**  
(numeric)  
Value range: [-0.666814815306122, 0.273141323315789]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
67. **FrequencyBodyGyrometerMeanFrequency-Z**  
(numeric)  
Value range: [-0.507490866734694, 0.3770740968]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
68. **FrequencyBodyAccelerationMagnitudeMean**  
(numeric)  
Value range: [-0.986800645362319, 0.586637550769231]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
69. **FrequencyBodyAccelerationMagnitudeSTD**  
(numeric)  
Value range: [-0.987648484461539, 0.178684580868889]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
70. **FrequencyBodyAccelerationMagnitudeMeanFrequency**  
(numeric)  
Value range: [-0.312338030213846, 0.435846931652174]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
71. **FrequencyBodyAccelerationJerkMagnitudeMean**  
(numeric)  
Value range: [-0.993998275797101, 0.538404846128205]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
72. **FrequencyBodyAccelerationJerkMagnitudeSTD**  
(numeric)  
Value range: [-0.994366667681159, 0.316346415348718]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
73. **FrequencyBodyAccelerationJerkMagnitudeMeanFrequency**  
(numeric)  
Value range: [-0.125210388757581, 0.488088499666667]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
74. **FrequencyBodyGyrometerMagnitudeMean**  
(numeric)  
Value range: [-0.986535242105263, 0.203979764835897]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
75. **FrequencyBodyGyrometerMagnitudeSTD**  
(numeric)  
Value range: [-0.981468841692308, 0.236659662496296]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
76. **FrequencyBodyGyrometerMagnitudeMeanFrequency**  
(numeric)  
Value range: [-0.456638670923077, 0.409521611525424]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
77. **FrequencyBodyGyrometerJerkMagnitudeMean**  
(numeric)  
Value range: [-0.997617389275362, 0.146618569064407]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
78. **FrequencyBodyGyrometerJerkMagnitudeSTD**  
(numeric)  
Value range: [-0.99758523057971, 0.287834616098305]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
79. **FrequencyBodyGyrometerJerkMagnitudeMeanFrequency**  
(numeric)  
Value range: [-0.182923596577778, 0.426301679855072]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
80. **Angle(tBodyAccelerationMean,Gravity)**  
(numeric)  
Value range: [-0.163042575021277, 0.129153963587755]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
81. **Angle(tBodyAccelerationJerkMean),GravityMean)**  
(numeric)  
Value range: [-0.120553975717391, 0.203259965863014]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
82. **Angle(tBodyGyrometerMean,GravityMean)**  
(numeric)  
Value range: [-0.389305120341463, 0.444101172307692]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
83. **Angle(tBodyGyrometerJerkMean,GravityMean)**  
(numeric)  
Value range: [-0.223672056052174, 0.182384802705085]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
84. **Angle(X,GravityMean)**  
(numeric)  
Value range: [-0.947116527659574, 0.737784354819277]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
85. **Angle(Y,GravityMean)**  
(numeric)  
Value range: [-0.874567701929825, 0.42476122745098]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
86. **Angle(Z,GravityMean)**  
(numeric)  
Value range: [-0.873649367, 0.390444368518519]  
Measurement being summarized by computing the average of each variable for each activity and each subject.   
