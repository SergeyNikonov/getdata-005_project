getdata-005_project
===================
run_analysis.R script works with UCI HAR Dataset in your work directory and:

1. Merges the training (subject_train.txt, X_train.txt, y_train.txt) and the test (subject_test.txt, X_test.txt, y_test.txt) sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement by search in features.txt with "-mean()-" and "-std()-" strings. 
3. Uses descriptive activity names (activity_labels.txt) to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. To simplify "$" subsetting, all variable names was lowercased, "-" subseted with "_" and "()" was cleaned.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject ("UCI HAR Dataset/tidy_means_std.csv").

Variables descriptions are in codebook.md file
