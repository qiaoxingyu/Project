The run_analysis script perform the 5 steps as mention in the coursera project
We first load all the data into R using Read.table()
Similiar data are combined together with rbind() and the columns with mean and standard deviation measures are taken
We extract and give the correct names from features.txt
Generate dataset with all average measures for subject and activity types. The output file is "average_data.txt"

Variables
x_train,
y_train,
x_test,
y_test,
subject_train,
subject_test.

Merged dataset
x_data,
y_data.
subject_data

Corrected names
features,
mean_and_std_features

all_data is the merged data from x_data,y_data and subject_data

average_data is the merged data with relevant average, it is then output into a .txt file 