

#Load and read data into R
X_train<-read.table("train/X_train.txt")
y_train<-read.table("train/Y_train.txt")
subject_train<-read.table("train/subjecct_train.txt")
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

#merge data
x_data<-rbind(x_train,x_test)
y_data<-rbind(y_train,y_test)
subject_data<-rbind(subject_train,subject_test)

#load features.txt into R
features<-read.table("features.txt")
#select only data with mean or std
mean_and_std_features<-grep("-(mean|std")\\(\\)",features[-,2])

x_data<-x_data[,mean_and_std_features]

names(x_data)<-features[mean_and_std_features,2]

#load activity in R
activities<-read.table("activity_labels.txt")
#update values names
y_data[,1]<-activities[y_data[,1],2]

names(y_data)<-"activity"

#label the data set

names(subject_data)<-"subject"

#bind all data into a single file
all_data<-cbind(x_data,y_data,subject_data)
#get the average data
average_data<-ddply(all_data,.(subject,activity),function(x) colMeans(x([,1:66]))

write.table(average_data,"average_data.txt",row.name=FALSE)
