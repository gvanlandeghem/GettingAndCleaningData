CodeBook
========

The tidy dataset as created by the run_analyis.R script takes as input the Human Activity Recognition Using Smartphones Data Set and calculates averages per selected features (mean and std) per activity and subject.

## Human Activity Recognition Using Smartphones Data Set description

### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file for further details about this dataset.


### Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Tidy dataset description

The tidy dataset is created by the run_analysis.R script as following:
- The data files in the train and test subdirectories are read
- The train and test datasets are merged creating a dataset containing subject.id, activity.id (and label) and selected measurements
- The average measure values are calculated per activity and subject (creating 6 activities * 30 subjects = 180 records)

### Tidy dataset variables:

1. activity.label: the activity being measured
2. subject.id: the subject id performing the activity
3. tBodyAccMeanX            
4. tBodyAccMeanY            
5. tBodyAccMeanZ            
6. tGravityAccMeanX        
7. tGravityAccMeanY         
8. tGravityAccMeanZ         
9. tBodyAccJerkMeanX        
10.tBodyAccJerkMeanY        
11.tBodyAccJerkMeanZ        
12.tBodyGyroMeanX          
13. tBodyGyroMeanY           
14.tBodyGyroMeanZ           
15.tBodyGyroJerkMeanX       
16.tBodyGyroJerkMeanY       
17.tBodyGyroJerkMeanZ       
18.tBodyAccMagMean         
19. tGravityAccMagMean       
20.tBodyAccJerkMagMean      
21.tBodyGyroMagMean         
22.tBodyGyroJerkMagMean     
23.fBodyAccMeanX            
24.fBodyAccMeanY           
25. fBodyAccMeanZ            
26.fBodyAccJerkMeanX        
27.fBodyAccJerkMeanY        
28.fBodyAccJerkMeanZ        
29.fBodyGyroMeanX           
30.fBodyGyroMeanY          
31.fBodyGyroMeanZ           
32.fBodyAccMagMean          
33.fBodyBodyAccJerkMagMean  
34.fBodyBodyGyroMagMean     
35.fBodyBodyGyroJerkMagMean 
36.tBodyAccStdX            
37.tBodyAccStdY
38.tBodyAccStdZ             
39.tGravityAccStdX          
40.tGravityAccStdY          
41.tGravityAccStdZ          
42.tBodyAccJerkStdX        
43. tBodyAccJerkStdY         
44.tBodyAccJerkStdZ         
45.tBodyGyroStdX            
46.tBodyGyroStdY            
47.tBodyGyroStdZ            
48.tBodyGyroJerkStdX       
49.tBodyGyroJerkStdY        
50.tBodyGyroJerkStdZ        
51.tBodyAccMagStd           
52.tGravityAccMagStd        
53.tBodyAccJerkMagStd       
54.tBodyGyroMagStd         
55. tBodyGyroJerkMagStd      
56.fBodyAccStdX             
57.fBodyAccStdY             
58.fBodyAccStdZ             
59.fBodyAccJerkStdX         
60.fBodyAccJerkStdY        
61.fBodyAccJerkStdZ         
62.fBodyGyroStdX            
63.fBodyGyroStdY            
64.fBodyGyroStdZ            
65.fBodyAccMagStd           
66.fBodyBodyAccJerkMagStd  
67.fBodyBodyGyroMagStd      
68.fBodyBodyGyroJerkMagStd 