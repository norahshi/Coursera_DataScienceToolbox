How the script works:

1. Merges the training and test sets to create one data set: 
1) train/X_train.txt with test/X_test.txt, the result of which is a 10299x561 data frame
2) train/subject_train.txt with test/subject_test.txt, the result of which is a 10299x1 data frame with subject IDs
3) train/y_train.txt with test/y_test.txt, the result of which is also a 10299x1 data frame with activity IDs

2. Reads features.txt and extracts only the measurements on the mean and standard deviation for each measurement

3. Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set

4. Labels the data set with descriptive names: all attributes and activity names are converted to lower case, underscores and brackets () are removed. Then it merges feature data set with the activity labels and subject IDs data set.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. The result is saved as Step5TidyDataSet.txt.


The result is saved as data_set_with_the_averages.txt, a 180x68 data frame
- The first column contains subject IDs
- The second column contains activity names:walking,walkingupstairs,walkingdownstairs,sitting,standing,laying
- Column3-Column68: the averages for each of the 66 attributes. 
