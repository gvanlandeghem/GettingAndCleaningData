### Running the script

- Clone this repository
- Download the [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to the cloned directory.
- Unzip the downloaded dataset
- Change the current directory to the unzipped `UCI HAR Dataset` folder.
- Run `Rscript <path>/run_analysis.R`
- The run_analyis.R script will 
-- read the files in the test and train directories
-- merge both datasets
-- calculate the average measures per activity and subject
- The tidy dataset should get written in the current directory as `tidy.txt`
- The Code book for the tidy dataset is available [here](CodeBook.md)

### Console output example

```

Geerts-MacBook-Air-5:GettingAndCleaningData gvl$ wget http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
--2014-07-27 11:59:04--  http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Resolving d396qusza40orc.cloudfront.net (d396qusza40orc.cloudfront.net)... 54.192.14.27, 54.192.14.151, 54.192.15.8, ...
Connecting to d396qusza40orc.cloudfront.net (d396qusza40orc.cloudfront.net)|54.192.14.27|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 62556944 (60M) [application/zip]
Saving to: ‘getdata%2Fprojectfiles%2FUCI HAR Dataset.zip’

100%[=============================================================================================================================================================================================================>] 62,556,944  18.2MB/s   in 3.8s   

2014-07-27 11:59:08 (15.8 MB/s) - ‘getdata%2Fprojectfiles%2FUCI HAR Dataset.zip’ saved [62556944/62556944]

Geerts-MacBook-Air-5:GettingAndCleaningData gvl$ tar -xzf getdata%2Fprojectfiles%2FUCI\ HAR\ Dataset.zip 
Geerts-MacBook-Air-5:GettingAndCleaningData gvl$ ls -la
total 122216
drwxr-xr-x   8 gvl  staff       272 Jul 27 11:59 .
drwxr-xr-x  11 gvl  staff       374 Jul 27 11:48 ..
-rw-r--r--@  1 gvl  staff      6148 Jul 27 12:00 .DS_Store
drwxr-xr-x  13 gvl  staff       442 Jul 27 11:51 .git
-rw-r--r--   1 gvl  staff      1108 Jul 27 11:59 README.md
drwxr-xr-x   8 gvl  staff       272 Jul 27 11:59 UCI HAR Dataset
-rw-r--r--   1 gvl  staff  62556944 Jan 15  2014 getdata%2Fprojectfiles%2FUCI HAR Dataset.zip
-rw-r--r--   1 gvl  staff      3849 Jul 27 11:54 run_analysis.R
Geerts-MacBook-Air-5:GettingAndCleaningData gvl$ cd UCI\ HAR\ Dataset/
Geerts-MacBook-Air-5:UCI HAR Dataset gvl$ Rscript ../run_analysis.R 
[1] "Assuming you are executing run_analysis in the directory where you unzipped the UCI HAR Dataset:"
[1] "    zipped dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
[1] "    description of dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
[1] "Creating and writing the tidy dataset"
Joining by: id
Joining by: id
[1] "Done."
Geerts-MacBook-Air-5:UCI HAR Dataset gvl$ head tidy.txt
"activity.label" "subject.id" "tBodyAccMeanX" "tBodyAccMeanY" "tBodyAccMeanZ" "tGravityAccMeanX" "tGravityAccMeanY" "tGravityAccMeanZ" "tBodyAccJerkMeanX" "tBodyAccJerkMeanY" "tBodyAccJerkMeanZ" "tBodyGyroMeanX" "tBodyGyroMeanY" "tBodyGyroMeanZ" "tBodyGyroJerkMeanX" "tBodyGyroJerkMeanY" "tBodyGyroJerkMeanZ" "tBodyAccMagMean" "tGravityAccMagMean" "tBodyAccJerkMagMean" "tBodyGyroMagMean" "tBodyGyroJerkMagMean" "fBodyAccMeanX" "fBodyAccMeanY" "fBodyAccMeanZ" "fBodyAccJerkMeanX" "fBodyAccJerkMeanY" "fBodyAccJerkMeanZ" "fBodyGyroMeanX" "fBodyGyroMeanY" "fBodyGyroMeanZ" "fBodyAccMagMean" "fBodyBodyAccJerkMagMean" "fBodyBodyGyroMagMean" "fBodyBodyGyroJerkMagMean" "tBodyAccStdX" "tBodyAccStdY" "tBodyAccStdZ" "tGravityAccStdX" "tGravityAccStdY" "tGravityAccStdZ" "tBodyAccJerkStdX" "tBodyAccJerkStdY" "tBodyAccJerkStdZ" "tBodyGyroStdX" "tBodyGyroStdY" "tBodyGyroStdZ" "tBodyGyroJerkStdX" "tBodyGyroJerkStdY" "tBodyGyroJerkStdZ" "tBodyAccMagStd" "tGravityAccMagStd" "tBodyAccJerkMagStd" "tBodyGyroMagStd" "tBodyGyroJerkMagStd" "fBodyAccStdX" "fBodyAccStdY" "fBodyAccStdZ" "fBodyAccJerkStdX" "fBodyAccJerkStdY" "fBodyAccJerkStdZ" "fBodyGyroStdX" "fBodyGyroStdY" "fBodyGyroStdZ" "fBodyAccMagStd" "fBodyBodyAccJerkMagStd" "fBodyBodyGyroMagStd" "fBodyBodyGyroJerkMagStd"
"1" "LAYING" 1 0.22159824394 -0.0405139534294 -0.11320355358 -0.24888179828 0.70554977346 0.4458177198 0.0810865342 0.0038382040088 0.010834236361 -0.016553093978 -0.064486124088 0.14868943626 -0.107270949192 -0.04151728689 -0.0740501211 -0.8419291525 -0.8419291525 -0.9543962646 -0.874759548 -0.96346103 -0.9390990524 -0.86706520518 -0.8826668762 -0.9570738838 -0.9224626098 -0.9480609042 -0.850249174586 -0.9521914948 -0.909302721 -0.8617676481 -0.9333003608 -0.8621901854 -0.9423669466 -0.9280564692 -0.83682740562 -0.826061401628 -0.8968300184 -0.90772000676 -0.85236629022 -0.958482112 -0.9241492736 -0.9548551108 -0.87354386782 -0.9510904402 -0.9082846626 -0.9186085208 -0.9679072436 -0.9577901596 -0.79514486386 -0.79514486386 -0.9282456284 -0.81901016976 -0.9358409828 -0.9244374346 -0.8336255561 -0.81289155944 -0.9641607086 -0.9322178704 -0.9605869872 -0.8822964508 -0.9512320494 -0.9165825082 -0.7983009404 -0.9218039756 -0.82431943968 -0.9326606676
"2" "LAYING" 2 0.281373403958333 -0.0181587397583333 -0.107245610416667 -0.509754238125 0.752536639375 0.646834879583333 0.0825972511666667 0.012254788451875 -0.00180264895625 -0.01847660675 -0.111800824583333 0.144882846104167 -0.101974134208333 -0.0358590176083333 -0.0701783020833333 -0.977435485208333 -0.977435485208333 -0.987741696041667 -0.950011569583333 -0.991767074166667 -0.976725059791667 -0.979800877916667 -0.984380981875 -0.985813630833333 -0.982768250416667 -0.986197134583333 -0.9864311425 -0.983321635416667 -0.9626718875 -0.975110196458333 -0.985374114791667 -0.972112972708333 -0.990248702291667 -0.974059464791667 -0.98027739875 -0.984233296875 -0.959014441458333 -0.988211865208333 -0.984230418125 -0.98587216875 -0.98317254125 -0.988442014375 -0.988275232916667 -0.982291608958333 -0.960306560416667 -0.993235849166667 -0.989567537916667 -0.98803582125 -0.972873912916667 -0.972873912916667 -0.98551807625 -0.961164053958333 -0.989718095208333 -0.973246482083333 -0.981025105625 -0.984792185 -0.987250255833333 -0.984987392916667 -0.989345368541667 -0.988860685833333 -0.981910616458333 -0.963174222291667 -0.975121387916667 -0.984568489166667 -0.96109837875 -0.989492660416667
"3" "LAYING" 3 0.275516852741935 -0.0189556785048387 -0.101300477506452 -0.241758478064516 0.837032099677419 0.48870318516129 0.0769811125806452 0.0138041011306452 -0.00435625874355645 -0.0208170540330645 -0.0718507159435484 0.137999561112903 -0.10004449883871 -0.0389771765322581 -0.06873387 -0.972791346129032 -0.972791346129032 -0.979484593387097 -0.951564751451613 -0.98671362516129 -0.980665609032258 -0.961169982903226 -0.968332141612903 -0.980513202258064 -0.968752113709677 -0.979122344354839 -0.970167262903226 -0.978099682258065 -0.962341960806452 -0.96552427516129 -0.975949597903226 -0.96458672483871 -0.984278251290323 -0.982776639193548 -0.962057544516129 -0.96369103483871 -0.982512193064516 -0.981202749677419 -0.964807543870968 -0.98087931483871 -0.968710724677419 -0.982093162903226 -0.974545752096774 -0.977272653709677 -0.963505609032258 -0.980328645 -0.986762741935484 -0.983338279516129 -0.964218176451613 -0.964218176451613 -0.976121297903226 -0.954275110967742 -0.983139255645161 -0.983691129032258 -0.964094604193548 -0.96327908016129 -0.983122615967742 -0.971044012741936 -0.983711904677419 -0.975986433709677 -0.977032495483871 -0.967256854193548 -0.968350217419355 -0.975305377903226 -0.955441855806452 -0.982568158064516
```

